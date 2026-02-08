--------------------------------------------------------------------------------
with WinUI3;                                        use WinUI3;
With WinUI3.Microsoft.UI.Xaml;                      use WinUI3.Microsoft.UI.Xaml;
with Generic_IInspectable;
--------------------------------------------------------------------------------
package AppOverrides is

    package ApplicationOverrides is new Generic_IInspectable (IApplicationOverrides_Interface, IID_IApplicationOverrides, Microsoft.UI.Xaml.IID_IApplication);

    type Kind_Interface is new ApplicationOverrides.Kind_Interface with null record;
    type Kind is access all Kind_Interface'Class;

    function OnLaunched (this : access Kind_Interface; args_p : ILaunchActivatedEventArgs) return WinUI3.HResult;

end AppOverrides;