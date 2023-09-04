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
limited with WinRt.Windows.Devices.Enumeration;
with WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
limited with WinRt.Windows.Storage.Streams;
limited with WinRt.Windows.UI.Popups;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Media.DialProtocol is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IDialApp_Interface is interface and WinRt.IInspectable_Interface;
   type IDialApp is access IDialApp_Interface'Class;
   type IDialApp_Ptr is access all IDialApp;

   type IDialAppStateDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IDialAppStateDetails is access IDialAppStateDetails_Interface'Class;
   type IDialAppStateDetails_Ptr is access all IDialAppStateDetails;

   type IDialDevice_Interface is interface and WinRt.IInspectable_Interface;
   type IDialDevice is access IDialDevice_Interface'Class;
   type IDialDevice_Ptr is access all IDialDevice;

   type IDialDevice2_Interface is interface and WinRt.IInspectable_Interface;
   type IDialDevice2 is access IDialDevice2_Interface'Class;

   type IDialDevicePicker_Interface is interface and WinRt.IInspectable_Interface;
   type IDialDevicePicker is access IDialDevicePicker_Interface'Class;
   type IDialDevicePicker_Ptr is access all IDialDevicePicker;

   type IDialDevicePickerFilter_Interface is interface and WinRt.IInspectable_Interface;
   type IDialDevicePickerFilter is access IDialDevicePickerFilter_Interface'Class;
   type IDialDevicePickerFilter_Ptr is access all IDialDevicePickerFilter;

   type IDialDeviceSelectedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IDialDeviceSelectedEventArgs is access IDialDeviceSelectedEventArgs_Interface'Class;
   type IDialDeviceSelectedEventArgs_Ptr is access all IDialDeviceSelectedEventArgs;

   type IDialDeviceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IDialDeviceStatics is access IDialDeviceStatics_Interface'Class;

   type IDialDisconnectButtonClickedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IDialDisconnectButtonClickedEventArgs is access IDialDisconnectButtonClickedEventArgs_Interface'Class;
   type IDialDisconnectButtonClickedEventArgs_Ptr is access all IDialDisconnectButtonClickedEventArgs;

   type IDialReceiverApp_Interface is interface and WinRt.IInspectable_Interface;
   type IDialReceiverApp is access IDialReceiverApp_Interface'Class;
   type IDialReceiverApp_Ptr is access all IDialReceiverApp;

   type IDialReceiverApp2_Interface is interface and WinRt.IInspectable_Interface;
   type IDialReceiverApp2 is access IDialReceiverApp2_Interface'Class;

   type IDialReceiverAppStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IDialReceiverAppStatics is access IDialReceiverAppStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type DialApp is new Ada.Finalization.Limited_Controlled with
      record
         m_IDialApp : access Windows.Media.DialProtocol.IDialApp;
      end record;
   type DialApp_Ptr is access all DialApp;

   type DialAppStateDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IDialAppStateDetails : access Windows.Media.DialProtocol.IDialAppStateDetails;
      end record;
   type DialAppStateDetails_Ptr is access all DialAppStateDetails;

   type DialDevice is new Ada.Finalization.Limited_Controlled with
      record
         m_IDialDevice : access Windows.Media.DialProtocol.IDialDevice;
      end record;
   type DialDevice_Ptr is access all DialDevice;

   type DialDevicePicker is new Ada.Finalization.Limited_Controlled with
      record
         m_IDialDevicePicker : access Windows.Media.DialProtocol.IDialDevicePicker;
      end record;
   type DialDevicePicker_Ptr is access all DialDevicePicker;

   type DialDevicePickerFilter is new Ada.Finalization.Limited_Controlled with
      record
         m_IDialDevicePickerFilter : access Windows.Media.DialProtocol.IDialDevicePickerFilter;
      end record;
   type DialDevicePickerFilter_Ptr is access all DialDevicePickerFilter;

   type DialDeviceSelectedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IDialDeviceSelectedEventArgs : access Windows.Media.DialProtocol.IDialDeviceSelectedEventArgs;
      end record;
   type DialDeviceSelectedEventArgs_Ptr is access all DialDeviceSelectedEventArgs;

   type DialDisconnectButtonClickedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IDialDisconnectButtonClickedEventArgs : access Windows.Media.DialProtocol.IDialDisconnectButtonClickedEventArgs;
      end record;
   type DialDisconnectButtonClickedEventArgs_Ptr is access all DialDisconnectButtonClickedEventArgs;

   type DialReceiverApp is new Ada.Finalization.Limited_Controlled with
      record
         m_IDialReceiverApp : access Windows.Media.DialProtocol.IDialReceiverApp;
      end record;
   type DialReceiverApp_Ptr is access all DialReceiverApp;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type DialAppLaunchResult is (
      Launched_e,
      FailedToLaunch_e,
      NotFound_e,
      NetworkFailure_e
   );
   for DialAppLaunchResult use (
      Launched_e => 0,
      FailedToLaunch_e => 1,
      NotFound_e => 2,
      NetworkFailure_e => 3
   );
   type DialAppLaunchResult_Ptr is access DialAppLaunchResult;

   type DialAppState is (
      Unknown_e,
      Stopped_e,
      Running_e,
      NetworkFailure_e
   );
   for DialAppState use (
      Unknown_e => 0,
      Stopped_e => 1,
      Running_e => 2,
      NetworkFailure_e => 3
   );
   type DialAppState_Ptr is access DialAppState;

   type DialAppStopResult is (
      Stopped_e,
      StopFailed_e,
      OperationNotSupported_e,
      NetworkFailure_e
   );
   for DialAppStopResult use (
      Stopped_e => 0,
      StopFailed_e => 1,
      OperationNotSupported_e => 2,
      NetworkFailure_e => 3
   );
   type DialAppStopResult_Ptr is access DialAppStopResult;

   type DialDeviceDisplayStatus is (
      None_e,
      Connecting_e,
      Connected_e,
      Disconnecting_e,
      Disconnected_e,
      Error_e
   );
   for DialDeviceDisplayStatus use (
      None_e => 0,
      Connecting_e => 1,
      Connected_e => 2,
      Disconnecting_e => 3,
      Disconnected_e => 4,
      Error_e => 5
   );
   type DialDeviceDisplayStatus_Ptr is access DialDeviceDisplayStatus;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVector_HString is new WinRt.Windows.Foundation.Collections.IVector (WinRt.HString);
   IID_IVector_HString : aliased WinRt.IID := (3966693885, 6499, 21088, (129, 59, 225, 232, 6, 190, 54, 148 ));
   function QInterface_IVector_HString is new Generic_QueryInterface (GenericObject_Interface, IVector_HString.Kind, IID_IVector_HString'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IDialApp is interface and WinRt.IInspectable;

      function get_AppName
      (
         this : access IDialApp_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function RequestLaunchAsync
      (
         this : access IDialApp_Interface;
         appArgument : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function StopAsync
      (
         this : access IDialApp_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetAppStateAsync
      (
         this : access IDialApp_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IDialApp : aliased WinRt.IID := (1432353747, 17847, 18931, (187, 215, 48, 45, 182, 8, 70, 70 ));

   -----------------------------------------------------------------------------
   -- type IDialAppStateDetails is interface and WinRt.IInspectable;

      function get_State
      (
         this : access IDialAppStateDetails_Interface;
         RetVal : access Windows.Media.DialProtocol.DialAppState
      )
      return WinRt.Hresult is abstract;

      function get_FullXml
      (
         this : access IDialAppStateDetails_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IDialAppStateDetails : aliased WinRt.IID := (3720651937, 62942, 16397, (190, 164, 140, 132, 102, 187, 41, 97 ));

   -----------------------------------------------------------------------------
   -- type IDialDevice is interface and WinRt.IInspectable;

      function get_Id
      (
         this : access IDialDevice_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetDialApp
      (
         this : access IDialDevice_Interface;
         appName : WinRt.HString;
         RetVal : access Windows.Media.DialProtocol.IDialApp
      )
      return WinRt.Hresult is abstract;

      IID_IDialDevice : aliased WinRt.IID := (4293979567, 30111, 16850, (162, 10, 127, 41, 206, 11, 55, 132 ));

   -----------------------------------------------------------------------------
   -- type IDialDevice2 is interface and WinRt.IInspectable;

      function get_FriendlyName
      (
         this : access IDialDevice2_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Thumbnail
      (
         this : access IDialDevice2_Interface;
         RetVal : access Windows.Storage.Streams.IRandomAccessStreamReference
      )
      return WinRt.Hresult is abstract;

      IID_IDialDevice2 : aliased WinRt.IID := (3132617685, 23547, 20154, (139, 50, 181, 124, 92, 94, 229, 201 ));

   -----------------------------------------------------------------------------
   -- type IDialDevicePicker is interface and WinRt.IInspectable;

      function get_Filter
      (
         this : access IDialDevicePicker_Interface;
         RetVal : access Windows.Media.DialProtocol.IDialDevicePickerFilter
      )
      return WinRt.Hresult is abstract;

      function get_Appearance
      (
         this : access IDialDevicePicker_Interface;
         RetVal : access Windows.Devices.Enumeration.IDevicePickerAppearance
      )
      return WinRt.Hresult is abstract;

      function add_DialDeviceSelected
      (
         this : access IDialDevicePicker_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_DialDeviceSelected
      (
         this : access IDialDevicePicker_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_DisconnectButtonClicked
      (
         this : access IDialDevicePicker_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_DisconnectButtonClicked
      (
         this : access IDialDevicePicker_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_DialDevicePickerDismissed
      (
         this : access IDialDevicePicker_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_DialDevicePickerDismissed
      (
         this : access IDialDevicePicker_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function Show
      (
         this : access IDialDevicePicker_Interface;
         selection : Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function Show
      (
         this : access IDialDevicePicker_Interface;
         selection : Windows.Foundation.Rect;
         preferredPlacement : Windows.UI.Popups.Placement
      )
      return WinRt.Hresult is abstract;

      function PickSingleDialDeviceAsync
      (
         this : access IDialDevicePicker_Interface;
         selection : Windows.Foundation.Rect;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function PickSingleDialDeviceAsync
      (
         this : access IDialDevicePicker_Interface;
         selection : Windows.Foundation.Rect;
         preferredPlacement : Windows.UI.Popups.Placement;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function Hide
      (
         this : access IDialDevicePicker_Interface
      )
      return WinRt.Hresult is abstract;

      function SetDisplayStatus
      (
         this : access IDialDevicePicker_Interface;
         device : Windows.Media.DialProtocol.IDialDevice;
         status : Windows.Media.DialProtocol.DialDeviceDisplayStatus
      )
      return WinRt.Hresult is abstract;

      IID_IDialDevicePicker : aliased WinRt.IID := (3128840714, 65369, 20299, (189, 172, 216, 159, 73, 90, 214, 225 ));

   -----------------------------------------------------------------------------
   -- type IDialDevicePickerFilter is interface and WinRt.IInspectable;

      function get_SupportedAppNames
      (
         this : access IDialDevicePickerFilter_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IDialDevicePickerFilter : aliased WinRt.IID := (3246166970, 34496, 18525, (184, 214, 15, 154, 143, 100, 21, 144 ));

   -----------------------------------------------------------------------------
   -- type IDialDeviceSelectedEventArgs is interface and WinRt.IInspectable;

      function get_SelectedDialDevice
      (
         this : access IDialDeviceSelectedEventArgs_Interface;
         RetVal : access Windows.Media.DialProtocol.IDialDevice
      )
      return WinRt.Hresult is abstract;

      IID_IDialDeviceSelectedEventArgs : aliased WinRt.IID := (1208717997, 44150, 18411, (156, 6, 161, 147, 4, 218, 2, 71 ));

   -----------------------------------------------------------------------------
   -- type IDialDeviceStatics is interface and WinRt.IInspectable;

      function GetDeviceSelector
      (
         this : access IDialDeviceStatics_Interface;
         appName : WinRt.HString;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access IDialDeviceStatics_Interface;
         value : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function DeviceInfoSupportsDialAsync
      (
         this : access IDialDeviceStatics_Interface;
         device : Windows.Devices.Enumeration.IDeviceInformation;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IDialDeviceStatics : aliased WinRt.IID := (2859060373, 504, 18264, (132, 97, 43, 189, 28, 220, 60, 243 ));

   -----------------------------------------------------------------------------
   -- type IDialDisconnectButtonClickedEventArgs is interface and WinRt.IInspectable;

      function get_Device
      (
         this : access IDialDisconnectButtonClickedEventArgs_Interface;
         RetVal : access Windows.Media.DialProtocol.IDialDevice
      )
      return WinRt.Hresult is abstract;

      IID_IDialDisconnectButtonClickedEventArgs : aliased WinRt.IID := (1383485778, 40065, 20053, (173, 194, 14, 190, 153, 205, 227, 182 ));

   -----------------------------------------------------------------------------
   -- type IDialReceiverApp is interface and WinRt.IInspectable;

      function GetAdditionalDataAsync
      (
         this : access IDialReceiverApp_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SetAdditionalDataAsync
      (
         this : access IDialReceiverApp_Interface;
         additionalData : GenericObject;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_IDialReceiverApp : aliased WinRt.IID := (4248730711, 20549, 18190, (179, 4, 77, 217, 177, 62, 125, 17 ));

   -----------------------------------------------------------------------------
   -- type IDialReceiverApp2 is interface and WinRt.IInspectable;

      function GetUniqueDeviceNameAsync
      (
         this : access IDialReceiverApp2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IDialReceiverApp2 : aliased WinRt.IID := (1393317893, 37168, 17068, (165, 4, 25, 119, 220, 178, 234, 138 ));

   -----------------------------------------------------------------------------
   -- type IDialReceiverAppStatics is interface and WinRt.IInspectable;

      function get_Current
      (
         this : access IDialReceiverAppStatics_Interface;
         RetVal : access Windows.Media.DialProtocol.IDialReceiverApp
      )
      return WinRt.Hresult is abstract;

      IID_IDialReceiverAppStatics : aliased WinRt.IID := (1394096700, 19510, 19714, (178, 138, 242, 169, 218, 56, 236, 82 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DialApp

   overriding procedure Initialize (this : in out DialApp);
   overriding procedure Finalize (this : in out DialApp);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DialApp

   function get_AppName
   (
      this : in out DialApp
   )
   return WinRt.WString;

   function RequestLaunchAsync
   (
      this : in out DialApp;
      appArgument : WinRt.WString
   )
   return WinRt.Windows.Media.DialProtocol.DialAppLaunchResult;

   function StopAsync
   (
      this : in out DialApp
   )
   return WinRt.Windows.Media.DialProtocol.DialAppStopResult;

   function GetAppStateAsync
   (
      this : in out DialApp
   )
   return WinRt.Windows.Media.DialProtocol.DialAppStateDetails'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DialAppStateDetails

   overriding procedure Initialize (this : in out DialAppStateDetails);
   overriding procedure Finalize (this : in out DialAppStateDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DialAppStateDetails

   function get_State
   (
      this : in out DialAppStateDetails
   )
   return WinRt.Windows.Media.DialProtocol.DialAppState;

   function get_FullXml
   (
      this : in out DialAppStateDetails
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DialDevice

   overriding procedure Initialize (this : in out DialDevice);
   overriding procedure Finalize (this : in out DialDevice);

   -----------------------------------------------------------------------------
   -- Static Interfaces for DialDevice

   function GetDeviceSelector
   (
      appName : WinRt.WString
   )
   return WinRt.WString;

   function FromIdAsync
   (
      value : WinRt.WString
   )
   return WinRt.Windows.Media.DialProtocol.DialDevice;

   function DeviceInfoSupportsDialAsync
   (
      device : Windows.Devices.Enumeration.DeviceInformation'Class
   )
   return WinRt.Boolean;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DialDevice

   function get_Id
   (
      this : in out DialDevice
   )
   return WinRt.WString;

   function GetDialApp
   (
      this : in out DialDevice;
      appName : WinRt.WString
   )
   return WinRt.Windows.Media.DialProtocol.DialApp'Class;

   function get_FriendlyName
   (
      this : in out DialDevice
   )
   return WinRt.WString;

   function get_Thumbnail
   (
      this : in out DialDevice
   )
   return WinRt.Windows.Storage.Streams.IRandomAccessStreamReference;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DialDevicePicker

   overriding procedure Initialize (this : in out DialDevicePicker);
   overriding procedure Finalize (this : in out DialDevicePicker);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for DialDevicePicker

   function Constructor return DialDevicePicker;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DialDevicePicker

   function get_Filter
   (
      this : in out DialDevicePicker
   )
   return WinRt.Windows.Media.DialProtocol.DialDevicePickerFilter'Class;

   function get_Appearance
   (
      this : in out DialDevicePicker
   )
   return WinRt.Windows.Devices.Enumeration.DevicePickerAppearance'Class;

   function add_DialDeviceSelected
   (
      this : in out DialDevicePicker;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_DialDeviceSelected
   (
      this : in out DialDevicePicker;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_DisconnectButtonClicked
   (
      this : in out DialDevicePicker;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_DisconnectButtonClicked
   (
      this : in out DialDevicePicker;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_DialDevicePickerDismissed
   (
      this : in out DialDevicePicker;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_DialDevicePickerDismissed
   (
      this : in out DialDevicePicker;
      token : Windows.Foundation.EventRegistrationToken
   );

   procedure Show
   (
      this : in out DialDevicePicker;
      selection : Windows.Foundation.Rect
   );

   procedure Show
   (
      this : in out DialDevicePicker;
      selection : Windows.Foundation.Rect;
      preferredPlacement : Windows.UI.Popups.Placement
   );

   function PickSingleDialDeviceAsync
   (
      this : in out DialDevicePicker;
      selection : Windows.Foundation.Rect
   )
   return WinRt.Windows.Media.DialProtocol.DialDevice'Class;

   function PickSingleDialDeviceAsync
   (
      this : in out DialDevicePicker;
      selection : Windows.Foundation.Rect;
      preferredPlacement : Windows.UI.Popups.Placement
   )
   return WinRt.Windows.Media.DialProtocol.DialDevice'Class;

   procedure Hide
   (
      this : in out DialDevicePicker
   );

   procedure SetDisplayStatus
   (
      this : in out DialDevicePicker;
      device : Windows.Media.DialProtocol.DialDevice'Class;
      status : Windows.Media.DialProtocol.DialDeviceDisplayStatus
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DialDevicePickerFilter

   overriding procedure Initialize (this : in out DialDevicePickerFilter);
   overriding procedure Finalize (this : in out DialDevicePickerFilter);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DialDevicePickerFilter

   function get_SupportedAppNames
   (
      this : in out DialDevicePickerFilter
   )
   return IVector_HString.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DialDeviceSelectedEventArgs

   overriding procedure Initialize (this : in out DialDeviceSelectedEventArgs);
   overriding procedure Finalize (this : in out DialDeviceSelectedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DialDeviceSelectedEventArgs

   function get_SelectedDialDevice
   (
      this : in out DialDeviceSelectedEventArgs
   )
   return WinRt.Windows.Media.DialProtocol.DialDevice'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DialDisconnectButtonClickedEventArgs

   overriding procedure Initialize (this : in out DialDisconnectButtonClickedEventArgs);
   overriding procedure Finalize (this : in out DialDisconnectButtonClickedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DialDisconnectButtonClickedEventArgs

   function get_Device
   (
      this : in out DialDisconnectButtonClickedEventArgs
   )
   return WinRt.Windows.Media.DialProtocol.DialDevice'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DialReceiverApp

   overriding procedure Initialize (this : in out DialReceiverApp);
   overriding procedure Finalize (this : in out DialReceiverApp);

   -----------------------------------------------------------------------------
   -- Static Interfaces for DialReceiverApp

   function get_Current
   return WinRt.Windows.Media.DialProtocol.DialReceiverApp;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DialReceiverApp

   function GetAdditionalDataAsync
   (
      this : in out DialReceiverApp
   )
   return WinRt.GenericObject;

   procedure SetAdditionalDataAsync
   (
      this : in out DialReceiverApp;
      additionalData : GenericObject
   );

   function GetUniqueDeviceNameAsync
   (
      this : in out DialReceiverApp
   )
   return WinRt.WString;

end;
