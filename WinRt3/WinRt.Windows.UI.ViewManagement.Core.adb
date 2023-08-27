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
package body WinRt.Windows.UI.ViewManagement.Core is

   package IAsyncOperation_UISettingsController is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.UI.ViewManagement.Core.IUISettingsController);
   package AsyncOperationCompletedHandler_UISettingsController is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.UI.ViewManagement.Core.IUISettingsController);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputView

   procedure Initialize (this : in out CoreInputView) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreInputView) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreInputView, ICoreInputView_Ptr);
   begin
      if this.m_ICoreInputView /= null then
         if this.m_ICoreInputView.all /= null then
            RefCount := this.m_ICoreInputView.all.Release;
            Free (this.m_ICoreInputView);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for CoreInputView

   function GetForCurrentView
   return WinRt.Windows.UI.ViewManagement.Core.CoreInputView is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.UI.ViewManagement.Core.CoreInputView");
      m_Factory        : access WinRt.Windows.UI.ViewManagement.Core.ICoreInputViewStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.ViewManagement.Core.ICoreInputView;
   begin
      return RetVal : WinRt.Windows.UI.ViewManagement.Core.CoreInputView do
         Hr := RoGetActivationFactory (m_hString, IID_ICoreInputViewStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForCurrentView (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ICoreInputView := new Windows.UI.ViewManagement.Core.ICoreInputView;
            Retval.m_ICoreInputView.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function GetForUIContext
   (
      context : Windows.UI.UIContext'Class
   )
   return WinRt.Windows.UI.ViewManagement.Core.CoreInputView is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.UI.ViewManagement.Core.CoreInputView");
      m_Factory        : access WinRt.Windows.UI.ViewManagement.Core.ICoreInputViewStatics2_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.ViewManagement.Core.ICoreInputView;
   begin
      return RetVal : WinRt.Windows.UI.ViewManagement.Core.CoreInputView do
         Hr := RoGetActivationFactory (m_hString, IID_ICoreInputViewStatics2'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForUIContext (context.m_IUIContext.all, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ICoreInputView := new Windows.UI.ViewManagement.Core.ICoreInputView;
            Retval.m_ICoreInputView.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputView

   function add_OcclusionsChanged
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_ICoreInputView.all.add_OcclusionsChanged (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_OcclusionsChanged
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreInputView.all.remove_OcclusionsChanged (token);
   end;

   function GetCoreInputViewOcclusions
   (
      this : in out CoreInputView
   )
   return IVectorView_ICoreInputViewOcclusion.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVectorView_ICoreInputViewOcclusion.Kind;
   begin
      Hr := this.m_ICoreInputView.all.GetCoreInputViewOcclusions (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVectorView_ICoreInputViewOcclusion (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function TryShowPrimaryView
   (
      this : in out CoreInputView
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreInputView.all.TryShowPrimaryView (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function TryHidePrimaryView
   (
      this : in out CoreInputView
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreInputView.all.TryHidePrimaryView (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function add_XYFocusTransferringFromPrimaryView
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.add_XYFocusTransferringFromPrimaryView (handler, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   procedure remove_XYFocusTransferringFromPrimaryView
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.remove_XYFocusTransferringFromPrimaryView (token);
      m_RefCount := m_Interface.Release;
   end;

   function add_XYFocusTransferredToPrimaryView
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.add_XYFocusTransferredToPrimaryView (handler, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   procedure remove_XYFocusTransferredToPrimaryView
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.remove_XYFocusTransferredToPrimaryView (token);
      m_RefCount := m_Interface.Release;
   end;

   function TryTransferXYFocusToPrimaryView
   (
      this : in out CoreInputView;
      origin : Windows.Foundation.Rect;
      direction : Windows.UI.ViewManagement.Core.CoreInputViewXYFocusTransferDirection
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView2, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.TryTransferXYFocusToPrimaryView (origin, direction, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function TryShow
   (
      this : in out CoreInputView
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView3 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView3, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView3'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.TryShow (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function TryShow
   (
      this : in out CoreInputView;
      type_x : Windows.UI.ViewManagement.Core.CoreInputViewKind
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView3 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView3, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView3'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.TryShow (type_x, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function TryHide
   (
      this : in out CoreInputView
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView3 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView3, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView3'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.TryHide (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function add_PrimaryViewShowing
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView4 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView4, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView4'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.add_PrimaryViewShowing (handler, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   procedure remove_PrimaryViewShowing
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView4 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView4, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView4'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.remove_PrimaryViewShowing (token);
      m_RefCount := m_Interface.Release;
   end;

   function add_PrimaryViewHiding
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView4 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView4, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView4'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.add_PrimaryViewHiding (handler, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   procedure remove_PrimaryViewHiding
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.ViewManagement.Core.ICoreInputView4 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.ViewManagement.Core.ICoreInputView_Interface, WinRt.Windows.UI.ViewManagement.Core.ICoreInputView4, WinRt.Windows.UI.ViewManagement.Core.IID_ICoreInputView4'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ICoreInputView.all);
      Hr := m_Interface.remove_PrimaryViewHiding (token);
      m_RefCount := m_Interface.Release;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewHidingEventArgs

   procedure Initialize (this : in out CoreInputViewHidingEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreInputViewHidingEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreInputViewHidingEventArgs, ICoreInputViewHidingEventArgs_Ptr);
   begin
      if this.m_ICoreInputViewHidingEventArgs /= null then
         if this.m_ICoreInputViewHidingEventArgs.all /= null then
            RefCount := this.m_ICoreInputViewHidingEventArgs.all.Release;
            Free (this.m_ICoreInputViewHidingEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewHidingEventArgs

   function TryCancel
   (
      this : in out CoreInputViewHidingEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreInputViewHidingEventArgs.all.TryCancel (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewOcclusion

   procedure Initialize (this : in out CoreInputViewOcclusion) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreInputViewOcclusion) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreInputViewOcclusion, ICoreInputViewOcclusion_Ptr);
   begin
      if this.m_ICoreInputViewOcclusion /= null then
         if this.m_ICoreInputViewOcclusion.all /= null then
            RefCount := this.m_ICoreInputViewOcclusion.all.Release;
            Free (this.m_ICoreInputViewOcclusion);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewOcclusion

   function get_OccludingRect
   (
      this : in out CoreInputViewOcclusion
   )
   return WinRt.Windows.Foundation.Rect is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.Rect;
   begin
      Hr := this.m_ICoreInputViewOcclusion.all.get_OccludingRect (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_OcclusionKind
   (
      this : in out CoreInputViewOcclusion
   )
   return WinRt.Windows.UI.ViewManagement.Core.CoreInputViewOcclusionKind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.ViewManagement.Core.CoreInputViewOcclusionKind;
   begin
      Hr := this.m_ICoreInputViewOcclusion.all.get_OcclusionKind (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewOcclusionsChangedEventArgs

   procedure Initialize (this : in out CoreInputViewOcclusionsChangedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreInputViewOcclusionsChangedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreInputViewOcclusionsChangedEventArgs, ICoreInputViewOcclusionsChangedEventArgs_Ptr);
   begin
      if this.m_ICoreInputViewOcclusionsChangedEventArgs /= null then
         if this.m_ICoreInputViewOcclusionsChangedEventArgs.all /= null then
            RefCount := this.m_ICoreInputViewOcclusionsChangedEventArgs.all.Release;
            Free (this.m_ICoreInputViewOcclusionsChangedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewOcclusionsChangedEventArgs

   function get_Occlusions
   (
      this : in out CoreInputViewOcclusionsChangedEventArgs
   )
   return IVectorView_ICoreInputViewOcclusion.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVectorView_ICoreInputViewOcclusion.Kind;
   begin
      Hr := this.m_ICoreInputViewOcclusionsChangedEventArgs.all.get_Occlusions (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVectorView_ICoreInputViewOcclusion (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_Handled
   (
      this : in out CoreInputViewOcclusionsChangedEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreInputViewOcclusionsChangedEventArgs.all.get_Handled (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Handled
   (
      this : in out CoreInputViewOcclusionsChangedEventArgs;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreInputViewOcclusionsChangedEventArgs.all.put_Handled (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewShowingEventArgs

   procedure Initialize (this : in out CoreInputViewShowingEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreInputViewShowingEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreInputViewShowingEventArgs, ICoreInputViewShowingEventArgs_Ptr);
   begin
      if this.m_ICoreInputViewShowingEventArgs /= null then
         if this.m_ICoreInputViewShowingEventArgs.all /= null then
            RefCount := this.m_ICoreInputViewShowingEventArgs.all.Release;
            Free (this.m_ICoreInputViewShowingEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewShowingEventArgs

   function TryCancel
   (
      this : in out CoreInputViewShowingEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreInputViewShowingEventArgs.all.TryCancel (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewTransferringXYFocusEventArgs

   procedure Initialize (this : in out CoreInputViewTransferringXYFocusEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out CoreInputViewTransferringXYFocusEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICoreInputViewTransferringXYFocusEventArgs, ICoreInputViewTransferringXYFocusEventArgs_Ptr);
   begin
      if this.m_ICoreInputViewTransferringXYFocusEventArgs /= null then
         if this.m_ICoreInputViewTransferringXYFocusEventArgs.all /= null then
            RefCount := this.m_ICoreInputViewTransferringXYFocusEventArgs.all.Release;
            Free (this.m_ICoreInputViewTransferringXYFocusEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewTransferringXYFocusEventArgs

   function get_Origin
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs
   )
   return WinRt.Windows.Foundation.Rect is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.Rect;
   begin
      Hr := this.m_ICoreInputViewTransferringXYFocusEventArgs.all.get_Origin (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Direction
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs
   )
   return WinRt.Windows.UI.ViewManagement.Core.CoreInputViewXYFocusTransferDirection is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.ViewManagement.Core.CoreInputViewXYFocusTransferDirection;
   begin
      Hr := this.m_ICoreInputViewTransferringXYFocusEventArgs.all.get_Direction (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_TransferHandled
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreInputViewTransferringXYFocusEventArgs.all.put_TransferHandled (value);
   end;

   function get_TransferHandled
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreInputViewTransferringXYFocusEventArgs.all.get_TransferHandled (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_KeepPrimaryViewVisible
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICoreInputViewTransferringXYFocusEventArgs.all.put_KeepPrimaryViewVisible (value);
   end;

   function get_KeepPrimaryViewVisible
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_ICoreInputViewTransferringXYFocusEventArgs.all.get_KeepPrimaryViewVisible (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for UISettingsController

   procedure Initialize (this : in out UISettingsController) is
   begin
      null;
   end;

   procedure Finalize (this : in out UISettingsController) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IUISettingsController, IUISettingsController_Ptr);
   begin
      if this.m_IUISettingsController /= null then
         if this.m_IUISettingsController.all /= null then
            RefCount := this.m_IUISettingsController.all.Release;
            Free (this.m_IUISettingsController);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for UISettingsController

   function RequestDefaultAsync
   return WinRt.Windows.UI.ViewManagement.Core.UISettingsController is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.UI.ViewManagement.Core.UISettingsController");
      m_Factory        : access WinRt.Windows.UI.ViewManagement.Core.IUISettingsControllerStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_UISettingsController.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_UISettingsController.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.UI.ViewManagement.Core.IUISettingsController;
      m_IID            : aliased WinRt.IID := (3157349317, 22736, 23307, (169, 165, 27, 124, 194, 250, 239, 95 )); -- Windows.UI.ViewManagement.Core.UISettingsController;
      m_HandlerIID     : aliased WinRt.IID := (2296227179, 57281, 20837, (172, 19, 252, 152, 104, 187, 74, 183 ));
      m_Handler        : AsyncOperationCompletedHandler_UISettingsController.Kind := new AsyncOperationCompletedHandler_UISettingsController.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_UISettingsController.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_UISettingsController.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_UISettingsController.Kind_Delegate, AsyncOperationCompletedHandler_UISettingsController.Kind);

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
      return RetVal : WinRt.Windows.UI.ViewManagement.Core.UISettingsController do
         Hr := RoGetActivationFactory (m_hString, IID_IUISettingsControllerStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.RequestDefaultAsync (m_ComRetVal'Access);
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
                     Retval.m_IUISettingsController := new Windows.UI.ViewManagement.Core.IUISettingsController;
                     Retval.m_IUISettingsController.all := m_RetVal;
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
   -- Implemented Interfaces for UISettingsController

   procedure SetAdvancedEffectsEnabled
   (
      this : in out UISettingsController;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IUISettingsController.all.SetAdvancedEffectsEnabled (value);
   end;

   procedure SetAnimationsEnabled
   (
      this : in out UISettingsController;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IUISettingsController.all.SetAnimationsEnabled (value);
   end;

   procedure SetAutoHideScrollBars
   (
      this : in out UISettingsController;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IUISettingsController.all.SetAutoHideScrollBars (value);
   end;

   procedure SetMessageDuration
   (
      this : in out UISettingsController;
      value : WinRt.UInt32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IUISettingsController.all.SetMessageDuration (value);
   end;

   procedure SetTextScaleFactor
   (
      this : in out UISettingsController;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IUISettingsController.all.SetTextScaleFactor (value);
   end;

end;