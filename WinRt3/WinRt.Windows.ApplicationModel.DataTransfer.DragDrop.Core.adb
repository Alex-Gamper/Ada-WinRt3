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
with WinRt.Windows.Graphics.Imaging;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core is

   package IAsyncOperation_DataPackageOperation is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.ApplicationModel.DataTransfer.DataPackageOperation);
   package AsyncOperationCompletedHandler_DataPackageOperation is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.ApplicationModel.DataTransfer.DataPackageOperation);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreDragDropManager

   procedure Initialize (this : in out CoreDragDropManager) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreDragDropManager) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreDragDropManager, ICoreDragDropManager_Ptr);
   begin
      if this.m_ICoreDragDropManager /= null then
         if this.m_ICoreDragDropManager.all /= null then
            RefCount := this.m_ICoreDragDropManager.all.Release;
            Free (this.m_ICoreDragDropManager);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for CoreDragDropManager

   function GetForCurrentView
   return WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager");
      m_Factory        : access WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragDropManagerStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragDropManager;
   begin
      return RetVal : WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager do
         Hr := RoGetActivationFactory (m_hString, IID_ICoreDragDropManagerStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForCurrentView (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ICoreDragDropManager := new Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragDropManager;
            Retval.m_ICoreDragDropManager.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreDragDropManager

   function add_TargetRequested
   (
      this : in out CoreDragDropManager;
      value : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_ICoreDragDropManager.all.add_TargetRequested (value, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_TargetRequested
   (
      this : in out CoreDragDropManager;
      value : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragDropManager.all.remove_TargetRequested (value);
   end;

   function get_AreConcurrentOperationsEnabled
   (
      this : in out CoreDragDropManager
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreDragDropManager.all.get_AreConcurrentOperationsEnabled (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_AreConcurrentOperationsEnabled
   (
      this : in out CoreDragDropManager;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragDropManager.all.put_AreConcurrentOperationsEnabled (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreDragInfo

   procedure Initialize (this : in out CoreDragInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreDragInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreDragInfo, ICoreDragInfo_Ptr);
   begin
      if this.m_ICoreDragInfo /= null then
         if this.m_ICoreDragInfo.all /= null then
            RefCount := this.m_ICoreDragInfo.all.Release;
            Free (this.m_ICoreDragInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreDragInfo

   function get_Data
   (
      this : in out CoreDragInfo
   )
   return WinRt.Windows.ApplicationModel.DataTransfer.DataPackageView'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.DataTransfer.IDataPackageView;
   begin
      return RetVal : WinRt.Windows.ApplicationModel.DataTransfer.DataPackageView do
         Hr := this.m_ICoreDragInfo.all.get_Data (m_ComRetVal'Access);
         Retval.m_IDataPackageView := new Windows.ApplicationModel.DataTransfer.IDataPackageView;
         Retval.m_IDataPackageView.all := m_ComRetVal;
      end return;
   end;

   function get_Modifiers
   (
      this : in out CoreDragInfo
   )
   return WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers;
   begin
      Hr := this.m_ICoreDragInfo.all.get_Modifiers (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Position
   (
      this : in out CoreDragInfo
   )
   return WinRt.Windows.Foundation.Point is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.Point;
   begin
      Hr := this.m_ICoreDragInfo.all.get_Position (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_AllowedOperations
   (
      this : in out CoreDragInfo
   )
   return WinRt.Windows.ApplicationModel.DataTransfer.DataPackageOperation is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.DataTransfer.DataPackageOperation;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo_Interface, WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragInfo2, WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.IID_ICoreDragInfo2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreDragInfo.all);
      Hr := m_Interface.get_AllowedOperations (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreDragOperation

   procedure Initialize (this : in out CoreDragOperation) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreDragOperation) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreDragOperation, ICoreDragOperation_Ptr);
   begin
      if this.m_ICoreDragOperation /= null then
         if this.m_ICoreDragOperation.all /= null then
            RefCount := this.m_ICoreDragOperation.all.Release;
            Free (this.m_ICoreDragOperation);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for CoreDragOperation

   function Constructor return CoreDragOperation is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragOperation");
      m_ComRetVal  : aliased Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation;
   begin
      return RetVal : CoreDragOperation do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_ICoreDragOperation := new Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation;
            Retval.m_ICoreDragOperation.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreDragOperation

   function get_Data
   (
      this : in out CoreDragOperation
   )
   return WinRt.Windows.ApplicationModel.DataTransfer.DataPackage'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.DataTransfer.IDataPackage;
   begin
      return RetVal : WinRt.Windows.ApplicationModel.DataTransfer.DataPackage do
         Hr := this.m_ICoreDragOperation.all.get_Data (m_ComRetVal'Access);
         Retval.m_IDataPackage := new Windows.ApplicationModel.DataTransfer.IDataPackage;
         Retval.m_IDataPackage.all := m_ComRetVal;
      end return;
   end;

   procedure SetPointerId
   (
      this : in out CoreDragOperation;
      pointerId : WinRt.UInt32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragOperation.all.SetPointerId (pointerId);
   end;

   procedure SetDragUIContentFromSoftwareBitmap
   (
      this : in out CoreDragOperation;
      softwareBitmap : Windows.Graphics.Imaging.SoftwareBitmap'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragOperation.all.SetDragUIContentFromSoftwareBitmap (softwareBitmap.m_ISoftwareBitmap.all);
   end;

   procedure SetDragUIContentFromSoftwareBitmap
   (
      this : in out CoreDragOperation;
      softwareBitmap : Windows.Graphics.Imaging.SoftwareBitmap'Class;
      anchorPoint : Windows.Foundation.Point
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragOperation.all.SetDragUIContentFromSoftwareBitmap (softwareBitmap.m_ISoftwareBitmap.all, anchorPoint);
   end;

   function get_DragUIContentMode
   (
      this : in out CoreDragOperation
   )
   return WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode;
   begin
      Hr := this.m_ICoreDragOperation.all.get_DragUIContentMode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_DragUIContentMode
   (
      this : in out CoreDragOperation;
      value : Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragOperation.all.put_DragUIContentMode (value);
   end;

   function StartAsync
   (
      this : in out CoreDragOperation
   )
   return WinRt.Windows.ApplicationModel.DataTransfer.DataPackageOperation is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_DataPackageOperation.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_DataPackageOperation.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.ApplicationModel.DataTransfer.DataPackageOperation;
      m_IID            : aliased WinRt.IID := (3945035292, 13272, 21486, (140, 67, 172, 84, 21, 145, 82, 213 )); -- Windows.ApplicationModel.DataTransfer.DataPackageOperation;
      m_HandlerIID     : aliased WinRt.IID := (1177232531, 26470, 22750, (161, 187, 50, 157, 134, 160, 69, 210 ));
      m_Handler        : AsyncOperationCompletedHandler_DataPackageOperation.Kind := new AsyncOperationCompletedHandler_DataPackageOperation.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_DataPackageOperation.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_DataPackageOperation.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_DataPackageOperation.Kind_Delegate, AsyncOperationCompletedHandler_DataPackageOperation.Kind);

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
      Hr := this.m_ICoreDragOperation.all.StartAsync (m_ComRetVal'Access);
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

   function get_AllowedOperations
   (
      this : in out CoreDragOperation
   )
   return WinRt.Windows.ApplicationModel.DataTransfer.DataPackageOperation is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.DataTransfer.DataPackageOperation;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation_Interface, WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation2, WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.IID_ICoreDragOperation2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreDragOperation.all);
      Hr := m_Interface.get_AllowedOperations (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   procedure put_AllowedOperations
   (
      this : in out CoreDragOperation;
      value : Windows.ApplicationModel.DataTransfer.DataPackageOperation
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation_Interface, WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDragOperation2, WinRt.Windows.ApplicationModel.DataTransfer.DragDrop.Core.IID_ICoreDragOperation2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreDragOperation.all);
      Hr := m_Interface.put_AllowedOperations (value);
      m_RefCount := m_Interface.Release;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreDragUIOverride

   procedure Initialize (this : in out CoreDragUIOverride) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreDragUIOverride) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreDragUIOverride, ICoreDragUIOverride_Ptr);
   begin
      if this.m_ICoreDragUIOverride /= null then
         if this.m_ICoreDragUIOverride.all /= null then
            RefCount := this.m_ICoreDragUIOverride.all.Release;
            Free (this.m_ICoreDragUIOverride);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreDragUIOverride

   procedure SetContentFromSoftwareBitmap
   (
      this : in out CoreDragUIOverride;
      softwareBitmap : Windows.Graphics.Imaging.SoftwareBitmap'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragUIOverride.all.SetContentFromSoftwareBitmap (softwareBitmap.m_ISoftwareBitmap.all);
   end;

   procedure SetContentFromSoftwareBitmap
   (
      this : in out CoreDragUIOverride;
      softwareBitmap : Windows.Graphics.Imaging.SoftwareBitmap'Class;
      anchorPoint : Windows.Foundation.Point
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragUIOverride.all.SetContentFromSoftwareBitmap (softwareBitmap.m_ISoftwareBitmap.all, anchorPoint);
   end;

   function get_IsContentVisible
   (
      this : in out CoreDragUIOverride
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreDragUIOverride.all.get_IsContentVisible (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_IsContentVisible
   (
      this : in out CoreDragUIOverride;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragUIOverride.all.put_IsContentVisible (value);
   end;

   function get_Caption
   (
      this : in out CoreDragUIOverride
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ICoreDragUIOverride.all.get_Caption (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure put_Caption
   (
      this : in out CoreDragUIOverride;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_ICoreDragUIOverride.all.put_Caption (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

   function get_IsCaptionVisible
   (
      this : in out CoreDragUIOverride
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreDragUIOverride.all.get_IsCaptionVisible (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_IsCaptionVisible
   (
      this : in out CoreDragUIOverride;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragUIOverride.all.put_IsCaptionVisible (value);
   end;

   function get_IsGlyphVisible
   (
      this : in out CoreDragUIOverride
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreDragUIOverride.all.get_IsGlyphVisible (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_IsGlyphVisible
   (
      this : in out CoreDragUIOverride;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragUIOverride.all.put_IsGlyphVisible (value);
   end;

   procedure Clear
   (
      this : in out CoreDragUIOverride
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDragUIOverride.all.Clear;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreDropOperationTargetRequestedEventArgs

   procedure Initialize (this : in out CoreDropOperationTargetRequestedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreDropOperationTargetRequestedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreDropOperationTargetRequestedEventArgs, ICoreDropOperationTargetRequestedEventArgs_Ptr);
   begin
      if this.m_ICoreDropOperationTargetRequestedEventArgs /= null then
         if this.m_ICoreDropOperationTargetRequestedEventArgs.all /= null then
            RefCount := this.m_ICoreDropOperationTargetRequestedEventArgs.all.Release;
            Free (this.m_ICoreDropOperationTargetRequestedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreDropOperationTargetRequestedEventArgs

   procedure SetTarget
   (
      this : in out CoreDropOperationTargetRequestedEventArgs;
      target : Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDropOperationTarget
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreDropOperationTargetRequestedEventArgs.all.SetTarget (target);
   end;

end;
