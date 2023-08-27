--------------------------------------------------------------------------------
with Ada.Text_IO;
with Ada.Strings.Wide_Unbounded;
With Ada.Characters.Conversions;
with Interfaces.C;

with WinRt;                             use WinRt;
with WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Diagnostics;
with WinRt.Windows.Globalization;
with WinRt.Windows.System;
with WinRt.Windows.System.Threading;
with WinRt.Windows.System.Diagnostics;
with WinRt.Windows.Data.Json;
with WinRt.Windows.Networking;
with WinRt.Windows.Networking.Sockets;
with WinRt.Windows.System.UserProfile;
with WinRt.Windows.Devices.Display;
with WinRt.Windows.Devices.Enumeration;
with WinRt.Windows.Security.Cryptography.Certificates;
with WinRt.Windows.Web.Http;
with WinRt.Windows.Storage.Streams;

with Ada.Exceptions;
--------------------------------------------------------------------------------
procedure WinRt3Test is

    use Ada.Strings.Wide_Unbounded;

    Hr : HResult := 0;
    
    ----------------------------------------------------------------------------

    function "+"(value : Wide_String) return Unbounded_Wide_String renames To_Unbounded_Wide_String;
    function "+"(value : Unbounded_Wide_String) return Wide_String renames To_Wide_String;

    ----------------------------------------------------------------------------
    procedure OutputDebugString (OutputString : Wide_String) is
      
        procedure OutputDebugStringW (OutputString : Interfaces.C.wchar_array);
        pragma import (stdcall,  OutputDebugStringW, "OutputDebugStringW");

        CRLF : constant Wide_String := Ada.Characters.Conversions.To_Wide_String (ASCII.CR & ASCII.LF);

    begin
        OutputDebugStringW (Interfaces.C.To_C (OutputString & CRLF));
    end;
    
    ----------------------------------------------------------------------------
    procedure Test1 is
        
        procedure Callback (timer : Windows.System.Threading.IThreadPoolTimer) is
            AUD         : WString := Windows.Globalization.CurrencyIdentifiers.get_AUD;
            AUD_Salary  : Windows.Globalization.CurrencyAmount := Windows.Globalization.Constructor (+"1000000000" , +"AUD");
            Info        : Windows.System.Diagnostics.SystemDiagnosticInfo := Windows.System.Diagnostics.GetForCurrentSystem;
            Mem         : Windows.System.Diagnostics.SystemMemoryUsage'Class := Info.Get_MemoryUsage;
            MemReport   : Windows.System.Diagnostics.SystemMemoryUsageReport'Class := Mem.GetReport;
            MemUsage    : UInt64 := MemReport.get_AvailableSizeInBytes;
            CPU         : Windows.System.Diagnostics.SystemCpuUsage'Class := Info.Get_CpuUsage;
            CPUReport   : Windows.System.Diagnostics.SystemCpuUsageReport'Class := CPU.GetReport;
            CPUUsage    : Windows.Foundation.Timespan := CPUReport.get_UserTime;
        begin
            declare
                USD         : WString := Windows.Globalization.CurrencyIdentifiers.get_USD;
                USD_Salary  : Windows.Globalization.CurrencyAmount := Windows.Globalization.Constructor (+"1000000000" , +"USD");
            begin
                OutputDebugString (+USD);
            end;
            exception when e : others =>
                Ada.Text_IO.Put_Line(Ada.Exceptions.Exception_Information (e));
        end;

        Period      : Windows.Foundation.TimeSpan := (Duration => 10_000_000);  -- 1 unit = 100 nano seconds; 1 sec == 10_000_000
        Handler     : aliased Windows.System.Threading.TimerElapsedHandler_Delegate (CallBack'access);
        Timer       : Windows.System.Threading.ThreadPoolTimer := Windows.System.Threading.CreatePeriodicTimer (Handler'Unchecked_access, Period);
        Buffer      : String (1..1);
        AUD         : WString := Windows.Globalization.CurrencyIdentifiers.get_AUD;
        AUD_Salary  : Windows.Globalization.CurrencyAmount := Windows.Globalization.Constructor (+"1000000000" , +"AUD");

    begin
        Ada.Text_IO.Get (Buffer);
        Timer.Cancel;
    end;

    ----------------------------------------------------------------------------
    procedure Test2 is
        JsArray     : Windows.Data.Json.JsonArray := Windows.Data.Json.Constructor;
        JsValue     : Windows.Data.Json.JsonValue := Windows.Data.Json.CreateNumberValue(1.0);
        JsArraySize : UInt32;
    begin

        JsArray.Append (JsValue.m_IJsonValue.all);
        JsArray.Append (JsValue.m_IJsonValue.all);
        JsArray.Append (JsValue.m_IJsonValue.all);
        JsArray.Append (JsValue.m_IJsonValue.all);

        JsArraySize := JsArray.get_Size;
        JsArray.RemoveAtEnd;
        JsArray.Clear;
        JsArraySize := JsArray.get_Size;
        if JsArraySize = 0 then
            null;
        end if;
    end;
    
    ----------------------------------------------------------------------------
    procedure Test3 is
        Host            : Windows.Networking.HostName := Windows.Networking.Constructor(+"www.telstra.com");
        Port            : WString := +"80";
        Socket          : Windows.Networking.Sockets.StreamSocket := Windows.Networking.Sockets.Constructor;
        DataWriter      : Windows.Storage.Streams.DataWriter := Windows.Storage.Streams.Constructor (Socket.get_OutputStream);
    begin
        Socket.ConnectAsync (Host, Port);
        Socket.Close;
    end;
    
    ----------------------------------------------------------------------------
    procedure Test4 is
        DeviceSelector      : WString := Windows.Devices.Display.GetDeviceSelector;
        DeviceCollection    : Windows.Devices.Enumeration.DeviceInformationCollection := Windows.Devices.Enumeration.FindAllAsync(DeviceSelector);
        CollectionSize      : WinRt.UInt32 := DeviceCollection.get_Size;
    begin
        for i in 1..CollectionSize loop
            declare
                Device      : Windows.Devices.Enumeration.DeviceInformation'Class := DeviceCollection.GetAt(i - 1);
                Monitor     : Windows.Devices.Display.DisplayMonitor := Windows.Devices.Display.FromInterfaceIdAsync (Device.get_Id);
                DisplayName : WString := Monitor.get_DisplayName;
            begin
                OutputDebugString (+DisplayName);
            end;
        end loop;
    end;
    
    ----------------------------------------------------------------------------
    procedure Test5 is
        Uri             : Windows.Foundation.Uri := Windows.Foundation.Constructor (+"http://www.google.com");
        HttpClient      : Windows.Web.Http.HttpClient := Windows.Web.Http.Constructor;
        Result          : WString;
    begin
        Result := HttpClient.GetStringAsync (Uri);
        OutputDebugString (+Result);
        HttpClient.Close;
    end;
    
    ----------------------------------------------------------------------------
    function timeBeginPeriod (uPeriod : WinRt.UInt32 := 1) return WinRt.HResult; pragma Import (StdCall, timeBeginPeriod, "timeBeginPeriod");
    function timeEndPeriod (uPeriod : WinRt.UInt32 := 1) return WinRt.HResult; pragma Import (StdCall, timeEndPeriod, "timeEndPeriod");

    ----------------------------------------------------------------------------

begin

    Hr := timeBeginPeriod (1);
    Hr := RoInitialize;
    if Hr = 0 then
--        Test1;
        Test2;
        Test3;
        Test4;
        Test5;
        RoUninitialize;
    end if;
    Hr := timeEndPeriod (0);

end;