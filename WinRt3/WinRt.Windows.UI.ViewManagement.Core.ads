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
with WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.UI.ViewManagement.Core is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ICoreInputView_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputView is access all ICoreInputView_Interface'Class;
   type ICoreInputView_Ptr is access all ICoreInputView;

   type ICoreInputView2_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputView2 is access all ICoreInputView2_Interface'Class;

   type ICoreInputView3_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputView3 is access all ICoreInputView3_Interface'Class;

   type ICoreInputView4_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputView4 is access all ICoreInputView4_Interface'Class;

   type ICoreInputViewHidingEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputViewHidingEventArgs is access all ICoreInputViewHidingEventArgs_Interface'Class;
   type ICoreInputViewHidingEventArgs_Ptr is access all ICoreInputViewHidingEventArgs;

   type ICoreInputViewOcclusion_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputViewOcclusion is access all ICoreInputViewOcclusion_Interface'Class;
   type ICoreInputViewOcclusion_Ptr is access all ICoreInputViewOcclusion;

   type ICoreInputViewOcclusionsChangedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputViewOcclusionsChangedEventArgs is access all ICoreInputViewOcclusionsChangedEventArgs_Interface'Class;
   type ICoreInputViewOcclusionsChangedEventArgs_Ptr is access all ICoreInputViewOcclusionsChangedEventArgs;

   type ICoreInputViewShowingEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputViewShowingEventArgs is access all ICoreInputViewShowingEventArgs_Interface'Class;
   type ICoreInputViewShowingEventArgs_Ptr is access all ICoreInputViewShowingEventArgs;

   type ICoreInputViewStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputViewStatics is access all ICoreInputViewStatics_Interface'Class;

   type ICoreInputViewStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputViewStatics2 is access all ICoreInputViewStatics2_Interface'Class;

   type ICoreInputViewTransferringXYFocusEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInputViewTransferringXYFocusEventArgs is access all ICoreInputViewTransferringXYFocusEventArgs_Interface'Class;
   type ICoreInputViewTransferringXYFocusEventArgs_Ptr is access all ICoreInputViewTransferringXYFocusEventArgs;

   type IUISettingsController_Interface is interface and WinRt.IInspectable_Interface;
   type IUISettingsController is access all IUISettingsController_Interface'Class;
   type IUISettingsController_Ptr is access all IUISettingsController;

   type IUISettingsControllerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IUISettingsControllerStatics is access all IUISettingsControllerStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type CoreInputView is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreInputView : access Windows.UI.ViewManagement.Core.ICoreInputView;
      end record;
   type CoreInputView_Ptr is access all CoreInputView;

   type CoreInputViewHidingEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreInputViewHidingEventArgs : access Windows.UI.ViewManagement.Core.ICoreInputViewHidingEventArgs;
      end record;
   type CoreInputViewHidingEventArgs_Ptr is access all CoreInputViewHidingEventArgs;

   type CoreInputViewOcclusion is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreInputViewOcclusion : access Windows.UI.ViewManagement.Core.ICoreInputViewOcclusion;
      end record;
   type CoreInputViewOcclusion_Ptr is access all CoreInputViewOcclusion;

   type CoreInputViewOcclusionsChangedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreInputViewOcclusionsChangedEventArgs : access Windows.UI.ViewManagement.Core.ICoreInputViewOcclusionsChangedEventArgs;
      end record;
   type CoreInputViewOcclusionsChangedEventArgs_Ptr is access all CoreInputViewOcclusionsChangedEventArgs;

   type CoreInputViewShowingEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreInputViewShowingEventArgs : access Windows.UI.ViewManagement.Core.ICoreInputViewShowingEventArgs;
      end record;
   type CoreInputViewShowingEventArgs_Ptr is access all CoreInputViewShowingEventArgs;

   type CoreInputViewTransferringXYFocusEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreInputViewTransferringXYFocusEventArgs : access Windows.UI.ViewManagement.Core.ICoreInputViewTransferringXYFocusEventArgs;
      end record;
   type CoreInputViewTransferringXYFocusEventArgs_Ptr is access all CoreInputViewTransferringXYFocusEventArgs;

   type UISettingsController is new Ada.Finalization.Limited_Controlled with
      record
         m_IUISettingsController : access Windows.UI.ViewManagement.Core.IUISettingsController;
      end record;
   type UISettingsController_Ptr is access all UISettingsController;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type CoreInputViewKind is (
      Default_e,
      Keyboard_e,
      Handwriting_e,
      Emoji_e,
      Symbols_e
   );
   for CoreInputViewKind use (
      Default_e => 0,
      Keyboard_e => 1,
      Handwriting_e => 2,
      Emoji_e => 3,
      Symbols_e => 4
   );
   type CoreInputViewKind_Ptr is access all CoreInputViewKind;

   type CoreInputViewOcclusionKind is (
      Docked_e,
      Floating_e,
      Overlay_e
   );
   for CoreInputViewOcclusionKind use (
      Docked_e => 0,
      Floating_e => 1,
      Overlay_e => 2
   );
   type CoreInputViewOcclusionKind_Ptr is access all CoreInputViewOcclusionKind;

   type CoreInputViewXYFocusTransferDirection is (
      Up_e,
      Right_e,
      Down_e,
      Left_e
   );
   for CoreInputViewXYFocusTransferDirection use (
      Up_e => 0,
      Right_e => 1,
      Down_e => 2,
      Left_e => 3
   );
   type CoreInputViewXYFocusTransferDirection_Ptr is access all CoreInputViewXYFocusTransferDirection;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_ICoreInputViewOcclusion is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.UI.ViewManagement.Core.ICoreInputViewOcclusion);
   IID_IVectorView_ICoreInputViewOcclusion : aliased WinRt.IID := (3339079890, 63890, 22612, (179, 239, 138, 163, 117, 202, 58, 176 ));
   function QInterface_IVectorView_ICoreInputViewOcclusion is new Generic_QueryInterface (GenericObject_Interface, IVectorView_ICoreInputViewOcclusion.Kind, IID_IVectorView_ICoreInputViewOcclusion'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ICoreInputView is interface and WinRt.IInspectable;

      function add_OcclusionsChanged
      (
         this : access ICoreInputView_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_OcclusionsChanged
      (
         this : access ICoreInputView_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function GetCoreInputViewOcclusions
      (
         this : access ICoreInputView_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function TryShowPrimaryView
      (
         this : access ICoreInputView_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function TryHidePrimaryView
      (
         this : access ICoreInputView_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputView : aliased WinRt.IID := (3346058618, 28673, 19506, (191, 148, 37, 193, 245, 84, 203, 241 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputView2 is interface and WinRt.IInspectable;

      function add_XYFocusTransferringFromPrimaryView
      (
         this : access ICoreInputView2_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_XYFocusTransferringFromPrimaryView
      (
         this : access ICoreInputView2_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_XYFocusTransferredToPrimaryView
      (
         this : access ICoreInputView2_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_XYFocusTransferredToPrimaryView
      (
         this : access ICoreInputView2_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function TryTransferXYFocusToPrimaryView
      (
         this : access ICoreInputView2_Interface;
         origin : Windows.Foundation.Rect;
         direction : Windows.UI.ViewManagement.Core.CoreInputViewXYFocusTransferDirection;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputView2 : aliased WinRt.IID := (248981185, 57498, 19176, (174, 223, 223, 164, 133, 125, 26, 1 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputView3 is interface and WinRt.IInspectable;

      function TryShow
      (
         this : access ICoreInputView3_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function TryShow
      (
         this : access ICoreInputView3_Interface;
         type_x : Windows.UI.ViewManagement.Core.CoreInputViewKind;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function TryHide
      (
         this : access ICoreInputView3_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputView3 : aliased WinRt.IID := (3163821651, 15033, 18505, (143, 88, 70, 231, 240, 53, 60, 252 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputView4 is interface and WinRt.IInspectable;

      function add_PrimaryViewShowing
      (
         this : access ICoreInputView4_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PrimaryViewShowing
      (
         this : access ICoreInputView4_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_PrimaryViewHiding
      (
         this : access ICoreInputView4_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PrimaryViewHiding
      (
         this : access ICoreInputView4_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputView4 : aliased WinRt.IID := (2646998, 55791, 22507, (140, 239, 119, 246, 206, 27, 126, 231 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputViewHidingEventArgs is interface and WinRt.IInspectable;

      function TryCancel
      (
         this : access ICoreInputViewHidingEventArgs_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputViewHidingEventArgs : aliased WinRt.IID := (3940173757, 47813, 21302, (132, 141, 65, 8, 53, 132, 218, 173 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputViewOcclusion is interface and WinRt.IInspectable;

      function get_OccludingRect
      (
         this : access ICoreInputViewOcclusion_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function get_OcclusionKind
      (
         this : access ICoreInputViewOcclusion_Interface;
         RetVal : access Windows.UI.ViewManagement.Core.CoreInputViewOcclusionKind
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputViewOcclusion : aliased WinRt.IID := (3426143750, 14437, 16759, (181, 245, 139, 101, 224, 185, 206, 132 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputViewOcclusionsChangedEventArgs is interface and WinRt.IInspectable;

      function get_Occlusions
      (
         this : access ICoreInputViewOcclusionsChangedEventArgs_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Handled
      (
         this : access ICoreInputViewOcclusionsChangedEventArgs_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_Handled
      (
         this : access ICoreInputViewOcclusionsChangedEventArgs_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputViewOcclusionsChangedEventArgs : aliased WinRt.IID := (3188729832, 46062, 19959, (149, 84, 137, 205, 198, 96, 130, 194 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputViewShowingEventArgs is interface and WinRt.IInspectable;

      function TryCancel
      (
         this : access ICoreInputViewShowingEventArgs_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputViewShowingEventArgs : aliased WinRt.IID := (3394381339, 64414, 23983, (169, 140, 38, 43, 139, 118, 175, 80 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputViewStatics is interface and WinRt.IInspectable;

      function GetForCurrentView
      (
         this : access ICoreInputViewStatics_Interface;
         RetVal : access Windows.UI.ViewManagement.Core.ICoreInputView
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputViewStatics : aliased WinRt.IID := (2107348941, 60862, 18895, (165, 79, 51, 125, 224, 82, 144, 127 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputViewStatics2 is interface and WinRt.IInspectable;

      function GetForUIContext
      (
         this : access ICoreInputViewStatics2_Interface;
         context : Windows.UI.IUIContext;
         RetVal : access Windows.UI.ViewManagement.Core.ICoreInputView
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputViewStatics2 : aliased WinRt.IID := (2126252130, 53321, 20050, (135, 176, 30, 144, 233, 140, 73, 237 ));

   -----------------------------------------------------------------------------
   -- type ICoreInputViewTransferringXYFocusEventArgs is interface and WinRt.IInspectable;

      function get_Origin
      (
         this : access ICoreInputViewTransferringXYFocusEventArgs_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function get_Direction
      (
         this : access ICoreInputViewTransferringXYFocusEventArgs_Interface;
         RetVal : access Windows.UI.ViewManagement.Core.CoreInputViewXYFocusTransferDirection
      )
      return WinRt.Hresult is abstract;

      function put_TransferHandled
      (
         this : access ICoreInputViewTransferringXYFocusEventArgs_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_TransferHandled
      (
         this : access ICoreInputViewTransferringXYFocusEventArgs_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_KeepPrimaryViewVisible
      (
         this : access ICoreInputViewTransferringXYFocusEventArgs_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_KeepPrimaryViewVisible
      (
         this : access ICoreInputViewTransferringXYFocusEventArgs_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInputViewTransferringXYFocusEventArgs : aliased WinRt.IID := (81663647, 47618, 18512, (139, 85, 216, 45, 3, 186, 109, 127 ));

   -----------------------------------------------------------------------------
   -- type IUISettingsController is interface and WinRt.IInspectable;

      function SetAdvancedEffectsEnabled
      (
         this : access IUISettingsController_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function SetAnimationsEnabled
      (
         this : access IUISettingsController_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function SetAutoHideScrollBars
      (
         this : access IUISettingsController_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function SetMessageDuration
      (
         this : access IUISettingsController_Interface;
         value : WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function SetTextScaleFactor
      (
         this : access IUISettingsController_Interface;
         value : WinRt.Double
      )
      return WinRt.Hresult is abstract;

      IID_IUISettingsController : aliased WinRt.IID := (2024086212, 5568, 23067, (167, 91, 172, 191, 156, 184, 187, 158 ));

   -----------------------------------------------------------------------------
   -- type IUISettingsControllerStatics is interface and WinRt.IInspectable;

      function RequestDefaultAsync
      (
         this : access IUISettingsControllerStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IUISettingsControllerStatics : aliased WinRt.IID := (3946604748, 49696, 22412, (129, 25, 125, 179, 36, 237, 38, 166 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputView

   overriding procedure Initialize (this : in out CoreInputView);
   overriding procedure Finalize (this : in out CoreInputView);

   -----------------------------------------------------------------------------
   -- Static Interfaces for CoreInputView

   function GetForCurrentView
   return WinRt.Windows.UI.ViewManagement.Core.CoreInputView;

   function GetForUIContext
   (
      context : Windows.UI.UIContext'Class
   )
   return WinRt.Windows.UI.ViewManagement.Core.CoreInputView;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputView

   function add_OcclusionsChanged
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_OcclusionsChanged
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   );

   function GetCoreInputViewOcclusions
   (
      this : in out CoreInputView
   )
   return IVectorView_ICoreInputViewOcclusion.Kind;

   function TryShowPrimaryView
   (
      this : in out CoreInputView
   )
   return WinRt.Boolean;

   function TryHidePrimaryView
   (
      this : in out CoreInputView
   )
   return WinRt.Boolean;

   function add_XYFocusTransferringFromPrimaryView
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_XYFocusTransferringFromPrimaryView
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_XYFocusTransferredToPrimaryView
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_XYFocusTransferredToPrimaryView
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   );

   function TryTransferXYFocusToPrimaryView
   (
      this : in out CoreInputView;
      origin : Windows.Foundation.Rect;
      direction : Windows.UI.ViewManagement.Core.CoreInputViewXYFocusTransferDirection
   )
   return WinRt.Boolean;

   function TryShow
   (
      this : in out CoreInputView
   )
   return WinRt.Boolean;

   function TryShow
   (
      this : in out CoreInputView;
      type_x : Windows.UI.ViewManagement.Core.CoreInputViewKind
   )
   return WinRt.Boolean;

   function TryHide
   (
      this : in out CoreInputView
   )
   return WinRt.Boolean;

   function add_PrimaryViewShowing
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PrimaryViewShowing
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_PrimaryViewHiding
   (
      this : in out CoreInputView;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PrimaryViewHiding
   (
      this : in out CoreInputView;
      token : Windows.Foundation.EventRegistrationToken
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewHidingEventArgs

   overriding procedure Initialize (this : in out CoreInputViewHidingEventArgs);
   overriding procedure Finalize (this : in out CoreInputViewHidingEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewHidingEventArgs

   function TryCancel
   (
      this : in out CoreInputViewHidingEventArgs
   )
   return WinRt.Boolean;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewOcclusion

   overriding procedure Initialize (this : in out CoreInputViewOcclusion);
   overriding procedure Finalize (this : in out CoreInputViewOcclusion);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewOcclusion

   function get_OccludingRect
   (
      this : in out CoreInputViewOcclusion
   )
   return WinRt.Windows.Foundation.Rect;

   function get_OcclusionKind
   (
      this : in out CoreInputViewOcclusion
   )
   return WinRt.Windows.UI.ViewManagement.Core.CoreInputViewOcclusionKind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewOcclusionsChangedEventArgs

   overriding procedure Initialize (this : in out CoreInputViewOcclusionsChangedEventArgs);
   overriding procedure Finalize (this : in out CoreInputViewOcclusionsChangedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewOcclusionsChangedEventArgs

   function get_Occlusions
   (
      this : in out CoreInputViewOcclusionsChangedEventArgs
   )
   return IVectorView_ICoreInputViewOcclusion.Kind;

   function get_Handled
   (
      this : in out CoreInputViewOcclusionsChangedEventArgs
   )
   return WinRt.Boolean;

   procedure put_Handled
   (
      this : in out CoreInputViewOcclusionsChangedEventArgs;
      value : WinRt.Boolean
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewShowingEventArgs

   overriding procedure Initialize (this : in out CoreInputViewShowingEventArgs);
   overriding procedure Finalize (this : in out CoreInputViewShowingEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewShowingEventArgs

   function TryCancel
   (
      this : in out CoreInputViewShowingEventArgs
   )
   return WinRt.Boolean;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInputViewTransferringXYFocusEventArgs

   overriding procedure Initialize (this : in out CoreInputViewTransferringXYFocusEventArgs);
   overriding procedure Finalize (this : in out CoreInputViewTransferringXYFocusEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInputViewTransferringXYFocusEventArgs

   function get_Origin
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs
   )
   return WinRt.Windows.Foundation.Rect;

   function get_Direction
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs
   )
   return WinRt.Windows.UI.ViewManagement.Core.CoreInputViewXYFocusTransferDirection;

   procedure put_TransferHandled
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs;
      value : WinRt.Boolean
   );

   function get_TransferHandled
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs
   )
   return WinRt.Boolean;

   procedure put_KeepPrimaryViewVisible
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs;
      value : WinRt.Boolean
   );

   function get_KeepPrimaryViewVisible
   (
      this : in out CoreInputViewTransferringXYFocusEventArgs
   )
   return WinRt.Boolean;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for UISettingsController

   overriding procedure Initialize (this : in out UISettingsController);
   overriding procedure Finalize (this : in out UISettingsController);

   -----------------------------------------------------------------------------
   -- Static Interfaces for UISettingsController

   function RequestDefaultAsync
   return WinRt.Windows.UI.ViewManagement.Core.UISettingsController;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for UISettingsController

   procedure SetAdvancedEffectsEnabled
   (
      this : in out UISettingsController;
      value : WinRt.Boolean
   );

   procedure SetAnimationsEnabled
   (
      this : in out UISettingsController;
      value : WinRt.Boolean
   );

   procedure SetAutoHideScrollBars
   (
      this : in out UISettingsController;
      value : WinRt.Boolean
   );

   procedure SetMessageDuration
   (
      this : in out UISettingsController;
      value : WinRt.UInt32
   );

   procedure SetTextScaleFactor
   (
      this : in out UISettingsController;
      value : WinRt.Double
   );

end;
