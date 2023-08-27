--------------------------------------------------------------------------------
with WinRt;                                     use WinRt;
With WinRt.Windows.UI.Xaml;                     use WinRt.Windows.UI.Xaml;
with WinRt.Windows.ApplicationModel.Activation; use WinRt.Windows.ApplicationModel.Activation;
with Generic_IInspectable;
--------------------------------------------------------------------------------
package AppOverrides is

    package ApplicationOverrides is new Generic_IInspectable (IApplicationOverrides_Interface, IID_IApplicationOverrides, Windows.UI.Xaml.IID_IApplication);

    type Kind_Interface is new ApplicationOverrides.Kind_Interface with null record;
    type Kind is access all Kind_Interface'Class;

    function OnActivated (this : access Kind_Interface; args_p : IActivatedEventArgs) return WinRt.HResult;
    function OnLaunched (this : access Kind_Interface; args_p : ILaunchActivatedEventArgs) return WinRt.HResult;
    function OnFileActivated (this : access Kind_Interface; args_p : IFileActivatedEventArgs) return WinRt.HResult;
    function OnSearchActivated (this : access Kind_Interface; args_p : ISearchActivatedEventArgs ) return WinRt.HResult;
    function OnShareTargetActivated (this : access Kind_Interface; args_p : IShareTargetActivatedEventArgs) return WinRt.HResult;
    function OnFileOpenPickerActivated (this : access Kind_Interface; args_p : IFileOpenPickerActivatedEventArgs) return WinRt.HResult;
    function OnFileSavePickerActivated (this : access Kind_Interface; args_p : IFileSavePickerActivatedEventArgs) return WinRt.HResult;
    function OnCachedFileUpdaterActivated (this : access Kind_Interface; args_p : ICachedFileUpdaterActivatedEventArgs) return WinRt.HResult;
    function OnWindowCreated (this : access Kind_Interface; args_p : IWindowCreatedEventArgs) return WinRt.HResult;

end AppOverrides;