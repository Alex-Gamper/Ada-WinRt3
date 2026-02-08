--------------------------------------------------------------------------------
with WinMainStartup;                            use WinMainStartup;
with WinRt;                                     use WinRt;
with WinRt.Windows.UI.Xaml;                     use WinRt.Windows.UI.Xaml; 
with AppOverrides;                              use AppOverrides;
with System;
--------------------------------------------------------------------------------
procedure WinRt3XamlTest is

    Hr              : HResult := 0;

    ----------------------------------------------------------------------------
    procedure Callback (p : IApplicationInitializationCallbackParams) is
        m_Outer         : aliased AppOverrides.Kind := new AppOverrides.Kind_Interface;
        m_InnerObject   : aliased IInspectable := null;
        m_Inner         : aliased IUnknown := null;
        m_Application   : aliased Application := Constructor (IInspectable(m_Outer), m_InnerObject'access);
    begin
        Hr := m_InnerObject.QueryInterface (Windows.UI.Xaml.IID_IApplication'access, m_Inner'access);
        m_Outer.m_Interface := m_Inner;
    end;
    
    Application     : ApplicationInitializationCallback := new ApplicationInitializationCallback_Delegate (Callback'access);
        
begin

    Hr := RoInitialize; 
    if Hr = 0 then
        Start (Application);
        RoUninitialize;
    end if;

exception when others =>
    raise;
    
end;