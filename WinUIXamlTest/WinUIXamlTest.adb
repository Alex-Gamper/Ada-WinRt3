--------------------------------------------------------------------------------
with WinMainStartup;                            use WinMainStartup;
with WinUI3;                                    use WinUI3;
with WinUI3.Microsoft.UI.Xaml;                  use WinUI3.Microsoft.UI.Xaml; 
with AppOverrides;                              use AppOverrides;
with WinUI3.Windows.Foundation;                 use WinUI3.Windows.Foundation;
with System;

--------------------------------------------------------------------------------
procedure WinUIXamlTest is
    
    
    Hr              : WinUI3.HResult := 0;
    
    ----------------------------------------------------------------------------
    procedure Callback (p : IApplicationInitializationCallbackParams) is
        Hr              : WinUI3.HResult := 0;    
        m_Outer         : aliased AppOverrides.Kind := new AppOverrides.Kind_Interface;
        m_InnerObject   : aliased IInspectable := null;
        m_Inner         : aliased IUnknown := null;
        m_Application   : aliased Application := Constructor (IInspectable(m_Outer), m_InnerObject'access);
    begin
        Hr := m_InnerObject.QueryInterface (Microsoft.UI.Xaml.IID_IApplication'access, m_Inner'access);
        m_Outer.m_Interface := m_Inner;
    end;
    
    Application     : ApplicationInitializationCallback := new ApplicationInitializationCallback_Delegate (Callback'access);
    Temp            : WinUI3.UInt32;
        
begin

    Hr := RoInitialize; 
    if Hr = 0 then
        Start (Application);
        RoUninitialize;
    end if;

exception when others =>
    raise;
    
end;