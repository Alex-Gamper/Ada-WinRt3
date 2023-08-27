--------------------------------------------------------------------------------
with Ada.Strings.Wide_Unbounded;
with WinRt.Windows.UI.Xaml.Markup;
with WinRt.Windows.UI.Composition;
with WinRt.Windows.Data.Json;
with WinRt.Windows.ApplicationModel;
with WinRt.Windows.Storage;
with WinRt.Windows.System;
--------------------------------------------------------------------------------
package body AppOverrides is

    use Ada.Strings.Wide_Unbounded;

    function "+"(value : Wide_String) return Unbounded_Wide_String renames To_Unbounded_Wide_String;
    function "+"(value : Unbounded_Wide_String) return Wide_String renames To_Wide_String;

    function OnActivated (this : access Kind_Interface; args_p : IActivatedEventArgs) return WinRt.HResult is
        Hr  : HResult := 0;
    begin
        return Hr;
    end;

    function OnLaunched (this : access Kind_Interface; args_p : ILaunchActivatedEventArgs) return WinRt.HResult is

        function QI is new WinRt.Generic_QueryInterface(IInspectable_Interface, IUIElement, IID_IUIElement'Access) with inline;

        Hr              : HResult := 0;
        m_Package       : Windows.ApplicationModel.Package_x'Class := Windows.ApplicationModel.get_Current;
        m_StorageFolder : Windows.Storage.StorageFolder'Class := m_Package.get_InstalledLocation;
        m_StorageFile   : Windows.Storage.StorageFile'Class := m_StorageFolder.GetFileAsync(+"");
        m_FolderName    : WString := m_StorageFolder.Get_Name;
        m_FolderPath    : WString := m_StorageFolder.Get_Path;

        m_Window        : Window := get_Current;
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
        m_IObject       : IInspectable := WinRt.Windows.UI.Xaml.Markup.Load (+m_XamlContent);
        m_IUIElement    : aliased IUIElement := QI (m_IObject);  
        m_UIElement     : UIElement'Class := m_Window.Get_Content;

    begin

        m_UIElement.m_IUIElement.all := m_IUIElement;
        m_Window.Put_Content (m_UIElement);
        m_Window.Activate;

        return Hr;
    end;

    function OnFileActivated (this : access Kind_Interface; args_p : IFileActivatedEventArgs) return WinRt.HResult is
        Hr  : HResult := 0;
    begin
        return Hr;
    end;

    function OnSearchActivated (this : access Kind_Interface; args_p : ISearchActivatedEventArgs) return WinRt.HResult is
        Hr  : HResult := 0;
    begin
        return Hr;
    end;

    function OnShareTargetActivated (this : access Kind_Interface; args_p : IShareTargetActivatedEventArgs) return WinRt.HResult is
        Hr  : HResult := 0;
    begin
        return Hr;
    end;

    function OnFileOpenPickerActivated (this : access Kind_Interface; args_p : IFileOpenPickerActivatedEventArgs) return WinRt.HResult is
        Hr  : HResult := 0;
    begin
        return Hr;
    end;

    function OnFileSavePickerActivated (this : access Kind_Interface; args_p : IFileSavePickerActivatedEventArgs) return WinRt.HResult is
        Hr  : HResult := 0;
    begin
        return Hr;
    end;

    function OnCachedFileUpdaterActivated (this : access Kind_Interface; args_p : ICachedFileUpdaterActivatedEventArgs) return WinRt.HResult is
        Hr  : HResult := 0;
    begin
        return Hr;
    end;

    function OnWindowCreated (this : access Kind_Interface; args_p : IWindowCreatedEventArgs) return WinRt.HResult is
        Hr  : HResult := 0;
    begin
        return Hr;
    end;

end AppOverrides;