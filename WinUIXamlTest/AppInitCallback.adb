--------------------------------------------------------------------------------
with WinUI3;                                    use WinUI3;
with WinUI3.Microsoft.UI.Xaml;                  use WinUI3.Microsoft.UI.Xaml; 
with AppOverrides;                              use AppOverrides;
--------------------------------------------------------------------------------
package body AppInitCallback is

    ----------------------------------------------------------------------------
    procedure Callback (p : IApplicationInitializationCallbackParams) is
        Hr              : HResult := 0;    
        m_Outer         : aliased AppOverrides.Kind := new AppOverrides.Kind_Interface;
        m_InnerObject   : aliased IInspectable := null;
        m_Inner         : aliased IUnknown := null;
        m_Application   : aliased Application := Constructor (IInspectable(m_Outer), m_InnerObject'access);
    begin
        Hr := m_InnerObject.QueryInterface (Microsoft.UI.Xaml.IID_IApplication'access, m_Inner'access);
        m_Outer.m_Interface := m_Inner;
    end;

end AppInitCallback;