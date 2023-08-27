--------------------------------------------------------------------------------
with WinRt;                             use WinRt;
--------------------------------------------------------------------------------
generic

    type T is interface;
    IID_InterfaceOverrides : GUID;
    IID_Interface : GUID;

package Generic_IInspectable is

    type Kind_Interface is abstract new T with record
        m_RefCount  : aliased UInt32 := 1;
        m_Interface : aliased IUnknown := null; 
    end record;

    function QueryInterface (This : access Kind_Interface; riid : in GUID_Ptr; pvObject : not null access IUnknown) return WinRt.HResult;   
    function AddRef (This : access Kind_Interface) return UInt32;
    function Release (This : access Kind_Interface) return UInt32;
    function GetIids (This : access Kind_Interface; iidCount : access UInt32; iids : in IID_Ptr) return WinRt.HResult;    
    function GetRuntimeClassName (This : access Kind_Interface; className : access HString) return WinRt.HResult;
    function GetTrustLevel (This : access Kind_Interface; trustLevel_p : access TrustLevel) return WinRt.HResult;

end Generic_IInspectable;