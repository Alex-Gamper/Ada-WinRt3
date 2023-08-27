--------------------------------------------------------------------------------
-- <auto-generated>                                                           --
--     This code was generated by a tool.                                     --
--                                                                            --
--     Changes to this file may cause incorrect behavior and will be lost if  --
--     the code is regenerated.                                               --
-- </auto-generated>                                                          --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--                                                                            --
--    Copyright(c) 2023 Alexander Gamper, All Rights Reserved.                --
--                                                                            --
--    Ada-WinRT                                                               --
--    Version   : 3.0.0.0                                                     --
--                                                                            --
-- This program is free software: you can redistribute it and / or modify     --
-- it under the terms of the GNU Lesser General Public License as published by--
-- the Free Software Foundation, either version 3 of the License, or          --
-- (at your option) any later version.                                        --
--                                                                            --
-- This program is distributed in the hope that it will be useful,            --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of             --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the               --
-- GNU Lesser General Public License for more details.                        --
--                                                                            --
-- You should have received a copy of the GNU Lesser General Public License   --
-- along with this program.If not, see http://www.gnu.org/licenses            --
--                                                                            --
--------------------------------------------------------------------------------
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Devices.Enumeration.Pnp is

   package IAsyncOperation_PnpObject is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Devices.Enumeration.Pnp.IPnpObject);
   package AsyncOperationCompletedHandler_PnpObject is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Devices.Enumeration.Pnp.IPnpObject);

   package IAsyncOperation_PnpObjectCollection is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.GenericObject);
   package AsyncOperationCompletedHandler_PnpObjectCollection is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.GenericObject);

   package IVectorView_IPnpObject is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.Devices.Enumeration.Pnp.IPnpObject);
   package IIterable_IPnpObject is new WinRt.Windows.Foundation.Collections.IIterable (WinRt.Windows.Devices.Enumeration.Pnp.IPnpObject);
   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PnpObject

   procedure Initialize (this : in out PnpObject) is
   begin
      null;
   end;

   procedure Finalize (this : in out PnpObject) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPnpObject, IPnpObject_Ptr);
   begin
      if this.m_IPnpObject /= null then
         if this.m_IPnpObject.all /= null then
            RefCount := this.m_IPnpObject.all.Release;
            Free (this.m_IPnpObject);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for PnpObject

   function CreateFromIdAsync
   (
      type_x : Windows.Devices.Enumeration.Pnp.PnpObjectType;
      id : WinRt.WString;
      requestedProperties : GenericObject
   )
   return WinRt.Windows.Devices.Enumeration.Pnp.PnpObject is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Enumeration.Pnp.PnpObject");
      m_Factory        : access WinRt.Windows.Devices.Enumeration.Pnp.IPnpObjectStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_id : WinRt.HString := To_HString (id);
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_PnpObject.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_PnpObject.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Devices.Enumeration.Pnp.IPnpObject;
      m_IID            : aliased WinRt.IID := (582024083, 12518, 20506, (189, 59, 159, 163, 6, 62, 156, 22 )); -- Windows.Devices.Enumeration.Pnp.PnpObject;
      m_HandlerIID     : aliased WinRt.IID := (2640401507, 26745, 21023, (142, 151, 230, 109, 61, 219, 201, 94 ));
      m_Handler        : AsyncOperationCompletedHandler_PnpObject.Kind := new AsyncOperationCompletedHandler_PnpObject.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_PnpObject.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_PnpObject.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_PnpObject.Kind_Delegate, AsyncOperationCompletedHandler_PnpObject.Kind);

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus) is
         Hr        : WinRt.HResult := 0;
      begin
         if asyncStatus = Completed_e then
            m_AsyncStatus := AsyncStatus;
         end if;
         m_Completed := 1;
         WakeByAddressSingle (m_Completed'Address);
      end;

   begin
      return RetVal : WinRt.Windows.Devices.Enumeration.Pnp.PnpObject do
         Hr := RoGetActivationFactory (m_hString, IID_IPnpObjectStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateFromIdAsync (type_x, HStr_id, requestedProperties, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            if Hr = S_OK then
               m_AsyncOperation := QI (m_ComRetVal);
               m_RefCount := m_ComRetVal.Release;
               if m_AsyncOperation /= null then
                  Hr := m_AsyncOperation.Put_Completed (Convert (m_Handler));
                  while m_Captured = m_Compare loop
                     m_Temp := WaitOnAddress (m_Completed'Address, m_Compare'Address, 4, 4294967295);
                     m_Captured := m_Completed;
                  end loop;
                  if m_AsyncStatus = Completed_e then
                     Hr := m_AsyncOperation.GetResults (m_RetVal'Access);
                     Retval.m_IPnpObject := new Windows.Devices.Enumeration.Pnp.IPnpObject;
                     Retval.m_IPnpObject.all := m_RetVal;
                  end if;
                  m_RefCount := m_AsyncOperation.Release;
                  m_RefCount := m_Handler.Release;
                  if m_RefCount = 0 then
                     Free (m_Handler);
                  end if;
               end if;
            end if;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_id);
      end return;
   end;

   function FindAllAsync
   (
      type_x : Windows.Devices.Enumeration.Pnp.PnpObjectType;
      requestedProperties : GenericObject
   )
   return WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectCollection is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Enumeration.Pnp.PnpObject");
      m_Factory        : access WinRt.Windows.Devices.Enumeration.Pnp.IPnpObjectStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_PnpObjectCollection.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_PnpObjectCollection.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.GenericObject;
      m_IID            : aliased WinRt.IID := (4085498572, 62246, 23486, (149, 209, 203, 194, 71, 20, 239, 134 )); -- Windows.Devices.Enumeration.Pnp.PnpObjectCollection;
      m_HandlerIID     : aliased WinRt.IID := (2166195020, 41310, 21794, (183, 244, 229, 48, 4, 252, 88, 255 ));
      m_Handler        : AsyncOperationCompletedHandler_PnpObjectCollection.Kind := new AsyncOperationCompletedHandler_PnpObjectCollection.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_PnpObjectCollection.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_PnpObjectCollection.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_PnpObjectCollection.Kind_Delegate, AsyncOperationCompletedHandler_PnpObjectCollection.Kind);

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus) is
         Hr        : WinRt.HResult := 0;
      begin
         if asyncStatus = Completed_e then
            m_AsyncStatus := AsyncStatus;
         end if;
         m_Completed := 1;
         WakeByAddressSingle (m_Completed'Address);
      end;

   begin
      return RetVal : WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectCollection do
         Hr := RoGetActivationFactory (m_hString, IID_IPnpObjectStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.FindAllAsync (type_x, requestedProperties, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            if Hr = S_OK then
               m_AsyncOperation := QI (m_ComRetVal);
               m_RefCount := m_ComRetVal.Release;
               if m_AsyncOperation /= null then
                  Hr := m_AsyncOperation.Put_Completed (Convert (m_Handler));
                  while m_Captured = m_Compare loop
                     m_Temp := WaitOnAddress (m_Completed'Address, m_Compare'Address, 4, 4294967295);
                     m_Captured := m_Completed;
                  end loop;
                  if m_AsyncStatus = Completed_e then
                     Hr := m_AsyncOperation.GetResults (m_RetVal'Access);
                     Retval.m_GenericObject := new GenericObject;
                     Retval.m_GenericObject.all := m_RetVal;
                  end if;
                  m_RefCount := m_AsyncOperation.Release;
                  m_RefCount := m_Handler.Release;
                  if m_RefCount = 0 then
                     Free (m_Handler);
                  end if;
               end if;
            end if;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function FindAllAsync
   (
      type_x : Windows.Devices.Enumeration.Pnp.PnpObjectType;
      requestedProperties : GenericObject;
      aqsFilter : WinRt.WString
   )
   return WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectCollection is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Enumeration.Pnp.PnpObject");
      m_Factory        : access WinRt.Windows.Devices.Enumeration.Pnp.IPnpObjectStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_aqsFilter : WinRt.HString := To_HString (aqsFilter);
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_PnpObjectCollection.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_PnpObjectCollection.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.GenericObject;
      m_IID            : aliased WinRt.IID := (4085498572, 62246, 23486, (149, 209, 203, 194, 71, 20, 239, 134 )); -- Windows.Devices.Enumeration.Pnp.PnpObjectCollection;
      m_HandlerIID     : aliased WinRt.IID := (2166195020, 41310, 21794, (183, 244, 229, 48, 4, 252, 88, 255 ));
      m_Handler        : AsyncOperationCompletedHandler_PnpObjectCollection.Kind := new AsyncOperationCompletedHandler_PnpObjectCollection.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_PnpObjectCollection.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_PnpObjectCollection.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_PnpObjectCollection.Kind_Delegate, AsyncOperationCompletedHandler_PnpObjectCollection.Kind);

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus) is
         Hr        : WinRt.HResult := 0;
      begin
         if asyncStatus = Completed_e then
            m_AsyncStatus := AsyncStatus;
         end if;
         m_Completed := 1;
         WakeByAddressSingle (m_Completed'Address);
      end;

   begin
      return RetVal : WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectCollection do
         Hr := RoGetActivationFactory (m_hString, IID_IPnpObjectStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.FindAllAsync (type_x, requestedProperties, HStr_aqsFilter, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            if Hr = S_OK then
               m_AsyncOperation := QI (m_ComRetVal);
               m_RefCount := m_ComRetVal.Release;
               if m_AsyncOperation /= null then
                  Hr := m_AsyncOperation.Put_Completed (Convert (m_Handler));
                  while m_Captured = m_Compare loop
                     m_Temp := WaitOnAddress (m_Completed'Address, m_Compare'Address, 4, 4294967295);
                     m_Captured := m_Completed;
                  end loop;
                  if m_AsyncStatus = Completed_e then
                     Hr := m_AsyncOperation.GetResults (m_RetVal'Access);
                     Retval.m_GenericObject := new GenericObject;
                     Retval.m_GenericObject.all := m_RetVal;
                  end if;
                  m_RefCount := m_AsyncOperation.Release;
                  m_RefCount := m_Handler.Release;
                  if m_RefCount = 0 then
                     Free (m_Handler);
                  end if;
               end if;
            end if;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_aqsFilter);
      end return;
   end;

   function CreateWatcher
   (
      type_x : Windows.Devices.Enumeration.Pnp.PnpObjectType;
      requestedProperties : GenericObject
   )
   return WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectWatcher is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Enumeration.Pnp.PnpObject");
      m_Factory        : access WinRt.Windows.Devices.Enumeration.Pnp.IPnpObjectStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher;
   begin
      return RetVal : WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectWatcher do
         Hr := RoGetActivationFactory (m_hString, IID_IPnpObjectStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateWatcher (type_x, requestedProperties, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IPnpObjectWatcher := new Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher;
            Retval.m_IPnpObjectWatcher.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function CreateWatcher
   (
      type_x : Windows.Devices.Enumeration.Pnp.PnpObjectType;
      requestedProperties : GenericObject;
      aqsFilter : WinRt.WString
   )
   return WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectWatcher is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Enumeration.Pnp.PnpObject");
      m_Factory        : access WinRt.Windows.Devices.Enumeration.Pnp.IPnpObjectStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher;
      HStr_aqsFilter : WinRt.HString := To_HString (aqsFilter);
   begin
      return RetVal : WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectWatcher do
         Hr := RoGetActivationFactory (m_hString, IID_IPnpObjectStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateWatcher (type_x, requestedProperties, HStr_aqsFilter, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IPnpObjectWatcher := new Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher;
            Retval.m_IPnpObjectWatcher.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_aqsFilter);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PnpObject

   function get_Type
   (
      this : in out PnpObject
   )
   return WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectType is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Enumeration.Pnp.PnpObjectType;
   begin
      Hr := this.m_IPnpObject.all.get_Type (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Id
   (
      this : in out PnpObject
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IPnpObject.all.get_Id (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_Properties
   (
      this : in out PnpObject
   )
   return IMapView_HString_IInspectable.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IMapView_HString_IInspectable.Kind;
   begin
      Hr := this.m_IPnpObject.all.get_Properties (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IMapView_HString_IInspectable (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   procedure Update
   (
      this : in out PnpObject;
      updateInfo : Windows.Devices.Enumeration.Pnp.PnpObjectUpdate'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPnpObject.all.Update (updateInfo.m_IPnpObjectUpdate.all);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PnpObjectCollection

   procedure Initialize (this : in out PnpObjectCollection) is
   begin
      null;
   end;

   procedure Finalize (this : in out PnpObjectCollection) is
   begin
      null;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PnpObjectCollection

   -- Generic Interface Windows.Foundation.Collections.IVectorView`1<Windows.Devices.Enumeration.Pnp.PnpObject>
   function GetAt
   (
      this : in out PnpObjectCollection;
      index : WinRt.UInt32
   )
   return WinRt.Windows.Devices.Enumeration.Pnp.PnpObject'Class is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IVectorView_IPnpObject.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Enumeration.Pnp.IPnpObject;
      m_GenericIID     : aliased WinRt.IID := (3437602712, 53865, 24526, (153, 206, 239, 10, 227, 205, 5, 105 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IVectorView_IPnpObject.Kind, m_GenericIID'Unchecked_Access);
   begin
      return RetVal : WinRt.Windows.Devices.Enumeration.Pnp.PnpObject do
         m_Interface := QInterface (this.m_GenericObject.all);
         Hr := m_Interface.GetAt (index, m_ComRetVal'Access);
         m_RefCount := m_Interface.Release;
         Retval.m_IPnpObject := new Windows.Devices.Enumeration.Pnp.IPnpObject;
         Retval.m_IPnpObject.all := m_ComRetVal;
      end return;
   end;

   function get_Size
   (
      this : in out PnpObjectCollection
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IVectorView_IPnpObject.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
      m_GenericIID     : aliased WinRt.IID := (3437602712, 53865, 24526, (153, 206, 239, 10, 227, 205, 5, 105 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IVectorView_IPnpObject.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.get_Size (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function IndexOf
   (
      this : in out PnpObjectCollection;
      value : Windows.Devices.Enumeration.Pnp.PnpObject'Class;
      index : WinRt.UInt32_Ptr
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IVectorView_IPnpObject.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      m_GenericIID     : aliased WinRt.IID := (3437602712, 53865, 24526, (153, 206, 239, 10, 227, 205, 5, 105 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IVectorView_IPnpObject.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.IndexOf (value.m_IPnpObject.all, index, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function GetMany
   (
      this : in out PnpObjectCollection;
      startIndex : WinRt.UInt32;
      items : Windows.Devices.Enumeration.Pnp.IPnpObject_Array
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IVectorView_IPnpObject.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
      m_GenericIID     : aliased WinRt.IID := (3437602712, 53865, 24526, (153, 206, 239, 10, 227, 205, 5, 105 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IVectorView_IPnpObject.Kind, m_GenericIID'Unchecked_Access);
      function Convert_items is new Ada.Unchecked_Conversion (Address, WinRt.GenericObject_Ptr);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.GetMany (startIndex, WinRt.UInt32(items'Length), Convert_items (items (items'First)'Address), m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   -- Generic Interface Windows.Foundation.Collections.IIterable`1<Windows.Devices.Enumeration.Pnp.PnpObject>
   function First
   (
      this : in out PnpObjectCollection
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IIterable_IPnpObject.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericIID     : aliased WinRt.IID := (817168530, 14062, 21503, (148, 80, 2, 144, 4, 67, 108, 96 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IIterable_IPnpObject.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.First (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PnpObjectUpdate

   procedure Initialize (this : in out PnpObjectUpdate) is
   begin
      null;
   end;

   procedure Finalize (this : in out PnpObjectUpdate) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPnpObjectUpdate, IPnpObjectUpdate_Ptr);
   begin
      if this.m_IPnpObjectUpdate /= null then
         if this.m_IPnpObjectUpdate.all /= null then
            RefCount := this.m_IPnpObjectUpdate.all.Release;
            Free (this.m_IPnpObjectUpdate);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PnpObjectUpdate

   function get_Type
   (
      this : in out PnpObjectUpdate
   )
   return WinRt.Windows.Devices.Enumeration.Pnp.PnpObjectType is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Enumeration.Pnp.PnpObjectType;
   begin
      Hr := this.m_IPnpObjectUpdate.all.get_Type (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Id
   (
      this : in out PnpObjectUpdate
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IPnpObjectUpdate.all.get_Id (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_Properties
   (
      this : in out PnpObjectUpdate
   )
   return IMapView_HString_IInspectable.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IMapView_HString_IInspectable.Kind;
   begin
      Hr := this.m_IPnpObjectUpdate.all.get_Properties (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IMapView_HString_IInspectable (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PnpObjectWatcher

   procedure Initialize (this : in out PnpObjectWatcher) is
   begin
      null;
   end;

   procedure Finalize (this : in out PnpObjectWatcher) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPnpObjectWatcher, IPnpObjectWatcher_Ptr);
   begin
      if this.m_IPnpObjectWatcher /= null then
         if this.m_IPnpObjectWatcher.all /= null then
            RefCount := this.m_IPnpObjectWatcher.all.Release;
            Free (this.m_IPnpObjectWatcher);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PnpObjectWatcher

   function add_Added
   (
      this : in out PnpObjectWatcher;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IPnpObjectWatcher.all.add_Added (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_Added
   (
      this : in out PnpObjectWatcher;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPnpObjectWatcher.all.remove_Added (token);
   end;

   function add_Updated
   (
      this : in out PnpObjectWatcher;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IPnpObjectWatcher.all.add_Updated (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_Updated
   (
      this : in out PnpObjectWatcher;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPnpObjectWatcher.all.remove_Updated (token);
   end;

   function add_Removed
   (
      this : in out PnpObjectWatcher;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IPnpObjectWatcher.all.add_Removed (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_Removed
   (
      this : in out PnpObjectWatcher;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPnpObjectWatcher.all.remove_Removed (token);
   end;

   function add_EnumerationCompleted
   (
      this : in out PnpObjectWatcher;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IPnpObjectWatcher.all.add_EnumerationCompleted (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_EnumerationCompleted
   (
      this : in out PnpObjectWatcher;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPnpObjectWatcher.all.remove_EnumerationCompleted (token);
   end;

   function add_Stopped
   (
      this : in out PnpObjectWatcher;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IPnpObjectWatcher.all.add_Stopped (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_Stopped
   (
      this : in out PnpObjectWatcher;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPnpObjectWatcher.all.remove_Stopped (token);
   end;

   function get_Status
   (
      this : in out PnpObjectWatcher
   )
   return WinRt.Windows.Devices.Enumeration.DeviceWatcherStatus is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Enumeration.DeviceWatcherStatus;
   begin
      Hr := this.m_IPnpObjectWatcher.all.get_Status (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure Start
   (
      this : in out PnpObjectWatcher
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPnpObjectWatcher.all.Start;
   end;

   procedure Stop
   (
      this : in out PnpObjectWatcher
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPnpObjectWatcher.all.Stop;
   end;

end;