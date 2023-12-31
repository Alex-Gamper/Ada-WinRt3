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
with WinRt.Windows.Storage.Streams;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Devices.Custom is

   package IAsyncOperation_UInt32 is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.UInt32);
   package AsyncOperationCompletedHandler_UInt32 is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.UInt32);

   package IAsyncOperation_Boolean is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Boolean);
   package AsyncOperationCompletedHandler_Boolean is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Boolean);

   package IAsyncOperation_CustomDevice is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Devices.Custom.ICustomDevice);
   package AsyncOperationCompletedHandler_CustomDevice is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Devices.Custom.ICustomDevice);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CustomDevice

   procedure Initialize (this : in out CustomDevice) is
   begin
      null;
   end;

   procedure Finalize (this : in out CustomDevice) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICustomDevice, ICustomDevice_Ptr);
   begin
      if this.m_ICustomDevice /= null then
         if this.m_ICustomDevice.all /= null then
            RefCount := this.m_ICustomDevice.all.Release;
            Free (this.m_ICustomDevice);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for CustomDevice

   function GetDeviceSelector
   (
      classGuid : WinRt.Guid
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Custom.CustomDevice");
      m_Factory        : access WinRt.Windows.Devices.Custom.ICustomDeviceStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := RoGetActivationFactory (m_hString, IID_ICustomDeviceStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.GetDeviceSelector (classGuid, m_ComRetVal'Access);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function FromIdAsync
   (
      deviceId : WinRt.WString;
      desiredAccess : Windows.Devices.Custom.DeviceAccessMode;
      sharingMode : Windows.Devices.Custom.DeviceSharingMode
   )
   return WinRt.Windows.Devices.Custom.CustomDevice is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Custom.CustomDevice");
      m_Factory        : access WinRt.Windows.Devices.Custom.ICustomDeviceStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_deviceId : WinRt.HString := To_HString (deviceId);
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_CustomDevice.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_CustomDevice.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Devices.Custom.ICustomDevice;
      m_IID            : aliased WinRt.IID := (711148714, 1384, 21646, (161, 162, 182, 187, 69, 29, 34, 140 )); -- Windows.Devices.Custom.CustomDevice;
      m_HandlerIID     : aliased WinRt.IID := (534591920, 57573, 23641, (178, 125, 165, 73, 177, 7, 92, 233 ));
      m_Handler        : AsyncOperationCompletedHandler_CustomDevice.Kind := new AsyncOperationCompletedHandler_CustomDevice.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_CustomDevice.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_CustomDevice.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_CustomDevice.Kind_Delegate, AsyncOperationCompletedHandler_CustomDevice.Kind);

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
      return RetVal : WinRt.Windows.Devices.Custom.CustomDevice do
         Hr := RoGetActivationFactory (m_hString, IID_ICustomDeviceStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.FromIdAsync (HStr_deviceId, desiredAccess, sharingMode, m_ComRetVal'Access);
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
                     Retval.m_ICustomDevice := new Windows.Devices.Custom.ICustomDevice;
                     Retval.m_ICustomDevice.all := m_RetVal;
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
         Hr := WindowsDeleteString (HStr_deviceId);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CustomDevice

   function get_InputStream
   (
      this : in out CustomDevice
   )
   return WinRt.Windows.Storage.Streams.IInputStream is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Storage.Streams.IInputStream;
   begin
      Hr := this.m_ICustomDevice.all.get_InputStream (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_OutputStream
   (
      this : in out CustomDevice
   )
   return WinRt.Windows.Storage.Streams.IOutputStream is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Storage.Streams.IOutputStream;
   begin
      Hr := this.m_ICustomDevice.all.get_OutputStream (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function SendIOControlAsync
   (
      this : in out CustomDevice;
      ioControlCode_p : Windows.Devices.Custom.IIOControlCode;
      inputBuffer : Windows.Storage.Streams.IBuffer;
      outputBuffer : Windows.Storage.Streams.IBuffer
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_UInt32.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_UInt32.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.UInt32;
      m_IID            : aliased WinRt.IID := (4016060511, 48760, 22603, (170, 239, 120, 41, 173, 162, 176, 222 )); -- UInt32;
      m_HandlerIID     : aliased WinRt.IID := (2470688487, 58322, 24138, (171, 45, 43, 206, 73, 25, 166, 164 ));
      m_Handler        : AsyncOperationCompletedHandler_UInt32.Kind := new AsyncOperationCompletedHandler_UInt32.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_UInt32.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_UInt32.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_UInt32.Kind_Delegate, AsyncOperationCompletedHandler_UInt32.Kind);

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
      Hr := this.m_ICustomDevice.all.SendIOControlAsync (ioControlCode_p, inputBuffer, outputBuffer, m_ComRetVal'Access);
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
            end if;
            m_RefCount := m_AsyncOperation.Release;
            m_RefCount := m_Handler.Release;
            if m_RefCount = 0 then
               Free (m_Handler);
            end if;
         end if;
      end if;
      return m_RetVal;
   end;

   function TrySendIOControlAsync
   (
      this : in out CustomDevice;
      ioControlCode_p : Windows.Devices.Custom.IIOControlCode;
      inputBuffer : Windows.Storage.Streams.IBuffer;
      outputBuffer : Windows.Storage.Streams.IBuffer
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_Boolean.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_Boolean.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Boolean;
      m_IID            : aliased WinRt.IID := (3451252659, 22408, 20637, (155, 225, 113, 204, 184, 163, 54, 42 )); -- Boolean;
      m_HandlerIID     : aliased WinRt.IID := (3251884450, 44567, 23135, (181, 162, 189, 204, 136, 68, 136, 154 ));
      m_Handler        : AsyncOperationCompletedHandler_Boolean.Kind := new AsyncOperationCompletedHandler_Boolean.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_Boolean.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_Boolean.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_Boolean.Kind_Delegate, AsyncOperationCompletedHandler_Boolean.Kind);

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
      Hr := this.m_ICustomDevice.all.TrySendIOControlAsync (ioControlCode_p, inputBuffer, outputBuffer, m_ComRetVal'Access);
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
            end if;
            m_RefCount := m_AsyncOperation.Release;
            m_RefCount := m_Handler.Release;
            if m_RefCount = 0 then
               Free (m_Handler);
            end if;
         end if;
      end if;
      return m_RetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for IOControlCode

   procedure Initialize (this : in out IOControlCode) is
   begin
      null;
   end;

   procedure Finalize (this : in out IOControlCode) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IIOControlCode, IIOControlCode_Ptr);
   begin
      if this.m_IIOControlCode /= null then
         if this.m_IIOControlCode.all /= null then
            RefCount := this.m_IIOControlCode.all.Release;
            Free (this.m_IIOControlCode);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for IOControlCode

   function Constructor
   (
      deviceType : WinRt.UInt16;
      function_x : WinRt.UInt16;
      accessMode : Windows.Devices.Custom.IOControlAccessMode;
      bufferingMethod : Windows.Devices.Custom.IOControlBufferingMethod
   )
   return IOControlCode is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Devices.Custom.IOControlCode");
      m_Factory    : access IIOControlCodeFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Devices.Custom.IIOControlCode;
   begin
      return RetVal : IOControlCode do
         Hr := RoGetActivationFactory (m_hString, IID_IIOControlCodeFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateIOControlCode (deviceType, function_x, accessMode, bufferingMethod, m_ComRetVal'Access);
            Retval.m_IIOControlCode := new Windows.Devices.Custom.IIOControlCode;
            Retval.m_IIOControlCode.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for IOControlCode

   function get_AccessMode
   (
      this : in out IOControlCode
   )
   return WinRt.Windows.Devices.Custom.IOControlAccessMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Custom.IOControlAccessMode;
   begin
      Hr := this.m_IIOControlCode.all.get_AccessMode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_BufferingMethod
   (
      this : in out IOControlCode
   )
   return WinRt.Windows.Devices.Custom.IOControlBufferingMethod is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Custom.IOControlBufferingMethod;
   begin
      Hr := this.m_IIOControlCode.all.get_BufferingMethod (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Function
   (
      this : in out IOControlCode
   )
   return WinRt.UInt16 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt16;
   begin
      Hr := this.m_IIOControlCode.all.get_Function (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_DeviceType
   (
      this : in out IOControlCode
   )
   return WinRt.UInt16 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt16;
   begin
      Hr := this.m_IIOControlCode.all.get_DeviceType (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ControlCode
   (
      this : in out IOControlCode
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
   begin
      Hr := this.m_IIOControlCode.all.get_ControlCode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package body KnownDeviceTypes is

      function get_Unknown
      return WinRt.UInt16 is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Devices.Custom.KnownDeviceTypes");
         m_Factory        : access WinRt.Windows.Devices.Custom.IKnownDeviceTypesStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased WinRt.UInt16;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IKnownDeviceTypesStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_Unknown (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         return m_ComRetVal;
      end;

   end KnownDeviceTypes;

end;
