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
limited with WinRt.Windows.Devices.Bluetooth.Advertisement;
limited with WinRt.Windows.Devices.Bluetooth.GenericAttributeProfile;
limited with WinRt.Windows.Devices.Bluetooth.Rfcomm;
with WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
limited with WinRt.Windows.Networking.Sockets;
limited with WinRt.Windows.Storage.Streams;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.Bluetooth.Background is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IBluetoothLEAdvertisementPublisherTriggerDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IBluetoothLEAdvertisementPublisherTriggerDetails is access IBluetoothLEAdvertisementPublisherTriggerDetails_Interface'Class;
   type IBluetoothLEAdvertisementPublisherTriggerDetails_Ptr is access all IBluetoothLEAdvertisementPublisherTriggerDetails;

   type IBluetoothLEAdvertisementPublisherTriggerDetails2_Interface is interface and WinRt.IInspectable_Interface;
   type IBluetoothLEAdvertisementPublisherTriggerDetails2 is access IBluetoothLEAdvertisementPublisherTriggerDetails2_Interface'Class;

   type IBluetoothLEAdvertisementWatcherTriggerDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IBluetoothLEAdvertisementWatcherTriggerDetails is access IBluetoothLEAdvertisementWatcherTriggerDetails_Interface'Class;
   type IBluetoothLEAdvertisementWatcherTriggerDetails_Ptr is access all IBluetoothLEAdvertisementWatcherTriggerDetails;

   type IGattCharacteristicNotificationTriggerDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IGattCharacteristicNotificationTriggerDetails is access IGattCharacteristicNotificationTriggerDetails_Interface'Class;
   type IGattCharacteristicNotificationTriggerDetails_Ptr is access all IGattCharacteristicNotificationTriggerDetails;

   type IGattCharacteristicNotificationTriggerDetails2_Interface is interface and WinRt.IInspectable_Interface;
   type IGattCharacteristicNotificationTriggerDetails2 is access IGattCharacteristicNotificationTriggerDetails2_Interface'Class;

   type IGattServiceProviderConnection_Interface is interface and WinRt.IInspectable_Interface;
   type IGattServiceProviderConnection is access IGattServiceProviderConnection_Interface'Class;
   type IGattServiceProviderConnection_Ptr is access all IGattServiceProviderConnection;

   type IGattServiceProviderConnectionStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IGattServiceProviderConnectionStatics is access IGattServiceProviderConnectionStatics_Interface'Class;

   type IGattServiceProviderTriggerDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IGattServiceProviderTriggerDetails is access IGattServiceProviderTriggerDetails_Interface'Class;
   type IGattServiceProviderTriggerDetails_Ptr is access all IGattServiceProviderTriggerDetails;

   type IRfcommConnectionTriggerDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IRfcommConnectionTriggerDetails is access IRfcommConnectionTriggerDetails_Interface'Class;
   type IRfcommConnectionTriggerDetails_Ptr is access all IRfcommConnectionTriggerDetails;

   type IRfcommInboundConnectionInformation_Interface is interface and WinRt.IInspectable_Interface;
   type IRfcommInboundConnectionInformation is access IRfcommInboundConnectionInformation_Interface'Class;
   type IRfcommInboundConnectionInformation_Ptr is access all IRfcommInboundConnectionInformation;

   type IRfcommOutboundConnectionInformation_Interface is interface and WinRt.IInspectable_Interface;
   type IRfcommOutboundConnectionInformation is access IRfcommOutboundConnectionInformation_Interface'Class;
   type IRfcommOutboundConnectionInformation_Ptr is access all IRfcommOutboundConnectionInformation;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type BluetoothLEAdvertisementPublisherTriggerDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IBluetoothLEAdvertisementPublisherTriggerDetails : access Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementPublisherTriggerDetails;
      end record;
   type BluetoothLEAdvertisementPublisherTriggerDetails_Ptr is access all BluetoothLEAdvertisementPublisherTriggerDetails;

   type BluetoothLEAdvertisementWatcherTriggerDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IBluetoothLEAdvertisementWatcherTriggerDetails : access Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementWatcherTriggerDetails;
      end record;
   type BluetoothLEAdvertisementWatcherTriggerDetails_Ptr is access all BluetoothLEAdvertisementWatcherTriggerDetails;

   type GattCharacteristicNotificationTriggerDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IGattCharacteristicNotificationTriggerDetails : access Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails;
      end record;
   type GattCharacteristicNotificationTriggerDetails_Ptr is access all GattCharacteristicNotificationTriggerDetails;

   type GattServiceProviderConnection is new Ada.Finalization.Limited_Controlled with
      record
         m_IGattServiceProviderConnection : access Windows.Devices.Bluetooth.Background.IGattServiceProviderConnection;
      end record;
   type GattServiceProviderConnection_Ptr is access all GattServiceProviderConnection;

   type GattServiceProviderTriggerDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IGattServiceProviderTriggerDetails : access Windows.Devices.Bluetooth.Background.IGattServiceProviderTriggerDetails;
      end record;
   type GattServiceProviderTriggerDetails_Ptr is access all GattServiceProviderTriggerDetails;

   type RfcommConnectionTriggerDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IRfcommConnectionTriggerDetails : access Windows.Devices.Bluetooth.Background.IRfcommConnectionTriggerDetails;
      end record;
   type RfcommConnectionTriggerDetails_Ptr is access all RfcommConnectionTriggerDetails;

   type RfcommInboundConnectionInformation is new Ada.Finalization.Limited_Controlled with
      record
         m_IRfcommInboundConnectionInformation : access Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation;
      end record;
   type RfcommInboundConnectionInformation_Ptr is access all RfcommInboundConnectionInformation;

   type RfcommOutboundConnectionInformation is new Ada.Finalization.Limited_Controlled with
      record
         m_IRfcommOutboundConnectionInformation : access Windows.Devices.Bluetooth.Background.IRfcommOutboundConnectionInformation;
      end record;
   type RfcommOutboundConnectionInformation_Ptr is access all RfcommOutboundConnectionInformation;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type BluetoothEventTriggeringMode is (
      Serial_e,
      Batch_e,
      KeepLatest_e
   );
   for BluetoothEventTriggeringMode use (
      Serial_e => 0,
      Batch_e => 1,
      KeepLatest_e => 2
   );
   type BluetoothEventTriggeringMode_Ptr is access BluetoothEventTriggeringMode;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IReference_Int16 is new WinRt.Windows.Foundation.IReference (WinRt.Int16);
   IID_IReference_Int16 : aliased WinRt.IID := (3164144035, 10233, 23172, (130, 83, 137, 92, 190, 87, 133, 38 ));
   function QInterface_IReference_Int16 is new Generic_QueryInterface (GenericObject_Interface, IReference_Int16.Kind, IID_IReference_Int16'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IBluetoothLEAdvertisementPublisherTriggerDetails is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IBluetoothLEAdvertisementPublisherTriggerDetails_Interface;
         RetVal : access Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus
      )
      return WinRt.Hresult is abstract;

      function get_Error
      (
         this : access IBluetoothLEAdvertisementPublisherTriggerDetails_Interface;
         RetVal : access Windows.Devices.Bluetooth.BluetoothError
      )
      return WinRt.Hresult is abstract;

      IID_IBluetoothLEAdvertisementPublisherTriggerDetails : aliased WinRt.IID := (1628359302, 13440, 16841, (169, 24, 125, 218, 223, 32, 126, 0 ));

   -----------------------------------------------------------------------------
   -- type IBluetoothLEAdvertisementPublisherTriggerDetails2 is interface and WinRt.IInspectable;

      function get_SelectedTransmitPowerLevelInDBm
      (
         this : access IBluetoothLEAdvertisementPublisherTriggerDetails2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IBluetoothLEAdvertisementPublisherTriggerDetails2 : aliased WinRt.IID := (3567505445, 50689, 17110, (152, 41, 76, 203, 63, 92, 215, 127 ));

   -----------------------------------------------------------------------------
   -- type IBluetoothLEAdvertisementWatcherTriggerDetails is interface and WinRt.IInspectable;

      function get_Error
      (
         this : access IBluetoothLEAdvertisementWatcherTriggerDetails_Interface;
         RetVal : access Windows.Devices.Bluetooth.BluetoothError
      )
      return WinRt.Hresult is abstract;

      function get_Advertisements
      (
         this : access IBluetoothLEAdvertisementWatcherTriggerDetails_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_SignalStrengthFilter
      (
         this : access IBluetoothLEAdvertisementWatcherTriggerDetails_Interface;
         RetVal : access Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter
      )
      return WinRt.Hresult is abstract;

      IID_IBluetoothLEAdvertisementWatcherTriggerDetails : aliased WinRt.IID := (2816170711, 8791, 20073, (151, 132, 254, 230, 69, 193, 220, 224 ));

   -----------------------------------------------------------------------------
   -- type IGattCharacteristicNotificationTriggerDetails is interface and WinRt.IInspectable;

      function get_Characteristic
      (
         this : access IGattCharacteristicNotificationTriggerDetails_Interface;
         RetVal : access Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic
      )
      return WinRt.Hresult is abstract;

      function get_Value
      (
         this : access IGattCharacteristicNotificationTriggerDetails_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      IID_IGattCharacteristicNotificationTriggerDetails : aliased WinRt.IID := (2610969368, 4076, 17258, (147, 177, 244, 108, 105, 117, 50, 162 ));

   -----------------------------------------------------------------------------
   -- type IGattCharacteristicNotificationTriggerDetails2 is interface and WinRt.IInspectable;

      function get_Error
      (
         this : access IGattCharacteristicNotificationTriggerDetails2_Interface;
         RetVal : access Windows.Devices.Bluetooth.BluetoothError
      )
      return WinRt.Hresult is abstract;

      function get_EventTriggeringMode
      (
         this : access IGattCharacteristicNotificationTriggerDetails2_Interface;
         RetVal : access Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode
      )
      return WinRt.Hresult is abstract;

      function get_ValueChangedEvents
      (
         this : access IGattCharacteristicNotificationTriggerDetails2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGattCharacteristicNotificationTriggerDetails2 : aliased WinRt.IID := (1920618716, 38045, 17738, (177, 146, 152, 52, 103, 227, 213, 15 ));

   -----------------------------------------------------------------------------
   -- type IGattServiceProviderConnection is interface and WinRt.IInspectable;

      function get_TriggerId
      (
         this : access IGattServiceProviderConnection_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Service
      (
         this : access IGattServiceProviderConnection_Interface;
         RetVal : access Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalService
      )
      return WinRt.Hresult is abstract;

      function Start
      (
         this : access IGattServiceProviderConnection_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IGattServiceProviderConnection : aliased WinRt.IID := (2141305273, 12051, 16565, (149, 130, 142, 183, 142, 152, 239, 19 ));

   -----------------------------------------------------------------------------
   -- type IGattServiceProviderConnectionStatics is interface and WinRt.IInspectable;

      function get_AllServices
      (
         this : access IGattServiceProviderConnectionStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGattServiceProviderConnectionStatics : aliased WinRt.IID := (1028693835, 2830, 17510, (184, 205, 110, 189, 218, 31, 161, 125 ));

   -----------------------------------------------------------------------------
   -- type IGattServiceProviderTriggerDetails is interface and WinRt.IInspectable;

      function get_Connection
      (
         this : access IGattServiceProviderTriggerDetails_Interface;
         RetVal : access Windows.Devices.Bluetooth.Background.IGattServiceProviderConnection
      )
      return WinRt.Hresult is abstract;

      IID_IGattServiceProviderTriggerDetails : aliased WinRt.IID := (2928412197, 1535, 19195, (177, 106, 222, 149, 243, 207, 1, 88 ));

   -----------------------------------------------------------------------------
   -- type IRfcommConnectionTriggerDetails is interface and WinRt.IInspectable;

      function get_Socket
      (
         this : access IRfcommConnectionTriggerDetails_Interface;
         RetVal : access Windows.Networking.Sockets.IStreamSocket
      )
      return WinRt.Hresult is abstract;

      function get_Incoming
      (
         this : access IRfcommConnectionTriggerDetails_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_RemoteDevice
      (
         this : access IRfcommConnectionTriggerDetails_Interface;
         RetVal : access Windows.Devices.Bluetooth.IBluetoothDevice
      )
      return WinRt.Hresult is abstract;

      IID_IRfcommConnectionTriggerDetails : aliased WinRt.IID := (4179784525, 11836, 20220, (171, 89, 252, 92, 249, 111, 151, 227 ));

   -----------------------------------------------------------------------------
   -- type IRfcommInboundConnectionInformation is interface and WinRt.IInspectable;

      function get_SdpRecord
      (
         this : access IRfcommInboundConnectionInformation_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function put_SdpRecord
      (
         this : access IRfcommInboundConnectionInformation_Interface;
         value : Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function get_LocalServiceId
      (
         this : access IRfcommInboundConnectionInformation_Interface;
         RetVal : access Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId
      )
      return WinRt.Hresult is abstract;

      function put_LocalServiceId
      (
         this : access IRfcommInboundConnectionInformation_Interface;
         value : Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId
      )
      return WinRt.Hresult is abstract;

      function get_ServiceCapabilities
      (
         this : access IRfcommInboundConnectionInformation_Interface;
         RetVal : access Windows.Devices.Bluetooth.BluetoothServiceCapabilities
      )
      return WinRt.Hresult is abstract;

      function put_ServiceCapabilities
      (
         this : access IRfcommInboundConnectionInformation_Interface;
         value : Windows.Devices.Bluetooth.BluetoothServiceCapabilities
      )
      return WinRt.Hresult is abstract;

      IID_IRfcommInboundConnectionInformation : aliased WinRt.IID := (1832809896, 21545, 16473, (146, 227, 30, 139, 101, 82, 135, 7 ));

   -----------------------------------------------------------------------------
   -- type IRfcommOutboundConnectionInformation is interface and WinRt.IInspectable;

      function get_RemoteServiceId
      (
         this : access IRfcommOutboundConnectionInformation_Interface;
         RetVal : access Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId
      )
      return WinRt.Hresult is abstract;

      function put_RemoteServiceId
      (
         this : access IRfcommOutboundConnectionInformation_Interface;
         value : Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId
      )
      return WinRt.Hresult is abstract;

      IID_IRfcommOutboundConnectionInformation : aliased WinRt.IID := (2962301563, 62516, 19632, (153, 177, 74, 184, 206, 218, 237, 215 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for BluetoothLEAdvertisementPublisherTriggerDetails

   overriding procedure Initialize (this : in out BluetoothLEAdvertisementPublisherTriggerDetails);
   overriding procedure Finalize (this : in out BluetoothLEAdvertisementPublisherTriggerDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for BluetoothLEAdvertisementPublisherTriggerDetails

   function get_Status
   (
      this : in out BluetoothLEAdvertisementPublisherTriggerDetails
   )
   return WinRt.Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus;

   function get_Error
   (
      this : in out BluetoothLEAdvertisementPublisherTriggerDetails
   )
   return WinRt.Windows.Devices.Bluetooth.BluetoothError;

   function get_SelectedTransmitPowerLevelInDBm
   (
      this : in out BluetoothLEAdvertisementPublisherTriggerDetails
   )
   return IReference_Int16.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for BluetoothLEAdvertisementWatcherTriggerDetails

   overriding procedure Initialize (this : in out BluetoothLEAdvertisementWatcherTriggerDetails);
   overriding procedure Finalize (this : in out BluetoothLEAdvertisementWatcherTriggerDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for BluetoothLEAdvertisementWatcherTriggerDetails

   function get_Error
   (
      this : in out BluetoothLEAdvertisementWatcherTriggerDetails
   )
   return WinRt.Windows.Devices.Bluetooth.BluetoothError;

   function get_Advertisements
   (
      this : in out BluetoothLEAdvertisementWatcherTriggerDetails
   )
   return WinRt.GenericObject;

   function get_SignalStrengthFilter
   (
      this : in out BluetoothLEAdvertisementWatcherTriggerDetails
   )
   return WinRt.Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GattCharacteristicNotificationTriggerDetails

   overriding procedure Initialize (this : in out GattCharacteristicNotificationTriggerDetails);
   overriding procedure Finalize (this : in out GattCharacteristicNotificationTriggerDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GattCharacteristicNotificationTriggerDetails

   function get_Characteristic
   (
      this : in out GattCharacteristicNotificationTriggerDetails
   )
   return WinRt.Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic'Class;

   function get_Value
   (
      this : in out GattCharacteristicNotificationTriggerDetails
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   function get_Error
   (
      this : in out GattCharacteristicNotificationTriggerDetails
   )
   return WinRt.Windows.Devices.Bluetooth.BluetoothError;

   function get_EventTriggeringMode
   (
      this : in out GattCharacteristicNotificationTriggerDetails
   )
   return WinRt.Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode;

   function get_ValueChangedEvents
   (
      this : in out GattCharacteristicNotificationTriggerDetails
   )
   return WinRt.GenericObject;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GattServiceProviderConnection

   overriding procedure Initialize (this : in out GattServiceProviderConnection);
   overriding procedure Finalize (this : in out GattServiceProviderConnection);

   -----------------------------------------------------------------------------
   -- Static Interfaces for GattServiceProviderConnection

   function get_AllServices
   return WinRt.GenericObject;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GattServiceProviderConnection

   function get_TriggerId
   (
      this : in out GattServiceProviderConnection
   )
   return WinRt.WString;

   function get_Service
   (
      this : in out GattServiceProviderConnection
   )
   return WinRt.Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService'Class;

   procedure Start
   (
      this : in out GattServiceProviderConnection
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GattServiceProviderTriggerDetails

   overriding procedure Initialize (this : in out GattServiceProviderTriggerDetails);
   overriding procedure Finalize (this : in out GattServiceProviderTriggerDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GattServiceProviderTriggerDetails

   function get_Connection
   (
      this : in out GattServiceProviderTriggerDetails
   )
   return WinRt.Windows.Devices.Bluetooth.Background.GattServiceProviderConnection'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for RfcommConnectionTriggerDetails

   overriding procedure Initialize (this : in out RfcommConnectionTriggerDetails);
   overriding procedure Finalize (this : in out RfcommConnectionTriggerDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for RfcommConnectionTriggerDetails

   function get_Socket
   (
      this : in out RfcommConnectionTriggerDetails
   )
   return WinRt.Windows.Networking.Sockets.StreamSocket'Class;

   function get_Incoming
   (
      this : in out RfcommConnectionTriggerDetails
   )
   return WinRt.Boolean;

   function get_RemoteDevice
   (
      this : in out RfcommConnectionTriggerDetails
   )
   return WinRt.Windows.Devices.Bluetooth.BluetoothDevice'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for RfcommInboundConnectionInformation

   overriding procedure Initialize (this : in out RfcommInboundConnectionInformation);
   overriding procedure Finalize (this : in out RfcommInboundConnectionInformation);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for RfcommInboundConnectionInformation

   function get_SdpRecord
   (
      this : in out RfcommInboundConnectionInformation
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   procedure put_SdpRecord
   (
      this : in out RfcommInboundConnectionInformation;
      value : Windows.Storage.Streams.IBuffer
   );

   function get_LocalServiceId
   (
      this : in out RfcommInboundConnectionInformation
   )
   return WinRt.Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId'Class;

   procedure put_LocalServiceId
   (
      this : in out RfcommInboundConnectionInformation;
      value : Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId'Class
   );

   function get_ServiceCapabilities
   (
      this : in out RfcommInboundConnectionInformation
   )
   return WinRt.Windows.Devices.Bluetooth.BluetoothServiceCapabilities;

   procedure put_ServiceCapabilities
   (
      this : in out RfcommInboundConnectionInformation;
      value : Windows.Devices.Bluetooth.BluetoothServiceCapabilities
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for RfcommOutboundConnectionInformation

   overriding procedure Initialize (this : in out RfcommOutboundConnectionInformation);
   overriding procedure Finalize (this : in out RfcommOutboundConnectionInformation);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for RfcommOutboundConnectionInformation

   function get_RemoteServiceId
   (
      this : in out RfcommOutboundConnectionInformation
   )
   return WinRt.Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId'Class;

   procedure put_RemoteServiceId
   (
      this : in out RfcommOutboundConnectionInformation;
      value : Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId'Class
   );

end;
