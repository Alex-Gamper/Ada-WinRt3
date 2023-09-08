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
package WinRt.Windows.Devices.Haptics is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IKnownSimpleHapticsControllerWaveformsStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IKnownSimpleHapticsControllerWaveformsStatics is access all IKnownSimpleHapticsControllerWaveformsStatics_Interface'Class;

   type ISimpleHapticsController_Interface is interface and WinRt.IInspectable_Interface;
   type ISimpleHapticsController is access all ISimpleHapticsController_Interface'Class;
   type ISimpleHapticsController_Ptr is access all ISimpleHapticsController;

   type ISimpleHapticsControllerFeedback_Interface is interface and WinRt.IInspectable_Interface;
   type ISimpleHapticsControllerFeedback is access all ISimpleHapticsControllerFeedback_Interface'Class;
   type ISimpleHapticsControllerFeedback_Ptr is access all ISimpleHapticsControllerFeedback;

   type IVibrationDevice_Interface is interface and WinRt.IInspectable_Interface;
   type IVibrationDevice is access all IVibrationDevice_Interface'Class;
   type IVibrationDevice_Ptr is access all IVibrationDevice;

   type IVibrationDeviceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IVibrationDeviceStatics is access all IVibrationDeviceStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type SimpleHapticsController is new Ada.Finalization.Limited_Controlled with
      record
         m_ISimpleHapticsController : access Windows.Devices.Haptics.ISimpleHapticsController;
      end record;
   type SimpleHapticsController_Ptr is access all SimpleHapticsController;

   type SimpleHapticsControllerFeedback is new Ada.Finalization.Limited_Controlled with
      record
         m_ISimpleHapticsControllerFeedback : access Windows.Devices.Haptics.ISimpleHapticsControllerFeedback;
      end record;
   type SimpleHapticsControllerFeedback_Ptr is access all SimpleHapticsControllerFeedback;

   type VibrationDevice is new Ada.Finalization.Limited_Controlled with
      record
         m_IVibrationDevice : access Windows.Devices.Haptics.IVibrationDevice;
      end record;
   type VibrationDevice_Ptr is access all VibrationDevice;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type VibrationAccessStatus is (
      Allowed_e,
      DeniedByUser_e,
      DeniedBySystem_e,
      DeniedByEnergySaver_e
   );
   for VibrationAccessStatus use (
      Allowed_e => 0,
      DeniedByUser_e => 1,
      DeniedBySystem_e => 2,
      DeniedByEnergySaver_e => 3
   );
   type VibrationAccessStatus_Ptr is access all VibrationAccessStatus;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_ISimpleHapticsControllerFeedback is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.Devices.Haptics.ISimpleHapticsControllerFeedback);
   IID_IVectorView_ISimpleHapticsControllerFeedback : aliased WinRt.IID := (2338135694, 16047, 21727, (134, 230, 231, 156, 59, 95, 202, 27 ));
   function QInterface_IVectorView_ISimpleHapticsControllerFeedback is new Generic_QueryInterface (GenericObject_Interface, IVectorView_ISimpleHapticsControllerFeedback.Kind, IID_IVectorView_ISimpleHapticsControllerFeedback'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IKnownSimpleHapticsControllerWaveformsStatics is interface and WinRt.IInspectable;

      function get_Click
      (
         this : access IKnownSimpleHapticsControllerWaveformsStatics_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_BuzzContinuous
      (
         this : access IKnownSimpleHapticsControllerWaveformsStatics_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_RumbleContinuous
      (
         this : access IKnownSimpleHapticsControllerWaveformsStatics_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_Press
      (
         this : access IKnownSimpleHapticsControllerWaveformsStatics_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_Release
      (
         this : access IKnownSimpleHapticsControllerWaveformsStatics_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      IID_IKnownSimpleHapticsControllerWaveformsStatics : aliased WinRt.IID := (1029144311, 19694, 4582, (181, 53, 0, 27, 220, 6, 171, 59 ));

   -----------------------------------------------------------------------------
   -- type ISimpleHapticsController is interface and WinRt.IInspectable;

      function get_Id
      (
         this : access ISimpleHapticsController_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_SupportedFeedback
      (
         this : access ISimpleHapticsController_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_IsIntensitySupported
      (
         this : access ISimpleHapticsController_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsPlayCountSupported
      (
         this : access ISimpleHapticsController_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsPlayDurationSupported
      (
         this : access ISimpleHapticsController_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsReplayPauseIntervalSupported
      (
         this : access ISimpleHapticsController_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function StopFeedback
      (
         this : access ISimpleHapticsController_Interface
      )
      return WinRt.Hresult is abstract;

      function SendHapticFeedback
      (
         this : access ISimpleHapticsController_Interface;
         feedback : Windows.Devices.Haptics.ISimpleHapticsControllerFeedback
      )
      return WinRt.Hresult is abstract;

      function SendHapticFeedback
      (
         this : access ISimpleHapticsController_Interface;
         feedback : Windows.Devices.Haptics.ISimpleHapticsControllerFeedback;
         intensity : WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function SendHapticFeedbackForDuration
      (
         this : access ISimpleHapticsController_Interface;
         feedback : Windows.Devices.Haptics.ISimpleHapticsControllerFeedback;
         intensity : WinRt.Double;
         playDuration : Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function SendHapticFeedbackForPlayCount
      (
         this : access ISimpleHapticsController_Interface;
         feedback : Windows.Devices.Haptics.ISimpleHapticsControllerFeedback;
         intensity : WinRt.Double;
         playCount : WinRt.Int32;
         replayPauseInterval : Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      IID_ISimpleHapticsController : aliased WinRt.IID := (1029144313, 19694, 4582, (181, 53, 0, 27, 220, 6, 171, 59 ));

   -----------------------------------------------------------------------------
   -- type ISimpleHapticsControllerFeedback is interface and WinRt.IInspectable;

      function get_Waveform
      (
         this : access ISimpleHapticsControllerFeedback_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_Duration
      (
         this : access ISimpleHapticsControllerFeedback_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      IID_ISimpleHapticsControllerFeedback : aliased WinRt.IID := (1029144312, 19694, 4582, (181, 53, 0, 27, 220, 6, 171, 59 ));

   -----------------------------------------------------------------------------
   -- type IVibrationDevice is interface and WinRt.IInspectable;

      function get_Id
      (
         this : access IVibrationDevice_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_SimpleHapticsController
      (
         this : access IVibrationDevice_Interface;
         RetVal : access Windows.Devices.Haptics.ISimpleHapticsController
      )
      return WinRt.Hresult is abstract;

      IID_IVibrationDevice : aliased WinRt.IID := (1089608254, 34884, 18431, (179, 18, 6, 24, 90, 56, 68, 218 ));

   -----------------------------------------------------------------------------
   -- type IVibrationDeviceStatics is interface and WinRt.IInspectable;

      function RequestAccessAsync
      (
         this : access IVibrationDeviceStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelector
      (
         this : access IVibrationDeviceStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access IVibrationDeviceStatics_Interface;
         deviceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetDefaultAsync
      (
         this : access IVibrationDeviceStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function FindAllAsync
      (
         this : access IVibrationDeviceStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IVibrationDeviceStatics : aliased WinRt.IID := (1407380973, 8848, 19145, (142, 179, 26, 132, 18, 46, 183, 28 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package KnownSimpleHapticsControllerWaveforms is

      function get_Click
      return WinRt.UInt16;

      function get_BuzzContinuous
      return WinRt.UInt16;

      function get_RumbleContinuous
      return WinRt.UInt16;

      function get_Press
      return WinRt.UInt16;

      function get_Release
      return WinRt.UInt16;

   end KnownSimpleHapticsControllerWaveforms;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SimpleHapticsController

   overriding procedure Initialize (this : in out SimpleHapticsController);
   overriding procedure Finalize (this : in out SimpleHapticsController);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SimpleHapticsController

   function get_Id
   (
      this : in out SimpleHapticsController
   )
   return WinRt.WString;

   function get_SupportedFeedback
   (
      this : in out SimpleHapticsController
   )
   return IVectorView_ISimpleHapticsControllerFeedback.Kind;

   function get_IsIntensitySupported
   (
      this : in out SimpleHapticsController
   )
   return WinRt.Boolean;

   function get_IsPlayCountSupported
   (
      this : in out SimpleHapticsController
   )
   return WinRt.Boolean;

   function get_IsPlayDurationSupported
   (
      this : in out SimpleHapticsController
   )
   return WinRt.Boolean;

   function get_IsReplayPauseIntervalSupported
   (
      this : in out SimpleHapticsController
   )
   return WinRt.Boolean;

   procedure StopFeedback
   (
      this : in out SimpleHapticsController
   );

   procedure SendHapticFeedback
   (
      this : in out SimpleHapticsController;
      feedback : Windows.Devices.Haptics.SimpleHapticsControllerFeedback'Class
   );

   procedure SendHapticFeedback
   (
      this : in out SimpleHapticsController;
      feedback : Windows.Devices.Haptics.SimpleHapticsControllerFeedback'Class;
      intensity : WinRt.Double
   );

   procedure SendHapticFeedbackForDuration
   (
      this : in out SimpleHapticsController;
      feedback : Windows.Devices.Haptics.SimpleHapticsControllerFeedback'Class;
      intensity : WinRt.Double;
      playDuration : Windows.Foundation.TimeSpan
   );

   procedure SendHapticFeedbackForPlayCount
   (
      this : in out SimpleHapticsController;
      feedback : Windows.Devices.Haptics.SimpleHapticsControllerFeedback'Class;
      intensity : WinRt.Double;
      playCount : WinRt.Int32;
      replayPauseInterval : Windows.Foundation.TimeSpan
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SimpleHapticsControllerFeedback

   overriding procedure Initialize (this : in out SimpleHapticsControllerFeedback);
   overriding procedure Finalize (this : in out SimpleHapticsControllerFeedback);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SimpleHapticsControllerFeedback

   function get_Waveform
   (
      this : in out SimpleHapticsControllerFeedback
   )
   return WinRt.UInt16;

   function get_Duration
   (
      this : in out SimpleHapticsControllerFeedback
   )
   return WinRt.Windows.Foundation.TimeSpan;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for VibrationDevice

   overriding procedure Initialize (this : in out VibrationDevice);
   overriding procedure Finalize (this : in out VibrationDevice);

   -----------------------------------------------------------------------------
   -- Static Interfaces for VibrationDevice

   function RequestAccessAsync
   return WinRt.Windows.Devices.Haptics.VibrationAccessStatus;

   function GetDeviceSelector
   return WinRt.WString;

   function FromIdAsync
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Haptics.VibrationDevice;

   function GetDefaultAsync
   return WinRt.Windows.Devices.Haptics.VibrationDevice;

   function FindAllAsync
   return WinRt.GenericObject;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for VibrationDevice

   function get_Id
   (
      this : in out VibrationDevice
   )
   return WinRt.WString;

   function get_SimpleHapticsController
   (
      this : in out VibrationDevice
   )
   return WinRt.Windows.Devices.Haptics.SimpleHapticsController'Class;

end;
