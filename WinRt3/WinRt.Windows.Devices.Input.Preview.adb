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
with WinRt.Windows.Devices.HumanInterfaceDevice;
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Devices.Input.Preview is

   package IAsyncOperation_Boolean is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Boolean);
   package AsyncOperationCompletedHandler_Boolean is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Boolean);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazeDevicePreview

   procedure Initialize (this : in out GazeDevicePreview) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazeDevicePreview) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazeDevicePreview, IGazeDevicePreview_Ptr);
   begin
      if this.m_IGazeDevicePreview /= null then
         if this.m_IGazeDevicePreview.all /= null then
            RefCount := this.m_IGazeDevicePreview.all.Release;
            Free (this.m_IGazeDevicePreview);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazeDevicePreview

   function get_Id
   (
      this : in out GazeDevicePreview
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
   begin
      Hr := this.m_IGazeDevicePreview.all.get_Id (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_CanTrackEyes
   (
      this : in out GazeDevicePreview
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGazeDevicePreview.all.get_CanTrackEyes (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_CanTrackHead
   (
      this : in out GazeDevicePreview
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGazeDevicePreview.all.get_CanTrackHead (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ConfigurationState
   (
      this : in out GazeDevicePreview
   )
   return WinRt.Windows.Devices.Input.Preview.GazeDeviceConfigurationStatePreview is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.GazeDeviceConfigurationStatePreview;
   begin
      Hr := this.m_IGazeDevicePreview.all.get_ConfigurationState (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function RequestCalibrationAsync
   (
      this : in out GazeDevicePreview
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
      Hr := this.m_IGazeDevicePreview.all.RequestCalibrationAsync (m_ComRetVal'Access);
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

   function GetNumericControlDescriptions
   (
      this : in out GazeDevicePreview;
      usagePage : WinRt.UInt16;
      usageId : WinRt.UInt16
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
   begin
      Hr := this.m_IGazeDevicePreview.all.GetNumericControlDescriptions (usagePage, usageId, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function GetBooleanControlDescriptions
   (
      this : in out GazeDevicePreview;
      usagePage : WinRt.UInt16;
      usageId : WinRt.UInt16
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
   begin
      Hr := this.m_IGazeDevicePreview.all.GetBooleanControlDescriptions (usagePage, usageId, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazeDeviceWatcherAddedPreviewEventArgs

   procedure Initialize (this : in out GazeDeviceWatcherAddedPreviewEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazeDeviceWatcherAddedPreviewEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazeDeviceWatcherAddedPreviewEventArgs, IGazeDeviceWatcherAddedPreviewEventArgs_Ptr);
   begin
      if this.m_IGazeDeviceWatcherAddedPreviewEventArgs /= null then
         if this.m_IGazeDeviceWatcherAddedPreviewEventArgs.all /= null then
            RefCount := this.m_IGazeDeviceWatcherAddedPreviewEventArgs.all.Release;
            Free (this.m_IGazeDeviceWatcherAddedPreviewEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazeDeviceWatcherAddedPreviewEventArgs

   function get_Device
   (
      this : in out GazeDeviceWatcherAddedPreviewEventArgs
   )
   return WinRt.Windows.Devices.Input.Preview.GazeDevicePreview'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.IGazeDevicePreview;
   begin
      return RetVal : WinRt.Windows.Devices.Input.Preview.GazeDevicePreview do
         Hr := this.m_IGazeDeviceWatcherAddedPreviewEventArgs.all.get_Device (m_ComRetVal'Access);
         Retval.m_IGazeDevicePreview := new Windows.Devices.Input.Preview.IGazeDevicePreview;
         Retval.m_IGazeDevicePreview.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazeDeviceWatcherPreview

   procedure Initialize (this : in out GazeDeviceWatcherPreview) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazeDeviceWatcherPreview) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazeDeviceWatcherPreview, IGazeDeviceWatcherPreview_Ptr);
   begin
      if this.m_IGazeDeviceWatcherPreview /= null then
         if this.m_IGazeDeviceWatcherPreview.all /= null then
            RefCount := this.m_IGazeDeviceWatcherPreview.all.Release;
            Free (this.m_IGazeDeviceWatcherPreview);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazeDeviceWatcherPreview

   function add_Added
   (
      this : in out GazeDeviceWatcherPreview;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.add_Added (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_Added
   (
      this : in out GazeDeviceWatcherPreview;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.remove_Added (token);
   end;

   function add_Removed
   (
      this : in out GazeDeviceWatcherPreview;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.add_Removed (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_Removed
   (
      this : in out GazeDeviceWatcherPreview;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.remove_Removed (token);
   end;

   function add_Updated
   (
      this : in out GazeDeviceWatcherPreview;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.add_Updated (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_Updated
   (
      this : in out GazeDeviceWatcherPreview;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.remove_Updated (token);
   end;

   function add_EnumerationCompleted
   (
      this : in out GazeDeviceWatcherPreview;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.add_EnumerationCompleted (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_EnumerationCompleted
   (
      this : in out GazeDeviceWatcherPreview;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.remove_EnumerationCompleted (token);
   end;

   procedure Start
   (
      this : in out GazeDeviceWatcherPreview
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.Start;
   end;

   procedure Stop
   (
      this : in out GazeDeviceWatcherPreview
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeDeviceWatcherPreview.all.Stop;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazeDeviceWatcherRemovedPreviewEventArgs

   procedure Initialize (this : in out GazeDeviceWatcherRemovedPreviewEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazeDeviceWatcherRemovedPreviewEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazeDeviceWatcherRemovedPreviewEventArgs, IGazeDeviceWatcherRemovedPreviewEventArgs_Ptr);
   begin
      if this.m_IGazeDeviceWatcherRemovedPreviewEventArgs /= null then
         if this.m_IGazeDeviceWatcherRemovedPreviewEventArgs.all /= null then
            RefCount := this.m_IGazeDeviceWatcherRemovedPreviewEventArgs.all.Release;
            Free (this.m_IGazeDeviceWatcherRemovedPreviewEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazeDeviceWatcherRemovedPreviewEventArgs

   function get_Device
   (
      this : in out GazeDeviceWatcherRemovedPreviewEventArgs
   )
   return WinRt.Windows.Devices.Input.Preview.GazeDevicePreview'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.IGazeDevicePreview;
   begin
      return RetVal : WinRt.Windows.Devices.Input.Preview.GazeDevicePreview do
         Hr := this.m_IGazeDeviceWatcherRemovedPreviewEventArgs.all.get_Device (m_ComRetVal'Access);
         Retval.m_IGazeDevicePreview := new Windows.Devices.Input.Preview.IGazeDevicePreview;
         Retval.m_IGazeDevicePreview.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazeDeviceWatcherUpdatedPreviewEventArgs

   procedure Initialize (this : in out GazeDeviceWatcherUpdatedPreviewEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazeDeviceWatcherUpdatedPreviewEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazeDeviceWatcherUpdatedPreviewEventArgs, IGazeDeviceWatcherUpdatedPreviewEventArgs_Ptr);
   begin
      if this.m_IGazeDeviceWatcherUpdatedPreviewEventArgs /= null then
         if this.m_IGazeDeviceWatcherUpdatedPreviewEventArgs.all /= null then
            RefCount := this.m_IGazeDeviceWatcherUpdatedPreviewEventArgs.all.Release;
            Free (this.m_IGazeDeviceWatcherUpdatedPreviewEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazeDeviceWatcherUpdatedPreviewEventArgs

   function get_Device
   (
      this : in out GazeDeviceWatcherUpdatedPreviewEventArgs
   )
   return WinRt.Windows.Devices.Input.Preview.GazeDevicePreview'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.IGazeDevicePreview;
   begin
      return RetVal : WinRt.Windows.Devices.Input.Preview.GazeDevicePreview do
         Hr := this.m_IGazeDeviceWatcherUpdatedPreviewEventArgs.all.get_Device (m_ComRetVal'Access);
         Retval.m_IGazeDevicePreview := new Windows.Devices.Input.Preview.IGazeDevicePreview;
         Retval.m_IGazeDevicePreview.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazeEnteredPreviewEventArgs

   procedure Initialize (this : in out GazeEnteredPreviewEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazeEnteredPreviewEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazeEnteredPreviewEventArgs, IGazeEnteredPreviewEventArgs_Ptr);
   begin
      if this.m_IGazeEnteredPreviewEventArgs /= null then
         if this.m_IGazeEnteredPreviewEventArgs.all /= null then
            RefCount := this.m_IGazeEnteredPreviewEventArgs.all.Release;
            Free (this.m_IGazeEnteredPreviewEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazeEnteredPreviewEventArgs

   function get_Handled
   (
      this : in out GazeEnteredPreviewEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGazeEnteredPreviewEventArgs.all.get_Handled (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Handled
   (
      this : in out GazeEnteredPreviewEventArgs;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeEnteredPreviewEventArgs.all.put_Handled (value);
   end;

   function get_CurrentPoint
   (
      this : in out GazeEnteredPreviewEventArgs
   )
   return WinRt.Windows.Devices.Input.Preview.GazePointPreview'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.IGazePointPreview;
   begin
      return RetVal : WinRt.Windows.Devices.Input.Preview.GazePointPreview do
         Hr := this.m_IGazeEnteredPreviewEventArgs.all.get_CurrentPoint (m_ComRetVal'Access);
         Retval.m_IGazePointPreview := new Windows.Devices.Input.Preview.IGazePointPreview;
         Retval.m_IGazePointPreview.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazeExitedPreviewEventArgs

   procedure Initialize (this : in out GazeExitedPreviewEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazeExitedPreviewEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazeExitedPreviewEventArgs, IGazeExitedPreviewEventArgs_Ptr);
   begin
      if this.m_IGazeExitedPreviewEventArgs /= null then
         if this.m_IGazeExitedPreviewEventArgs.all /= null then
            RefCount := this.m_IGazeExitedPreviewEventArgs.all.Release;
            Free (this.m_IGazeExitedPreviewEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazeExitedPreviewEventArgs

   function get_Handled
   (
      this : in out GazeExitedPreviewEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGazeExitedPreviewEventArgs.all.get_Handled (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Handled
   (
      this : in out GazeExitedPreviewEventArgs;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeExitedPreviewEventArgs.all.put_Handled (value);
   end;

   function get_CurrentPoint
   (
      this : in out GazeExitedPreviewEventArgs
   )
   return WinRt.Windows.Devices.Input.Preview.GazePointPreview'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.IGazePointPreview;
   begin
      return RetVal : WinRt.Windows.Devices.Input.Preview.GazePointPreview do
         Hr := this.m_IGazeExitedPreviewEventArgs.all.get_CurrentPoint (m_ComRetVal'Access);
         Retval.m_IGazePointPreview := new Windows.Devices.Input.Preview.IGazePointPreview;
         Retval.m_IGazePointPreview.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazeInputSourcePreview

   procedure Initialize (this : in out GazeInputSourcePreview) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazeInputSourcePreview) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazeInputSourcePreview, IGazeInputSourcePreview_Ptr);
   begin
      if this.m_IGazeInputSourcePreview /= null then
         if this.m_IGazeInputSourcePreview.all /= null then
            RefCount := this.m_IGazeInputSourcePreview.all.Release;
            Free (this.m_IGazeInputSourcePreview);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for GazeInputSourcePreview

   function GetForCurrentView
   return WinRt.Windows.Devices.Input.Preview.GazeInputSourcePreview is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Input.Preview.GazeInputSourcePreview");
      m_Factory        : access WinRt.Windows.Devices.Input.Preview.IGazeInputSourcePreviewStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.IGazeInputSourcePreview;
   begin
      return RetVal : WinRt.Windows.Devices.Input.Preview.GazeInputSourcePreview do
         Hr := RoGetActivationFactory (m_hString, IID_IGazeInputSourcePreviewStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForCurrentView (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IGazeInputSourcePreview := new Windows.Devices.Input.Preview.IGazeInputSourcePreview;
            Retval.m_IGazeInputSourcePreview.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function CreateWatcher
   return WinRt.Windows.Devices.Input.Preview.GazeDeviceWatcherPreview is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Input.Preview.GazeInputSourcePreview");
      m_Factory        : access WinRt.Windows.Devices.Input.Preview.IGazeInputSourcePreviewStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.IGazeDeviceWatcherPreview;
   begin
      return RetVal : WinRt.Windows.Devices.Input.Preview.GazeDeviceWatcherPreview do
         Hr := RoGetActivationFactory (m_hString, IID_IGazeInputSourcePreviewStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateWatcher (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IGazeDeviceWatcherPreview := new Windows.Devices.Input.Preview.IGazeDeviceWatcherPreview;
            Retval.m_IGazeDeviceWatcherPreview.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazeInputSourcePreview

   function add_GazeMoved
   (
      this : in out GazeInputSourcePreview;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IGazeInputSourcePreview.all.add_GazeMoved (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_GazeMoved
   (
      this : in out GazeInputSourcePreview;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeInputSourcePreview.all.remove_GazeMoved (token);
   end;

   function add_GazeEntered
   (
      this : in out GazeInputSourcePreview;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IGazeInputSourcePreview.all.add_GazeEntered (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_GazeEntered
   (
      this : in out GazeInputSourcePreview;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeInputSourcePreview.all.remove_GazeEntered (token);
   end;

   function add_GazeExited
   (
      this : in out GazeInputSourcePreview;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IGazeInputSourcePreview.all.add_GazeExited (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_GazeExited
   (
      this : in out GazeInputSourcePreview;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeInputSourcePreview.all.remove_GazeExited (token);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazeMovedPreviewEventArgs

   procedure Initialize (this : in out GazeMovedPreviewEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazeMovedPreviewEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazeMovedPreviewEventArgs, IGazeMovedPreviewEventArgs_Ptr);
   begin
      if this.m_IGazeMovedPreviewEventArgs /= null then
         if this.m_IGazeMovedPreviewEventArgs.all /= null then
            RefCount := this.m_IGazeMovedPreviewEventArgs.all.Release;
            Free (this.m_IGazeMovedPreviewEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazeMovedPreviewEventArgs

   function get_Handled
   (
      this : in out GazeMovedPreviewEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGazeMovedPreviewEventArgs.all.get_Handled (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Handled
   (
      this : in out GazeMovedPreviewEventArgs;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGazeMovedPreviewEventArgs.all.put_Handled (value);
   end;

   function get_CurrentPoint
   (
      this : in out GazeMovedPreviewEventArgs
   )
   return WinRt.Windows.Devices.Input.Preview.GazePointPreview'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.IGazePointPreview;
   begin
      return RetVal : WinRt.Windows.Devices.Input.Preview.GazePointPreview do
         Hr := this.m_IGazeMovedPreviewEventArgs.all.get_CurrentPoint (m_ComRetVal'Access);
         Retval.m_IGazePointPreview := new Windows.Devices.Input.Preview.IGazePointPreview;
         Retval.m_IGazePointPreview.all := m_ComRetVal;
      end return;
   end;

   function GetIntermediatePoints
   (
      this : in out GazeMovedPreviewEventArgs
   )
   return IVector_IGazePointPreview.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVector_IGazePointPreview.Kind;
   begin
      Hr := this.m_IGazeMovedPreviewEventArgs.all.GetIntermediatePoints (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVector_IGazePointPreview (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GazePointPreview

   procedure Initialize (this : in out GazePointPreview) is
   begin
      null;
   end;

   procedure Finalize (this : in out GazePointPreview) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGazePointPreview, IGazePointPreview_Ptr);
   begin
      if this.m_IGazePointPreview /= null then
         if this.m_IGazePointPreview.all /= null then
            RefCount := this.m_IGazePointPreview.all.Release;
            Free (this.m_IGazePointPreview);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GazePointPreview

   function get_SourceDevice
   (
      this : in out GazePointPreview
   )
   return WinRt.Windows.Devices.Input.Preview.GazeDevicePreview'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Input.Preview.IGazeDevicePreview;
   begin
      return RetVal : WinRt.Windows.Devices.Input.Preview.GazeDevicePreview do
         Hr := this.m_IGazePointPreview.all.get_SourceDevice (m_ComRetVal'Access);
         Retval.m_IGazeDevicePreview := new Windows.Devices.Input.Preview.IGazeDevicePreview;
         Retval.m_IGazeDevicePreview.all := m_ComRetVal;
      end return;
   end;

   function get_EyeGazePosition
   (
      this : in out GazePointPreview
   )
   return IReference_Point.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_Point.Kind;
   begin
      Hr := this.m_IGazePointPreview.all.get_EyeGazePosition (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_Point (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_HeadGazePosition
   (
      this : in out GazePointPreview
   )
   return IReference_Point.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_Point.Kind;
   begin
      Hr := this.m_IGazePointPreview.all.get_HeadGazePosition (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_Point (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_Timestamp
   (
      this : in out GazePointPreview
   )
   return WinRt.UInt64 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt64;
   begin
      Hr := this.m_IGazePointPreview.all.get_Timestamp (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_HidInputReport
   (
      this : in out GazePointPreview
   )
   return WinRt.Windows.Devices.HumanInterfaceDevice.HidInputReport'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.HumanInterfaceDevice.IHidInputReport;
   begin
      return RetVal : WinRt.Windows.Devices.HumanInterfaceDevice.HidInputReport do
         Hr := this.m_IGazePointPreview.all.get_HidInputReport (m_ComRetVal'Access);
         Retval.m_IHidInputReport := new Windows.Devices.HumanInterfaceDevice.IHidInputReport;
         Retval.m_IHidInputReport.all := m_ComRetVal;
      end return;
   end;

end;
