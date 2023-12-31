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
with WinRt.Windows.Devices.Adc.Provider;
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Devices.Adc is

   package IAsyncOperation_AdcController is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Devices.Adc.IAdcController);
   package AsyncOperationCompletedHandler_AdcController is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Devices.Adc.IAdcController);

   package IAsyncOperation_GenericObject is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.GenericObject);
   package AsyncOperationCompletedHandler_GenericObject is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.GenericObject);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AdcChannel

   procedure Initialize (this : in out AdcChannel) is
   begin
      null;
   end;

   procedure Finalize (this : in out AdcChannel) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IAdcChannel, IAdcChannel_Ptr);
   begin
      if this.m_IAdcChannel /= null then
         if this.m_IAdcChannel.all /= null then
            RefCount := this.m_IAdcChannel.all.Release;
            Free (this.m_IAdcChannel);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AdcChannel

   function get_Controller
   (
      this : in out AdcChannel
   )
   return WinRt.Windows.Devices.Adc.AdcController'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Adc.IAdcController;
   begin
      return RetVal : WinRt.Windows.Devices.Adc.AdcController do
         Hr := this.m_IAdcChannel.all.get_Controller (m_ComRetVal'Access);
         Retval.m_IAdcController := new Windows.Devices.Adc.IAdcController;
         Retval.m_IAdcController.all := m_ComRetVal;
      end return;
   end;

   function ReadValue
   (
      this : in out AdcChannel
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IAdcChannel.all.ReadValue (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function ReadRatio
   (
      this : in out AdcChannel
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IAdcChannel.all.ReadRatio (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure Close
   (
      this : in out AdcChannel
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Foundation.IClosable := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Devices.Adc.IAdcChannel_Interface, WinRt.Windows.Foundation.IClosable, WinRt.Windows.Foundation.IID_IClosable'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IAdcChannel.all);
      Hr := m_Interface.Close;
      m_RefCount := m_Interface.Release;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AdcController

   procedure Initialize (this : in out AdcController) is
   begin
      null;
   end;

   procedure Finalize (this : in out AdcController) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IAdcController, IAdcController_Ptr);
   begin
      if this.m_IAdcController /= null then
         if this.m_IAdcController.all /= null then
            RefCount := this.m_IAdcController.all.Release;
            Free (this.m_IAdcController);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for AdcController

   function GetDefaultAsync
   return WinRt.Windows.Devices.Adc.AdcController is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Adc.AdcController");
      m_Factory        : access WinRt.Windows.Devices.Adc.IAdcControllerStatics2_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_AdcController.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_AdcController.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Devices.Adc.IAdcController;
      m_IID            : aliased WinRt.IID := (1765933666, 13769, 22591, (164, 14, 194, 105, 69, 98, 201, 226 )); -- Windows.Devices.Adc.AdcController;
      m_HandlerIID     : aliased WinRt.IID := (3136709768, 8239, 23889, (176, 94, 24, 96, 108, 70, 184, 8 ));
      m_Handler        : AsyncOperationCompletedHandler_AdcController.Kind := new AsyncOperationCompletedHandler_AdcController.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_AdcController.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_AdcController.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_AdcController.Kind_Delegate, AsyncOperationCompletedHandler_AdcController.Kind);

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
      return RetVal : WinRt.Windows.Devices.Adc.AdcController do
         Hr := RoGetActivationFactory (m_hString, IID_IAdcControllerStatics2'Access , m_Factory'Address);
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
                     Retval.m_IAdcController := new Windows.Devices.Adc.IAdcController;
                     Retval.m_IAdcController.all := m_RetVal;
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
      provider : Windows.Devices.Adc.Provider.IAdcProvider
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Adc.AdcController");
      m_Factory        : access WinRt.Windows.Devices.Adc.IAdcControllerStatics_Interface'Class := null;
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
      m_IID            : aliased WinRt.IID := (453828091, 53845, 23187, (188, 185, 222, 32, 71, 163, 228, 243 )); -- GenericObject;
      m_HandlerIID     : aliased WinRt.IID := (2084583624, 55584, 21447, (165, 214, 169, 118, 7, 13, 118, 55 ));
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
      Hr := RoGetActivationFactory (m_hString, IID_IAdcControllerStatics'Access , m_Factory'Address);
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
   -- Implemented Interfaces for AdcController

   function get_ChannelCount
   (
      this : in out AdcController
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IAdcController.all.get_ChannelCount (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ResolutionInBits
   (
      this : in out AdcController
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IAdcController.all.get_ResolutionInBits (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_MinValue
   (
      this : in out AdcController
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IAdcController.all.get_MinValue (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_MaxValue
   (
      this : in out AdcController
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IAdcController.all.get_MaxValue (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ChannelMode
   (
      this : in out AdcController
   )
   return WinRt.Windows.Devices.Adc.AdcChannelMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Adc.AdcChannelMode;
   begin
      Hr := this.m_IAdcController.all.get_ChannelMode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_ChannelMode
   (
      this : in out AdcController;
      value : Windows.Devices.Adc.AdcChannelMode
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IAdcController.all.put_ChannelMode (value);
   end;

   function IsChannelModeSupported
   (
      this : in out AdcController;
      channelMode : Windows.Devices.Adc.AdcChannelMode
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IAdcController.all.IsChannelModeSupported (channelMode, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function OpenChannel
   (
      this : in out AdcController;
      channelNumber : WinRt.Int32
   )
   return WinRt.Windows.Devices.Adc.AdcChannel'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Adc.IAdcChannel;
   begin
      return RetVal : WinRt.Windows.Devices.Adc.AdcChannel do
         Hr := this.m_IAdcController.all.OpenChannel (channelNumber, m_ComRetVal'Access);
         Retval.m_IAdcChannel := new Windows.Devices.Adc.IAdcChannel;
         Retval.m_IAdcChannel.all := m_ComRetVal;
      end return;
   end;

end;
