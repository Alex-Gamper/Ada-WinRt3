--------------------------------------------------------------------------------
with Ada.Wide_Text_IO;
with Ada.Strings.Wide_Unbounded;
with WinRt;                             
with WinRt.Windows.Foundation;
with WinRt.Windows.Networking;
with WinRt.Windows.Networking.Sockets;
with WinRt.Windows.Storage.Streams;
with WinRt.Windows.Web.Http;
--------------------------------------------------------------------------------
procedure WinRt3Test2 is

    use WinRt;
    use Ada.Strings.Wide_Unbounded;
    
    Hr : HResult := 0;
    
    function "+"(value : Wide_String) return Unbounded_Wide_String renames To_Unbounded_Wide_String;
    function "+"(value : Unbounded_Wide_String) return Wide_String renames To_Wide_String;

begin
    Hr := RoInitialize;
    if Hr = 0 then
    
        declare
            Uri             : Windows.Foundation.Uri := Windows.Foundation.Constructor(+"http://www.google.com");
            HttpClient      : Windows.Web.Http.HttpClient := Windows.Web.Http.Constructor;
            Result          : WString;
        begin
            Result := HttpClient.GetStringAsync (Uri);
            Ada.Wide_Text_IO.Put_Line (+Result);
            HttpClient.Close;
        end;
        
        declare
            Host            : Windows.Networking.HostName := Windows.Networking.Constructor(+"www.google.com");
            Port            : WString := +"80";
            Socket          : Windows.Networking.Sockets.StreamSocket := Windows.Networking.Sockets.Constructor;
            DataWriter      : Windows.Storage.Streams.DataWriter := Windows.Storage.Streams.Constructor (Socket.get_OutputStream);
        begin
            Socket.ConnectAsync (Host, Port);
            Socket.Close;
        end;
    
        RoUninitialize;
    end if;
end;