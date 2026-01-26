--------------------------------------------------------------------------------
with WinMainStartup;                            use WinMainStartup;
with WinUI3;                                    use WinUI3;
with WinUI3.Microsoft.UI.Xaml;                  use WinUI3.Microsoft.UI.Xaml; 
with AppOverrides;                              use AppOverrides;
with System;
with AppInitCallback;

with Ada.Strings.Wide_Unbounded;
With Ada.Characters.Conversions;
with Interfaces.C;
with WinUI3.Windows.Foundation;
with WinUI3.Windows.Web.Http;
--------------------------------------------------------------------------------
procedure WinUIXamlTest is
    
   function Constructor
   (
      uri_p : WinUI3.WString
   )
   return WinUI3.Windows.Foundation.Uri is
      Hr           : WinUI3.HResult := S_OK;
      tmp          : WinUI3.HResult := S_OK;
      m_hString    : constant WinUI3.HString := To_HString ("Windows.Foundation.IUriRuntimeClass");
      m_Factory    : access WinUI3.Windows.Foundation.IUriRuntimeClassFactory_Interface'Class := null;
      temp         : WinUI3.UInt32 := 0;
      m_ComRetVal  : aliased WinUI3.Windows.Foundation.IUriRuntimeClass;
      HStr_uri_p : constant WinUI3.HString := To_HString (uri_p);
   begin
      return RetVal : WinUI3.Windows.Foundation.Uri do
         Hr := RoGetActivationFactory (m_hString, WinUI3.Windows.Foundation.IID_IUriRuntimeClassFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateUri (HStr_uri_p, m_ComRetVal'Access);
            Retval.m_IUriRuntimeClass := new WinUI3.Windows.Foundation.IUriRuntimeClass;
            Retval.m_IUriRuntimeClass.all := m_ComRetVal;
            temp := m_Factory.Release;
         end if;
         tmp := WindowsDeleteString (m_hString);
         tmp := WindowsDeleteString (HStr_uri_p);
      end return;
   end;
   
   ----------------------------------------------------------------------------
    procedure OutputDebugString (OutputString : Wide_String) is
      
        procedure OutputDebugStringW (OutputString : Interfaces.C.wchar_array);
        pragma import (stdcall,  OutputDebugStringW, "OutputDebugStringW");

        CRLF : constant Wide_String := Ada.Characters.Conversions.To_Wide_String (ASCII.CR & ASCII.LF);

    begin
        OutputDebugStringW (Interfaces.C.To_C (OutputString & CRLF));
    end;
    
    ----------------------------------------------------------------------------
    use Ada.Strings.Wide_Unbounded;

    function "+"(value : Wide_String) return Unbounded_Wide_String renames To_Unbounded_Wide_String;
    function "+"(value : Unbounded_Wide_String) return Wide_String renames To_Wide_String;

    ----------------------------------------------------------------------------
    procedure Test5 is
        Uri             : Windows.Foundation.Uri := Constructor (+"http://www.google.com");
        HttpClient      : Windows.Web.Http.HttpClient := Windows.Web.Http.Constructor;
        Result          : WString;
    begin
        Result := HttpClient.GetStringAsync (Uri);
        OutputDebugString (+Result);
        HttpClient.Close;
    end;
    
    Hr              : HResult := 0;    
    Application     : ApplicationInitializationCallback := new ApplicationInitializationCallback_Delegate (AppInitCallback.Callback'access); --  Handler'Access;
    Temp            : WinUI3.UInt32;
        
begin

    Hr := RoInitialize(1); 
    if Hr = 0 then
        Test5;
        declare
            Outer       : IInspectable := null;
            Inner       : aliased IInspectable;
            App         : WinUI3.Microsoft.UI.Xaml.Application := Constructor(Outer, Inner'Access);
            App_cUrrent : WinUI3.Microsoft.UI.XAML.Application := get_Current;
        begin
            null;
        end;
        
        Start (Application);
        RoUninitialize;
    end if;

exception when others =>
    raise;
    
end;