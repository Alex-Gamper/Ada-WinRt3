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
with WinRt.Windows.Devices.Spi.Provider;
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Devices.Spi is

   package IAsyncOperation_SpiController is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Devices.Spi.ISpiController);
   package AsyncOperationCompletedHandler_SpiController is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Devices.Spi.ISpiController);

   package IAsyncOperation_GenericObject is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.GenericObject);
   package AsyncOperationCompletedHandler_GenericObject is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.GenericObject);

   package IAsyncOperation_SpiDevice is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Devices.Spi.ISpiDevice);
   package AsyncOperationCompletedHandler_SpiDevice is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Devices.Spi.ISpiDevice);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpiBusInfo

   procedure Initialize (this : in out SpiBusInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out SpiBusInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ISpiBusInfo, ISpiBusInfo_Ptr);
   begin
      if this.m_ISpiBusInfo /= null then
         if this.m_ISpiBusInfo.all /= null then
            RefCount := this.m_ISpiBusInfo.all.Release;
            Free (this.m_ISpiBusInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpiBusInfo

   function get_ChipSelectLineCount
   (
      this : in out SpiBusInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_ISpiBusInfo.all.get_ChipSelectLineCount (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_MinClockFrequency
   (
      this : in out SpiBusInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_ISpiBusInfo.all.get_MinClockFrequency (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_MaxClockFrequency
   (
      this : in out SpiBusInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_ISpiBusInfo.all.get_MaxClockFrequency (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_SupportedDataBitLengths
   (
      this : in out SpiBusInfo
   )
   return IVectorView_Int32.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVectorView_Int32.Kind;
   begin
      Hr := this.m_ISpiBusInfo.all.get_SupportedDataBitLengths (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVectorView_Int32 (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpiConnectionSettings

   procedure Initialize (this : in out SpiConnectionSettings) is
   begin
      null;
   end;

   procedure Finalize (this : in out SpiConnectionSettings) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ISpiConnectionSettings, ISpiConnectionSettings_Ptr);
   begin
      if this.m_ISpiConnectionSettings /= null then
         if this.m_ISpiConnectionSettings.all /= null then
            RefCount := this.m_ISpiConnectionSettings.all.Release;
            Free (this.m_ISpiConnectionSettings);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SpiConnectionSettings

   function Constructor
   (
      chipSelectLine : WinRt.Int32
   )
   return SpiConnectionSettings is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Devices.Spi.SpiConnectionSettings");
      m_Factory    : access ISpiConnectionSettingsFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Devices.Spi.ISpiConnectionSettings;
   begin
      return RetVal : SpiConnectionSettings do
         Hr := RoGetActivationFactory (m_hString, IID_ISpiConnectionSettingsFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.Create (chipSelectLine, m_ComRetVal'Access);
            Retval.m_ISpiConnectionSettings := new Windows.Devices.Spi.ISpiConnectionSettings;
            Retval.m_ISpiConnectionSettings.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpiConnectionSettings

   function get_ChipSelectLine
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_ISpiConnectionSettings.all.get_ChipSelectLine (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_ChipSelectLine
   (
      this : in out SpiConnectionSettings;
      value : WinRt.Int32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISpiConnectionSettings.all.put_ChipSelectLine (value);
   end;

   function get_Mode
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Windows.Devices.Spi.SpiMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Spi.SpiMode;
   begin
      Hr := this.m_ISpiConnectionSettings.all.get_Mode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Mode
   (
      this : in out SpiConnectionSettings;
      value : Windows.Devices.Spi.SpiMode
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISpiConnectionSettings.all.put_Mode (value);
   end;

   function get_DataBitLength
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_ISpiConnectionSettings.all.get_DataBitLength (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_DataBitLength
   (
      this : in out SpiConnectionSettings;
      value : WinRt.Int32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISpiConnectionSettings.all.put_DataBitLength (value);
   end;

   function get_ClockFrequency
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_ISpiConnectionSettings.all.get_ClockFrequency (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_ClockFrequency
   (
      this : in out SpiConnectionSettings;
      value : WinRt.Int32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISpiConnectionSettings.all.put_ClockFrequency (value);
   end;

   function get_SharingMode
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Windows.Devices.Spi.SpiSharingMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Spi.SpiSharingMode;
   begin
      Hr := this.m_ISpiConnectionSettings.all.get_SharingMode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_SharingMode
   (
      this : in out SpiConnectionSettings;
      value : Windows.Devices.Spi.SpiSharingMode
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISpiConnectionSettings.all.put_SharingMode (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpiController

   procedure Initialize (this : in out SpiController) is
   begin
      null;
   end;

   procedure Finalize (this : in out SpiController) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ISpiController, ISpiController_Ptr);
   begin
      if this.m_ISpiController /= null then
         if this.m_ISpiController.all /= null then
            RefCount := this.m_ISpiController.all.Release;
            Free (this.m_ISpiController);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for SpiController

   function GetDefaultAsync
   return WinRt.Windows.Devices.Spi.SpiController is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Spi.SpiController");
      m_Factory        : access WinRt.Windows.Devices.Spi.ISpiControllerStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_SpiController.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_SpiController.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Devices.Spi.ISpiController;
      m_IID            : aliased WinRt.IID := (3065044847, 49303, 22596, (147, 189, 120, 33, 153, 143, 219, 142 )); -- Windows.Devices.Spi.SpiController;
      m_HandlerIID     : aliased WinRt.IID := (1586813257, 43076, 23333, (163, 204, 175, 171, 235, 24, 193, 210 ));
      m_Handler        : AsyncOperationCompletedHandler_SpiController.Kind := new AsyncOperationCompletedHandler_SpiController.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_SpiController.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_SpiController.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_SpiController.Kind_Delegate, AsyncOperationCompletedHandler_SpiController.Kind);

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
      return RetVal : WinRt.Windows.Devices.Spi.SpiController do
         Hr := RoGetActivationFactory (m_hString, IID_ISpiControllerStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetDefaultAsync (m_ComRetVal'Access);
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
                     Retval.m_ISpiController := new Windows.Devices.Spi.ISpiController;
                     Retval.m_ISpiController.all := m_RetVal;
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

   function GetControllersAsync
   (
      provider : Windows.Devices.Spi.Provider.ISpiProvider
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Spi.SpiController");
      m_Factory        : access WinRt.Windows.Devices.Spi.ISpiControllerStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_GenericObject.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_GenericObject.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.GenericObject;
      m_IID            : aliased WinRt.IID := (2304918321, 63490, 22263, (155, 51, 23, 198, 22, 236, 188, 250 )); -- GenericObject;
      m_HandlerIID     : aliased WinRt.IID := (3366963659, 26631, 22508, (132, 201, 159, 61, 188, 0, 52, 80 ));
      m_Handler        : AsyncOperationCompletedHandler_GenericObject.Kind := new AsyncOperationCompletedHandler_GenericObject.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_GenericObject.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_GenericObject.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_GenericObject.Kind_Delegate, AsyncOperationCompletedHandler_GenericObject.Kind);

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
      Hr := RoGetActivationFactory (m_hString, IID_ISpiControllerStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.GetControllersAsync (provider, m_ComRetVal'Access);
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
      return m_RetVal;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpiController

   function GetDevice
   (
      this : in out SpiController;
      settings : Windows.Devices.Spi.SpiConnectionSettings'Class
   )
   return WinRt.Windows.Devices.Spi.SpiDevice'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Spi.ISpiDevice;
   begin
      return RetVal : WinRt.Windows.Devices.Spi.SpiDevice do
         Hr := this.m_ISpiController.all.GetDevice (settings.m_ISpiConnectionSettings.all, m_ComRetVal'Access);
         Retval.m_ISpiDevice := new Windows.Devices.Spi.ISpiDevice;
         Retval.m_ISpiDevice.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpiDevice

   procedure Initialize (this : in out SpiDevice) is
   begin
      null;
   end;

   procedure Finalize (this : in out SpiDevice) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ISpiDevice, ISpiDevice_Ptr);
   begin
      if this.m_ISpiDevice /= null then
         if this.m_ISpiDevice.all /= null then
            RefCount := this.m_ISpiDevice.all.Release;
            Free (this.m_ISpiDevice);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for SpiDevice

   function GetDeviceSelector
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Spi.SpiDevice");
      m_Factory        : access WinRt.Windows.Devices.Spi.ISpiDeviceStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := RoGetActivationFactory (m_hString, IID_ISpiDeviceStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.GetDeviceSelector (m_ComRetVal'Access);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function GetDeviceSelector
   (
      friendlyName : WinRt.WString
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Spi.SpiDevice");
      m_Factory        : access WinRt.Windows.Devices.Spi.ISpiDeviceStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      HStr_friendlyName : WinRt.HString := To_HString (friendlyName);
   begin
      Hr := RoGetActivationFactory (m_hString, IID_ISpiDeviceStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.GetDeviceSelector (HStr_friendlyName, m_ComRetVal'Access);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      Hr := WindowsDeleteString (HStr_friendlyName);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function GetBusInfo
   (
      busId : WinRt.WString
   )
   return WinRt.Windows.Devices.Spi.SpiBusInfo is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Spi.SpiDevice");
      m_Factory        : access WinRt.Windows.Devices.Spi.ISpiDeviceStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Spi.ISpiBusInfo;
      HStr_busId : WinRt.HString := To_HString (busId);
   begin
      return RetVal : WinRt.Windows.Devices.Spi.SpiBusInfo do
         Hr := RoGetActivationFactory (m_hString, IID_ISpiDeviceStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetBusInfo (HStr_busId, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ISpiBusInfo := new Windows.Devices.Spi.ISpiBusInfo;
            Retval.m_ISpiBusInfo.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_busId);
      end return;
   end;

   function FromIdAsync
   (
      busId : WinRt.WString;
      settings : Windows.Devices.Spi.SpiConnectionSettings'Class
   )
   return WinRt.Windows.Devices.Spi.SpiDevice is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Spi.SpiDevice");
      m_Factory        : access WinRt.Windows.Devices.Spi.ISpiDeviceStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_busId : WinRt.HString := To_HString (busId);
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_SpiDevice.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_SpiDevice.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Devices.Spi.ISpiDevice;
      m_IID            : aliased WinRt.IID := (4273489514, 34703, 22395, (187, 202, 137, 87, 92, 252, 86, 228 )); -- Windows.Devices.Spi.SpiDevice;
      m_HandlerIID     : aliased WinRt.IID := (2827626682, 26982, 21991, (140, 129, 124, 101, 247, 78, 57, 192 ));
      m_Handler        : AsyncOperationCompletedHandler_SpiDevice.Kind := new AsyncOperationCompletedHandler_SpiDevice.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_SpiDevice.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_SpiDevice.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_SpiDevice.Kind_Delegate, AsyncOperationCompletedHandler_SpiDevice.Kind);

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
      return RetVal : WinRt.Windows.Devices.Spi.SpiDevice do
         Hr := RoGetActivationFactory (m_hString, IID_ISpiDeviceStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.FromIdAsync (HStr_busId, settings.m_ISpiConnectionSettings.all, m_ComRetVal'Access);
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
                     Retval.m_ISpiDevice := new Windows.Devices.Spi.ISpiDevice;
                     Retval.m_ISpiDevice.all := m_RetVal;
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
         Hr := WindowsDeleteString (HStr_busId);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpiDevice

   function get_DeviceId
   (
      this : in out SpiDevice
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ISpiDevice.all.get_DeviceId (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_ConnectionSettings
   (
      this : in out SpiDevice
   )
   return WinRt.Windows.Devices.Spi.SpiConnectionSettings'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Spi.ISpiConnectionSettings;
   begin
      return RetVal : WinRt.Windows.Devices.Spi.SpiConnectionSettings do
         Hr := this.m_ISpiDevice.all.get_ConnectionSettings (m_ComRetVal'Access);
         Retval.m_ISpiConnectionSettings := new Windows.Devices.Spi.ISpiConnectionSettings;
         Retval.m_ISpiConnectionSettings.all := m_ComRetVal;
      end return;
   end;

   procedure Write
   (
      this : in out SpiDevice;
      buffer : WinRt.Byte_Array
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      function Convert_buffer is new Ada.Unchecked_Conversion (Address, WinRt.Byte_Ptr);
   begin
      Hr := this.m_ISpiDevice.all.Write (WinRt.UInt32(buffer'Length), Convert_buffer (buffer (buffer'First)'Address));
   end;

   procedure Read
   (
      this : in out SpiDevice;
      buffer : WinRt.Byte_Array
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      function Convert_buffer is new Ada.Unchecked_Conversion (Address, WinRt.Byte_Ptr);
   begin
      Hr := this.m_ISpiDevice.all.Read (WinRt.UInt32(buffer'Length), Convert_buffer (buffer (buffer'First)'Address));
   end;

   procedure TransferSequential
   (
      this : in out SpiDevice;
      writeBuffer : WinRt.Byte_Array;
      readBuffer : WinRt.Byte_Array
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      function Convert_writeBuffer is new Ada.Unchecked_Conversion (Address, WinRt.Byte_Ptr);
      function Convert_readBuffer is new Ada.Unchecked_Conversion (Address, WinRt.Byte_Ptr);
   begin
      Hr := this.m_ISpiDevice.all.TransferSequential (WinRt.UInt32(writeBuffer'Length), Convert_writeBuffer (writeBuffer (writeBuffer'First)'Address), WinRt.UInt32(readBuffer'Length), Convert_readBuffer (readBuffer (readBuffer'First)'Address));
   end;

   procedure TransferFullDuplex
   (
      this : in out SpiDevice;
      writeBuffer : WinRt.Byte_Array;
      readBuffer : WinRt.Byte_Array
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      function Convert_writeBuffer is new Ada.Unchecked_Conversion (Address, WinRt.Byte_Ptr);
      function Convert_readBuffer is new Ada.Unchecked_Conversion (Address, WinRt.Byte_Ptr);
   begin
      Hr := this.m_ISpiDevice.all.TransferFullDuplex (WinRt.UInt32(writeBuffer'Length), Convert_writeBuffer (writeBuffer (writeBuffer'First)'Address), WinRt.UInt32(readBuffer'Length), Convert_readBuffer (readBuffer (readBuffer'First)'Address));
   end;

   procedure Close
   (
      this : in out SpiDevice
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Foundation.IClosable := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Devices.Spi.ISpiDevice_Interface, WinRt.Windows.Foundation.IClosable, WinRt.Windows.Foundation.IID_IClosable'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ISpiDevice.all);
      Hr := m_Interface.Close;
      m_RefCount := m_Interface.Release;
   end;

end;
