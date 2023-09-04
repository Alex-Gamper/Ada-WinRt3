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
with WinRt.Windows.Foundation.Numerics;
limited with WinRt.Windows.Storage.Streams;
limited with WinRt.Windows.System;
limited with WinRt.Windows.UI;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.Lights is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ILamp_Interface is interface and WinRt.IInspectable_Interface;
   type ILamp is access ILamp_Interface'Class;
   type ILamp_Ptr is access all ILamp;

   type ILampArray_Interface is interface and WinRt.IInspectable_Interface;
   type ILampArray is access ILampArray_Interface'Class;
   type ILampArray_Ptr is access all ILampArray;

   type ILampArrayStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ILampArrayStatics is access ILampArrayStatics_Interface'Class;

   type ILampAvailabilityChangedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type ILampAvailabilityChangedEventArgs is access ILampAvailabilityChangedEventArgs_Interface'Class;
   type ILampAvailabilityChangedEventArgs_Ptr is access all ILampAvailabilityChangedEventArgs;

   type ILampInfo_Interface is interface and WinRt.IInspectable_Interface;
   type ILampInfo is access ILampInfo_Interface'Class;
   type ILampInfo_Ptr is access all ILampInfo;

   type ILampStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ILampStatics is access ILampStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type Lamp is new Ada.Finalization.Limited_Controlled with
      record
         m_ILamp : access Windows.Devices.Lights.ILamp;
      end record;
   type Lamp_Ptr is access all Lamp;

   type LampArray is new Ada.Finalization.Limited_Controlled with
      record
         m_ILampArray : access Windows.Devices.Lights.ILampArray;
      end record;
   type LampArray_Ptr is access all LampArray;

   type LampAvailabilityChangedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_ILampAvailabilityChangedEventArgs : access Windows.Devices.Lights.ILampAvailabilityChangedEventArgs;
      end record;
   type LampAvailabilityChangedEventArgs_Ptr is access all LampAvailabilityChangedEventArgs;

   type LampInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_ILampInfo : access Windows.Devices.Lights.ILampInfo;
      end record;
   type LampInfo_Ptr is access all LampInfo;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type LampArrayKind is (
      Undefined_e,
      Keyboard_e,
      Mouse_e,
      GameController_e,
      Peripheral_e,
      Scene_e,
      Notification_e,
      Chassis_e,
      Wearable_e,
      Furniture_e,
      Art_e
   );
   for LampArrayKind use (
      Undefined_e => 0,
      Keyboard_e => 1,
      Mouse_e => 2,
      GameController_e => 3,
      Peripheral_e => 4,
      Scene_e => 5,
      Notification_e => 6,
      Chassis_e => 7,
      Wearable_e => 8,
      Furniture_e => 9,
      Art_e => 10
   );
   type LampArrayKind_Ptr is access all LampArrayKind;

   type LampPurposes is (
      Undefined_e,
      Control_e,
      Accent_e,
      Branding_e,
      Status_e,
      Illumination_e,
      Presentation_e
   );
   for LampPurposes use (
      Undefined_e => 0,
      Control_e => 1,
      Accent_e => 2,
      Branding_e => 4,
      Status_e => 8,
      Illumination_e => 16,
      Presentation_e => 32
   );
   type LampPurposes_Ptr is access all LampPurposes;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ILamp is interface and WinRt.IInspectable;

      function get_DeviceId
      (
         this : access ILamp_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_IsEnabled
      (
         this : access ILamp_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_IsEnabled
      (
         this : access ILamp_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_BrightnessLevel
      (
         this : access ILamp_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function put_BrightnessLevel
      (
         this : access ILamp_Interface;
         value : WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function get_IsColorSettable
      (
         this : access ILamp_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_Color
      (
         this : access ILamp_Interface;
         RetVal : access Windows.UI.Color
      )
      return WinRt.Hresult is abstract;

      function put_Color
      (
         this : access ILamp_Interface;
         value : Windows.UI.Color
      )
      return WinRt.Hresult is abstract;

      function add_AvailabilityChanged
      (
         this : access ILamp_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_AvailabilityChanged
      (
         this : access ILamp_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_ILamp : aliased WinRt.IID := (75324314, 59973, 19243, (177, 162, 20, 223, 240, 11, 222, 123 ));

   -----------------------------------------------------------------------------
   -- type ILampArray is interface and WinRt.IInspectable;

      function get_DeviceId
      (
         this : access ILampArray_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_HardwareVendorId
      (
         this : access ILampArray_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_HardwareProductId
      (
         this : access ILampArray_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_HardwareVersion
      (
         this : access ILampArray_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_LampArrayKind
      (
         this : access ILampArray_Interface;
         RetVal : access Windows.Devices.Lights.LampArrayKind
      )
      return WinRt.Hresult is abstract;

      function get_LampCount
      (
         this : access ILampArray_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_MinUpdateInterval
      (
         this : access ILampArray_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function get_BoundingBox
      (
         this : access ILampArray_Interface;
         RetVal : access Windows.Foundation.Numerics.Vector3
      )
      return WinRt.Hresult is abstract;

      function get_IsEnabled
      (
         this : access ILampArray_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_IsEnabled
      (
         this : access ILampArray_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_BrightnessLevel
      (
         this : access ILampArray_Interface;
         RetVal : access WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function put_BrightnessLevel
      (
         this : access ILampArray_Interface;
         value : WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function get_IsConnected
      (
         this : access ILampArray_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_SupportsVirtualKeys
      (
         this : access ILampArray_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function GetLampInfo
      (
         this : access ILampArray_Interface;
         lampIndex : WinRt.Int32;
         RetVal : access Windows.Devices.Lights.ILampInfo
      )
      return WinRt.Hresult is abstract;

      function GetIndicesForKey
      (
         this : access ILampArray_Interface;
         key : Windows.System.VirtualKey;
         RetValSize : access WinRt.UInt32;
         RetVal : access WinRt.Int32_Ptr
      )
      return WinRt.Hresult is abstract;

      function GetIndicesForPurposes
      (
         this : access ILampArray_Interface;
         purposes : Windows.Devices.Lights.LampPurposes;
         RetValSize : access WinRt.UInt32;
         RetVal : access WinRt.Int32_Ptr
      )
      return WinRt.Hresult is abstract;

      function SetColor
      (
         this : access ILampArray_Interface;
         desiredColor : Windows.UI.Color
      )
      return WinRt.Hresult is abstract;

      function SetColorForIndex
      (
         this : access ILampArray_Interface;
         lampIndex : WinRt.Int32;
         desiredColor : Windows.UI.Color
      )
      return WinRt.Hresult is abstract;

      function SetSingleColorForIndices
      (
         this : access ILampArray_Interface;
         desiredColor : Windows.UI.Color;
         lampIndexesSize : WinRt.UInt32;
         lampIndexes : WinRt.Int32_Ptr
      )
      return WinRt.Hresult is abstract;

      function SetColorsForIndices
      (
         this : access ILampArray_Interface;
         desiredColorsSize : WinRt.UInt32;
         desiredColors : Windows.UI.Color_Ptr;
         lampIndexesSize : WinRt.UInt32;
         lampIndexes : WinRt.Int32_Ptr
      )
      return WinRt.Hresult is abstract;

      function SetColorsForKey
      (
         this : access ILampArray_Interface;
         desiredColor : Windows.UI.Color;
         key : Windows.System.VirtualKey
      )
      return WinRt.Hresult is abstract;

      function SetColorsForKeys
      (
         this : access ILampArray_Interface;
         desiredColorsSize : WinRt.UInt32;
         desiredColors : Windows.UI.Color_Ptr;
         keysSize : WinRt.UInt32;
         keys : Windows.System.VirtualKey_Ptr
      )
      return WinRt.Hresult is abstract;

      function SetColorsForPurposes
      (
         this : access ILampArray_Interface;
         desiredColor : Windows.UI.Color;
         purposes : Windows.Devices.Lights.LampPurposes
      )
      return WinRt.Hresult is abstract;

      function SendMessageAsync
      (
         this : access ILampArray_Interface;
         messageId : WinRt.Int32;
         message : Windows.Storage.Streams.IBuffer;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function RequestMessageAsync
      (
         this : access ILampArray_Interface;
         messageId : WinRt.Int32;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ILampArray : aliased WinRt.IID := (2060359559, 51360, 20117, (161, 224, 213, 134, 118, 83, 134, 73 ));

   -----------------------------------------------------------------------------
   -- type ILampArrayStatics is interface and WinRt.IInspectable;

      function GetDeviceSelector
      (
         this : access ILampArrayStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access ILampArrayStatics_Interface;
         deviceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ILampArrayStatics : aliased WinRt.IID := (2075707789, 24513, 17709, (187, 31, 74, 212, 16, 211, 152, 255 ));

   -----------------------------------------------------------------------------
   -- type ILampAvailabilityChangedEventArgs is interface and WinRt.IInspectable;

      function get_IsAvailable
      (
         this : access ILampAvailabilityChangedEventArgs_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ILampAvailabilityChangedEventArgs : aliased WinRt.IID := (1332624877, 1954, 18845, (146, 96, 103, 227, 4, 83, 43, 164 ));

   -----------------------------------------------------------------------------
   -- type ILampInfo is interface and WinRt.IInspectable;

      function get_Index
      (
         this : access ILampInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_Purposes
      (
         this : access ILampInfo_Interface;
         RetVal : access Windows.Devices.Lights.LampPurposes
      )
      return WinRt.Hresult is abstract;

      function get_Position
      (
         this : access ILampInfo_Interface;
         RetVal : access Windows.Foundation.Numerics.Vector3
      )
      return WinRt.Hresult is abstract;

      function get_RedLevelCount
      (
         this : access ILampInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_GreenLevelCount
      (
         this : access ILampInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_BlueLevelCount
      (
         this : access ILampInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_GainLevelCount
      (
         this : access ILampInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_FixedColor
      (
         this : access ILampInfo_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetNearestSupportedColor
      (
         this : access ILampInfo_Interface;
         desiredColor : Windows.UI.Color;
         RetVal : access Windows.UI.Color
      )
      return WinRt.Hresult is abstract;

      function get_UpdateLatency
      (
         this : access ILampInfo_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      IID_ILampInfo : aliased WinRt.IID := (817582620, 2767, 18906, (140, 16, 21, 11, 156, 246, 39, 19 ));

   -----------------------------------------------------------------------------
   -- type ILampStatics is interface and WinRt.IInspectable;

      function GetDeviceSelector
      (
         this : access ILampStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access ILampStatics_Interface;
         deviceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetDefaultAsync
      (
         this : access ILampStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ILampStatics : aliased WinRt.IID := (2820817260, 34949, 16414, (184, 33, 142, 139, 56, 168, 232, 236 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for Lamp

   overriding procedure Initialize (this : in out Lamp);
   overriding procedure Finalize (this : in out Lamp);

   -----------------------------------------------------------------------------
   -- Static Interfaces for Lamp

   function GetDeviceSelector
   return WinRt.WString;

   function FromIdAsync
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Lights.Lamp;

   function GetDefaultAsync
   return WinRt.Windows.Devices.Lights.Lamp;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for Lamp

   function get_DeviceId
   (
      this : in out Lamp
   )
   return WinRt.WString;

   function get_IsEnabled
   (
      this : in out Lamp
   )
   return WinRt.Boolean;

   procedure put_IsEnabled
   (
      this : in out Lamp;
      value : WinRt.Boolean
   );

   function get_BrightnessLevel
   (
      this : in out Lamp
   )
   return WinRt.Single;

   procedure put_BrightnessLevel
   (
      this : in out Lamp;
      value : WinRt.Single
   );

   function get_IsColorSettable
   (
      this : in out Lamp
   )
   return WinRt.Boolean;

   function get_Color
   (
      this : in out Lamp
   )
   return WinRt.Windows.UI.Color;

   procedure put_Color
   (
      this : in out Lamp;
      value : Windows.UI.Color
   );

   function add_AvailabilityChanged
   (
      this : in out Lamp;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_AvailabilityChanged
   (
      this : in out Lamp;
      token : Windows.Foundation.EventRegistrationToken
   );

   procedure Close
   (
      this : in out Lamp
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for LampArray

   overriding procedure Initialize (this : in out LampArray);
   overriding procedure Finalize (this : in out LampArray);

   -----------------------------------------------------------------------------
   -- Static Interfaces for LampArray

   function GetDeviceSelector_LampArray
   return WinRt.WString;

   function FromIdAsync_LampArray
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Lights.LampArray;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for LampArray

   function get_DeviceId
   (
      this : in out LampArray
   )
   return WinRt.WString;

   function get_HardwareVendorId
   (
      this : in out LampArray
   )
   return WinRt.UInt16;

   function get_HardwareProductId
   (
      this : in out LampArray
   )
   return WinRt.UInt16;

   function get_HardwareVersion
   (
      this : in out LampArray
   )
   return WinRt.UInt16;

   function get_LampArrayKind
   (
      this : in out LampArray
   )
   return WinRt.Windows.Devices.Lights.LampArrayKind;

   function get_LampCount
   (
      this : in out LampArray
   )
   return WinRt.Int32;

   function get_MinUpdateInterval
   (
      this : in out LampArray
   )
   return WinRt.Windows.Foundation.TimeSpan;

   function get_BoundingBox
   (
      this : in out LampArray
   )
   return WinRt.Windows.Foundation.Numerics.Vector3;

   function get_IsEnabled
   (
      this : in out LampArray
   )
   return WinRt.Boolean;

   procedure put_IsEnabled
   (
      this : in out LampArray;
      value : WinRt.Boolean
   );

   function get_BrightnessLevel
   (
      this : in out LampArray
   )
   return WinRt.Double;

   procedure put_BrightnessLevel
   (
      this : in out LampArray;
      value : WinRt.Double
   );

   function get_IsConnected
   (
      this : in out LampArray
   )
   return WinRt.Boolean;

   function get_SupportsVirtualKeys
   (
      this : in out LampArray
   )
   return WinRt.Boolean;

   function GetLampInfo
   (
      this : in out LampArray;
      lampIndex : WinRt.Int32
   )
   return WinRt.Windows.Devices.Lights.LampInfo'Class;

   function GetIndicesForKey
   (
      this : in out LampArray;
      key : Windows.System.VirtualKey
   )
   return WinRt.Int32_Array;

   function GetIndicesForPurposes
   (
      this : in out LampArray;
      purposes : Windows.Devices.Lights.LampPurposes
   )
   return WinRt.Int32_Array;

   procedure SetColor
   (
      this : in out LampArray;
      desiredColor : Windows.UI.Color
   );

   procedure SetColorForIndex
   (
      this : in out LampArray;
      lampIndex : WinRt.Int32;
      desiredColor : Windows.UI.Color
   );

   procedure SetSingleColorForIndices
   (
      this : in out LampArray;
      desiredColor : Windows.UI.Color;
      lampIndexes : WinRt.Int32_Array
   );

   procedure SetColorsForIndices
   (
      this : in out LampArray;
      desiredColors : Windows.UI.Color_Array;
      lampIndexes : WinRt.Int32_Array
   );

   procedure SetColorsForKey
   (
      this : in out LampArray;
      desiredColor : Windows.UI.Color;
      key : Windows.System.VirtualKey
   );

   procedure SetColorsForKeys
   (
      this : in out LampArray;
      desiredColors : Windows.UI.Color_Array;
      keys : Windows.System.VirtualKey_Array
   );

   procedure SetColorsForPurposes
   (
      this : in out LampArray;
      desiredColor : Windows.UI.Color;
      purposes : Windows.Devices.Lights.LampPurposes
   );

   procedure SendMessageAsync
   (
      this : in out LampArray;
      messageId : WinRt.Int32;
      message : Windows.Storage.Streams.IBuffer
   );

   function RequestMessageAsync
   (
      this : in out LampArray;
      messageId : WinRt.Int32
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for LampAvailabilityChangedEventArgs

   overriding procedure Initialize (this : in out LampAvailabilityChangedEventArgs);
   overriding procedure Finalize (this : in out LampAvailabilityChangedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for LampAvailabilityChangedEventArgs

   function get_IsAvailable
   (
      this : in out LampAvailabilityChangedEventArgs
   )
   return WinRt.Boolean;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for LampInfo

   overriding procedure Initialize (this : in out LampInfo);
   overriding procedure Finalize (this : in out LampInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for LampInfo

   function get_Index
   (
      this : in out LampInfo
   )
   return WinRt.Int32;

   function get_Purposes
   (
      this : in out LampInfo
   )
   return WinRt.Windows.Devices.Lights.LampPurposes;

   function get_Position
   (
      this : in out LampInfo
   )
   return WinRt.Windows.Foundation.Numerics.Vector3;

   function get_RedLevelCount
   (
      this : in out LampInfo
   )
   return WinRt.Int32;

   function get_GreenLevelCount
   (
      this : in out LampInfo
   )
   return WinRt.Int32;

   function get_BlueLevelCount
   (
      this : in out LampInfo
   )
   return WinRt.Int32;

   function get_GainLevelCount
   (
      this : in out LampInfo
   )
   return WinRt.Int32;

   function get_FixedColor
   (
      this : in out LampInfo
   )
   return WinRt.GenericObject;

   function GetNearestSupportedColor
   (
      this : in out LampInfo;
      desiredColor : Windows.UI.Color
   )
   return WinRt.Windows.UI.Color;

   function get_UpdateLatency
   (
      this : in out LampInfo
   )
   return WinRt.Windows.Foundation.TimeSpan;

end;
