--------------------------------------------------------------------------------
with Ada.Strings.Wide_Unbounded;
with WinUI3.Microsoft.UI.Xaml.Markup;
with WinUI3.Windows.ApplicationModel;
with WinUI3.Windows.Storage;
with WinUI3.Windows.System;
with Unchecked_Conversion;
--------------------------------------------------------------------------------
package body AppOverrides is

    use Ada.Strings.Wide_Unbounded;

    function "+"(value : Wide_String) return Unbounded_Wide_String renames To_Unbounded_Wide_String;
    function "+"(value : Unbounded_Wide_String) return Wide_String renames To_Wide_String;

    function Convert is new Unchecked_Conversion (IUnknown, IWindow);
    
    function OnLaunched (this : access Kind_Interface; args_p : ILaunchActivatedEventArgs) return WinUI3.HResult is

        function QI is new WinUI3.Generic_QueryInterface(IInspectable_Interface, IUIElement, IID_IUIElement'Access) with inline;

        Hr              : HResult := 0;
        m_OuterObject   : aliased IWindow := null; -- := new IWindow_Interface;
        m_InnerObject   : aliased IInspectable := null;
        m_Inner         : aliased IUnknown := null;
        -- m_Window        : aliased Window := Constructor (IInspectable(m_OuterObject), m_InnerObject'access);
        m_Window        : aliased Window := Constructor (null, m_InnerObject'access);
        m_IWindow		: aliased IWindow; 
        
        m_Package       : Windows.ApplicationModel.Package_x'Class := Windows.ApplicationModel.get_Current;
        m_StorageFolder : Windows.Storage.StorageFolder'Class := m_Package.get_InstalledLocation;
        m_StorageFile   : Windows.Storage.StorageFile'Class := m_StorageFolder.GetFileAsync(+"");
        m_FolderName    : WString := m_StorageFolder.Get_Name;
        m_FolderPath    : WString := m_StorageFolder.Get_Path;
        m_XamlContent   : Wide_String :=
                            "<TextBlock xmlns=""http://schemas.microsoft.com/winfx/2006/xaml/presentation"" " &
                            "   Name=""Text"" TextAlignment=""Center"" HorizontalAlignment=""Center"" " &
                            "   VerticalAlignment=""Center"" FontSize=""32""> " &
                            "   <Run Text=""Hello World application - written in Ada""/> " &
                            "   <LineBreak/> " &
                            "   <Run Text=""Target - Windows Desktop Application (Xaml)""/> " &
                            "   <LineBreak/> " &
                            "   <Run Text=""FolderName - " & "+"(m_FolderName) & """/> " &
                            "   <LineBreak/> " &
                            "   <Run Text=""FolderPath - " & "+"(m_FolderPath) & """/> " &
                            "</TextBlock>";
        m_IObject       : IInspectable := WinUI3.Microsoft.UI.Xaml.Markup.Load (+m_XamlContent);
        m_IUIElement    : aliased IUIElement := QI (m_IObject);  
        m_UIElement     : UIElement'Class := m_Window.Get_Content;
        
    begin
--        Hr := m_InnerObject.QueryInterface (Microsoft.UI.Xaml.IID_IWindow'access, m_Inner'access);
--        m_IWindow := Convert (m_Inner);
--        Hr := m_IWindow.Activate;
        m_UIElement.m_IUIElement.all := m_IUIElement;
        m_Window.Put_Content (m_UIElement);
        m_Window.Activate;
        
        return Hr;
    end;

end AppOverrides;