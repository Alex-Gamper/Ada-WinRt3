--------------------------------------------------------------------------------
with WinUI3;                             use WinUI3;
with Ada.Unchecked_conversion;
--------------------------------------------------------------------------------
package body Generic_IInspectable is

    function QueryInterface (This : access Kind_Interface; riid : in GUID_Ptr; pvObject : not null access IUnknown) return WinUI3.HResult is
        Hr : WinUI3.HResult := E_NOTIMPL;
        pragma suppress (Accessibility_Check); -- This can be called from Windows
    begin
        if riid.all = IID_InterfaceOverrides or riid.all = IID_IInspectable or riid.all = IID_IUnknown then
            pvObject.all := IUnknown (This);
            Hr := S_OK;
        else
            if riid.all = IID_Interface then
                pvObject.all := This.m_Interface;
                Hr := S_OK;
            else
                Hr := E_NOINTERFACE;
            end if;          
        end if;
        return Hr;
    end;
   
    function AddRef (This : access Kind_Interface) return UInt32 is
        RetVal : UInt32;
    begin
        This.m_RefCount := This.m_RefCount + 1;
        RetVal := This.m_RefCount;
        return RetVal;
    end;
   
    function Release (This : access Kind_Interface) return UInt32 is
        RetVal : UInt32;
    begin
        This.m_RefCount := This.m_RefCount - 1;
        RetVal := This.m_RefCount;
        return RetVal;
    end;
   
    function GetIids (This : access Kind_Interface; iidCount : access UInt32; iids : in IID_Ptr) return WinUI3.HResult is
        Hr : WinUI3.HResult := E_NOTIMPL;
    begin
        return Hr;
    end;
   
    function GetRuntimeClassName (This : access Kind_Interface; className : access HString) return WinUI3.HResult is
        Hr : WinUI3.HResult := S_OK;
        InterfaceName : HString := To_HString("Windows.ApplicationModel.Core.IFrameworkViewSource");
    begin
        className.all := InterfaceName;
        return Hr;
    end;
   
    function GetTrustLevel (This : access Kind_Interface; trustLevel_p : access TrustLevel) return WinUI3.HResult is
        Hr : WinUI3.HResult := S_OK;
    begin
        trustLevel_p.all := FullTrust;
        return Hr;
    end;

end Generic_IInspectable;