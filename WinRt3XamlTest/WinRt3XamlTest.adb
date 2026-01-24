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
    
    Handler     : aliased ApplicationInitializationCallback_Delegate (Callback'access);
    Application : ApplicationInitializationCallback := Handler'Unchecked_access;
    Temp        : WinRt.UInt32;
    
    function CoInitializeEx(pvReserved : System.Address; dwCoInit : Int32) return WinRt.HResult;
    pragma Import (StdCall, CoInitializeEx, "CoInitializeEx");
    
begin

    Hr := CoInitializeEx(System.Null_Address, 0);
    if Hr = 0 then
        Temp := Application.AddRef;
        Start (Handler'Unchecked_access);
        RoUninitialize;
    end if;

exception when others =>
    raise;
    
end;