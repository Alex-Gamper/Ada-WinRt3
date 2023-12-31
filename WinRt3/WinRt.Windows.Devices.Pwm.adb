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
with WinRt.Windows.Devices.Pwm.Provider;
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Devices.Pwm is

   package IAsyncOperation_PwmController is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Devices.Pwm.IPwmController);
   package AsyncOperationCompletedHandler_PwmController is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Devices.Pwm.IPwmController);

   package IAsyncOperation_GenericObject is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.GenericObject);
   package AsyncOperationCompletedHandler_GenericObject is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.GenericObject);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PwmController

   procedure Initialize (this : in out PwmController) is
   begin
      null;
   end;

   procedure Finalize (this : in out PwmController) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPwmController, IPwmController_Ptr);
   begin
      if this.m_IPwmController /= null then
         if this.m_IPwmController.all /= null then
            RefCount := this.m_IPwmController.all.Release;
            Free (this.m_IPwmController);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for PwmController

   function GetDefaultAsync
   return WinRt.Windows.Devices.Pwm.PwmController is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Pwm.PwmController");
      m_Factory        : access WinRt.Windows.Devices.Pwm.IPwmControllerStatics2_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_PwmController.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_PwmController.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Devices.Pwm.IPwmController;
      m_IID            : aliased WinRt.IID := (170429761, 7968, 23830, (133, 221, 82, 133, 91, 17, 86, 154 )); -- Windows.Devices.Pwm.PwmController;
      m_HandlerIID     : aliased WinRt.IID := (1606848159, 65535, 23891, (186, 33, 156, 51, 239, 86, 178, 64 ));
      m_Handler        : AsyncOperationCompletedHandler_PwmController.Kind := new AsyncOperationCompletedHandler_PwmController.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_PwmController.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_PwmController.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_PwmController.Kind_Delegate, AsyncOperationCompletedHandler_PwmController.Kind);

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
      return RetVal : WinRt.Windows.Devices.Pwm.PwmController do
         Hr := RoGetActivationFactory (m_hString, IID_IPwmControllerStatics2'Access , m_Factory'Address);
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
                     Retval.m_IPwmController := new Windows.Devices.Pwm.IPwmController;
                     Retval.m_IPwmController.all := m_RetVal;
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

   function GetDeviceSelector
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Pwm.PwmController");
      m_Factory        : access WinRt.Windows.Devices.Pwm.IPwmControllerStatics3_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := RoGetActivationFactory (m_hString, IID_IPwmControllerStatics3'Access , m_Factory'Address);
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
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Pwm.PwmController");
      m_Factory        : access WinRt.Windows.Devices.Pwm.IPwmControllerStatics3_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      HStr_friendlyName : WinRt.HString := To_HString (friendlyName);
   begin
      Hr := RoGetActivationFactory (m_hString, IID_IPwmControllerStatics3'Access , m_Factory'Address);
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

   function FromIdAsync
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Pwm.PwmController is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Pwm.PwmController");
      m_Factory        : access WinRt.Windows.Devices.Pwm.IPwmControllerStatics3_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_deviceId : WinRt.HString := To_HString (deviceId);
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_PwmController.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_PwmController.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Devices.Pwm.IPwmController;
      m_IID            : aliased WinRt.IID := (170429761, 7968, 23830, (133, 221, 82, 133, 91, 17, 86, 154 )); -- Windows.Devices.Pwm.PwmController;
      m_HandlerIID     : aliased WinRt.IID := (1606848159, 65535, 23891, (186, 33, 156, 51, 239, 86, 178, 64 ));
      m_Handler        : AsyncOperationCompletedHandler_PwmController.Kind := new AsyncOperationCompletedHandler_PwmController.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_PwmController.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_PwmController.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_PwmController.Kind_Delegate, AsyncOperationCompletedHandler_PwmController.Kind);

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
      return RetVal : WinRt.Windows.Devices.Pwm.PwmController do
         Hr := RoGetActivationFactory (m_hString, IID_IPwmControllerStatics3'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.FromIdAsync (HStr_deviceId, m_ComRetVal'Access);
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
                     Retval.m_IPwmController := new Windows.Devices.Pwm.IPwmController;
                     Retval.m_IPwmController.all := m_RetVal;
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

   function GetControllersAsync
   (
      provider : Windows.Devices.Pwm.Provider.IPwmProvider
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Pwm.PwmController");
      m_Factory        : access WinRt.Windows.Devices.Pwm.IPwmControllerStatics_Interface'Class := null;
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
      m_IID            : aliased WinRt.IID := (3826589325, 18056, 20515, (159, 93, 0, 139, 189, 144, 72, 145 )); -- GenericObject;
      m_HandlerIID     : aliased WinRt.IID := (3878408312, 52738, 21932, (167, 185, 171, 208, 18, 72, 216, 136 ));
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
      Hr := RoGetActivationFactory (m_hString, IID_IPwmControllerStatics'Access , m_Factory'Address);
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
   -- Implemented Interfaces for PwmController

   function get_PinCount
   (
      this : in out PwmController
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IPwmController.all.get_PinCount (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ActualFrequency
   (
      this : in out PwmController
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IPwmController.all.get_ActualFrequency (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function SetDesiredFrequency
   (
      this : in out PwmController;
      desiredFrequency : WinRt.Double
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IPwmController.all.SetDesiredFrequency (desiredFrequency, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_MinFrequency
   (
      this : in out PwmController
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IPwmController.all.get_MinFrequency (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_MaxFrequency
   (
      this : in out PwmController
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IPwmController.all.get_MaxFrequency (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function OpenPin
   (
      this : in out PwmController;
      pinNumber : WinRt.Int32
   )
   return WinRt.Windows.Devices.Pwm.PwmPin'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Pwm.IPwmPin;
   begin
      return RetVal : WinRt.Windows.Devices.Pwm.PwmPin do
         Hr := this.m_IPwmController.all.OpenPin (pinNumber, m_ComRetVal'Access);
         Retval.m_IPwmPin := new Windows.Devices.Pwm.IPwmPin;
         Retval.m_IPwmPin.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PwmPin

   procedure Initialize (this : in out PwmPin) is
   begin
      null;
   end;

   procedure Finalize (this : in out PwmPin) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPwmPin, IPwmPin_Ptr);
   begin
      if this.m_IPwmPin /= null then
         if this.m_IPwmPin.all /= null then
            RefCount := this.m_IPwmPin.all.Release;
            Free (this.m_IPwmPin);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PwmPin

   function get_Controller
   (
      this : in out PwmPin
   )
   return WinRt.Windows.Devices.Pwm.PwmController'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Pwm.IPwmController;
   begin
      return RetVal : WinRt.Windows.Devices.Pwm.PwmController do
         Hr := this.m_IPwmPin.all.get_Controller (m_ComRetVal'Access);
         Retval.m_IPwmController := new Windows.Devices.Pwm.IPwmController;
         Retval.m_IPwmController.all := m_ComRetVal;
      end return;
   end;

   function GetActiveDutyCyclePercentage
   (
      this : in out PwmPin
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IPwmPin.all.GetActiveDutyCyclePercentage (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure SetActiveDutyCyclePercentage
   (
      this : in out PwmPin;
      dutyCyclePercentage : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPwmPin.all.SetActiveDutyCyclePercentage (dutyCyclePercentage);
   end;

   function get_Polarity
   (
      this : in out PwmPin
   )
   return WinRt.Windows.Devices.Pwm.PwmPulsePolarity is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Pwm.PwmPulsePolarity;
   begin
      Hr := this.m_IPwmPin.all.get_Polarity (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Polarity
   (
      this : in out PwmPin;
      value : Windows.Devices.Pwm.PwmPulsePolarity
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPwmPin.all.put_Polarity (value);
   end;

   procedure Start
   (
      this : in out PwmPin
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPwmPin.all.Start;
   end;

   procedure Stop
   (
      this : in out PwmPin
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IPwmPin.all.Stop;
   end;

   function get_IsStarted
   (
      this : in out PwmPin
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IPwmPin.all.get_IsStarted (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure Close
   (
      this : in out PwmPin
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Foundation.IClosable := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Devices.Pwm.IPwmPin_Interface, WinRt.Windows.Foundation.IClosable, WinRt.Windows.Foundation.IID_IClosable'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPwmPin.all);
      Hr := m_Interface.Close;
      m_RefCount := m_Interface.Release;
   end;

end;
