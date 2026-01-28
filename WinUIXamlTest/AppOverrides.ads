--------------------------------------------------------------------------------
with WinUI3;                                        use WinUI3;
With WinUI3.Windows.UI.Xaml;                        use WinUI3.Windows.UI.Xaml;
with WinUI3.Windows.ApplicationModel.Activation; use WinUI3.Windows.ApplicationModel.Activation;
with Generic_IInspectable;
--------------------------------------------------------------------------------
package AppOverrides is

    package ApplicationOverrides is new Generic_IInspectable (IApplicationOverrides_Interface, IID_IApplicationOverrides, Windows.UI.Xaml.IID_IApplication);

    type Kind_Interface is new ApplicationOverrides.Kind_Interface with null record;
    type Kind is access all Kind_Interface'Class;

    function OnActivated (this : access Kind_Interface; args_p : IActivatedEventArgs) return WinUI3.HResult;
    function OnLaunched (this : access Kind_Interface; args_p : ILaunchActivatedEventArgs) return WinUI3.HResult;
    function OnFileActivated (this : access Kind_Interface; args_p : IFileActivatedEventArgs) return WinUI3.HResult;
    function OnSearchActivated (this : access Kind_Interface; args_p : ISearchActivatedEventArgs ) return WinUI3.HResult;
    function OnShareTargetActivated (this : access Kind_Interface; args_p : IShareTargetActivatedEventArgs) return WinUI3.HResult;
    function OnFileOpenPickerActivated (this : access Kind_Interface; args_p : IFileOpenPickerActivatedEventArgs) return WinUI3.HResult;
    function OnFileSavePickerActivated (this : access Kind_Interface; args_p : IFileSavePickerActivatedEventArgs) return WinUI3.HResult;
    function OnCachedFileUpdaterActivated (this : access Kind_Interface; args_p : ICachedFileUpdaterActivatedEventArgs) return WinUI3.HResult;
    function OnWindowCreated (this : access Kind_Interface; args_p : IWindowCreatedEventArgs) return WinUI3.HResult;

end AppOverrides;