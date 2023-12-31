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
with WinRt.Windows.Devices.Sensors;
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.System.Preview is

   package IAsyncOperation_TwoPanelHingedDevicePosturePreviewReading is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReading);
   package AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreviewReading is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReading);

   package IAsyncOperation_TwoPanelHingedDevicePosturePreview is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.System.Preview.ITwoPanelHingedDevicePosturePreview);
   package AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreview is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.System.Preview.ITwoPanelHingedDevicePosturePreview);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for TwoPanelHingedDevicePosturePreview

   procedure Initialize (this : in out TwoPanelHingedDevicePosturePreview) is
   begin
      null;
   end;

   procedure Finalize (this : in out TwoPanelHingedDevicePosturePreview) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ITwoPanelHingedDevicePosturePreview, ITwoPanelHingedDevicePosturePreview_Ptr);
   begin
      if this.m_ITwoPanelHingedDevicePosturePreview /= null then
         if this.m_ITwoPanelHingedDevicePosturePreview.all /= null then
            RefCount := this.m_ITwoPanelHingedDevicePosturePreview.all.Release;
            Free (this.m_ITwoPanelHingedDevicePosturePreview);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for TwoPanelHingedDevicePosturePreview

   function GetDefaultAsync
   return WinRt.Windows.System.Preview.TwoPanelHingedDevicePosturePreview is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.System.Preview.TwoPanelHingedDevicePosturePreview");
      m_Factory        : access WinRt.Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_TwoPanelHingedDevicePosturePreview.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_TwoPanelHingedDevicePosturePreview.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.System.Preview.ITwoPanelHingedDevicePosturePreview;
      m_IID            : aliased WinRt.IID := (3110209817, 57617, 21007, (128, 151, 142, 155, 39, 83, 145, 181 )); -- Windows.System.Preview.TwoPanelHingedDevicePosturePreview;
      m_HandlerIID     : aliased WinRt.IID := (4075996494, 57170, 23167, (134, 16, 229, 121, 253, 133, 147, 216 ));
      m_Handler        : AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreview.Kind := new AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreview.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_TwoPanelHingedDevicePosturePreview.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreview.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreview.Kind_Delegate, AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreview.Kind);

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
      return RetVal : WinRt.Windows.System.Preview.TwoPanelHingedDevicePosturePreview do
         Hr := RoGetActivationFactory (m_hString, IID_ITwoPanelHingedDevicePosturePreviewStatics'Access , m_Factory'Address);
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
                     Retval.m_ITwoPanelHingedDevicePosturePreview := new Windows.System.Preview.ITwoPanelHingedDevicePosturePreview;
                     Retval.m_ITwoPanelHingedDevicePosturePreview.all := m_RetVal;
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

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for TwoPanelHingedDevicePosturePreview

   function GetCurrentPostureAsync
   (
      this : in out TwoPanelHingedDevicePosturePreview
   )
   return WinRt.Windows.System.Preview.TwoPanelHingedDevicePosturePreviewReading'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_TwoPanelHingedDevicePosturePreviewReading.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_TwoPanelHingedDevicePosturePreviewReading.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReading;
      m_IID            : aliased WinRt.IID := (579249200, 41049, 22936, (129, 12, 37, 186, 22, 1, 124, 158 )); -- Windows.System.Preview.TwoPanelHingedDevicePosturePreviewReading;
      m_HandlerIID     : aliased WinRt.IID := (1259477165, 54169, 22370, (130, 2, 197, 208, 212, 182, 235, 84 ));
      m_Handler        : AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreviewReading.Kind := new AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreviewReading.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_TwoPanelHingedDevicePosturePreviewReading.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreviewReading.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreviewReading.Kind_Delegate, AsyncOperationCompletedHandler_TwoPanelHingedDevicePosturePreviewReading.Kind);

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
      return RetVal : WinRt.Windows.System.Preview.TwoPanelHingedDevicePosturePreviewReading do
         Hr := this.m_ITwoPanelHingedDevicePosturePreview.all.GetCurrentPostureAsync (m_ComRetVal'Access);
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
                  Retval.m_ITwoPanelHingedDevicePosturePreviewReading := new Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReading;
                  Retval.m_ITwoPanelHingedDevicePosturePreviewReading.all := m_RetVal;
               end if;
               m_RefCount := m_AsyncOperation.Release;
               m_RefCount := m_Handler.Release;
               if m_RefCount = 0 then
                  Free (m_Handler);
               end if;
            end if;
         end if;
      end return;
   end;

   function add_PostureChanged
   (
      this : in out TwoPanelHingedDevicePosturePreview;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_ITwoPanelHingedDevicePosturePreview.all.add_PostureChanged (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_PostureChanged
   (
      this : in out TwoPanelHingedDevicePosturePreview;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ITwoPanelHingedDevicePosturePreview.all.remove_PostureChanged (token);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for TwoPanelHingedDevicePosturePreviewReading

   procedure Initialize (this : in out TwoPanelHingedDevicePosturePreviewReading) is
   begin
      null;
   end;

   procedure Finalize (this : in out TwoPanelHingedDevicePosturePreviewReading) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ITwoPanelHingedDevicePosturePreviewReading, ITwoPanelHingedDevicePosturePreviewReading_Ptr);
   begin
      if this.m_ITwoPanelHingedDevicePosturePreviewReading /= null then
         if this.m_ITwoPanelHingedDevicePosturePreviewReading.all /= null then
            RefCount := this.m_ITwoPanelHingedDevicePosturePreviewReading.all.Release;
            Free (this.m_ITwoPanelHingedDevicePosturePreviewReading);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for TwoPanelHingedDevicePosturePreviewReading

   function get_Timestamp
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.Windows.Foundation.DateTime is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.DateTime;
   begin
      Hr := this.m_ITwoPanelHingedDevicePosturePreviewReading.all.get_Timestamp (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_HingeState
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.Windows.System.Preview.HingeState is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.System.Preview.HingeState;
   begin
      Hr := this.m_ITwoPanelHingedDevicePosturePreviewReading.all.get_HingeState (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Panel1Orientation
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.Windows.Devices.Sensors.SimpleOrientation is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Sensors.SimpleOrientation;
   begin
      Hr := this.m_ITwoPanelHingedDevicePosturePreviewReading.all.get_Panel1Orientation (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Panel1Id
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ITwoPanelHingedDevicePosturePreviewReading.all.get_Panel1Id (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_Panel2Orientation
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.Windows.Devices.Sensors.SimpleOrientation is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Sensors.SimpleOrientation;
   begin
      Hr := this.m_ITwoPanelHingedDevicePosturePreviewReading.all.get_Panel2Orientation (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Panel2Id
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ITwoPanelHingedDevicePosturePreviewReading.all.get_Panel2Id (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs

   procedure Initialize (this : in out TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs, ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs_Ptr);
   begin
      if this.m_ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs /= null then
         if this.m_ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs.all /= null then
            RefCount := this.m_ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs.all.Release;
            Free (this.m_ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs

   function get_Reading
   (
      this : in out TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs
   )
   return WinRt.Windows.System.Preview.TwoPanelHingedDevicePosturePreviewReading'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReading;
   begin
      return RetVal : WinRt.Windows.System.Preview.TwoPanelHingedDevicePosturePreviewReading do
         Hr := this.m_ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs.all.get_Reading (m_ComRetVal'Access);
         Retval.m_ITwoPanelHingedDevicePosturePreviewReading := new Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReading;
         Retval.m_ITwoPanelHingedDevicePosturePreviewReading.all := m_ComRetVal;
      end return;
   end;

end;
