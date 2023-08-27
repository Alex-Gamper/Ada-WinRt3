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
limited with WinRt.Windows.Storage.Streams;
limited with WinRt.Windows.System;
limited with WinRt.Windows.UI.Notifications;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Networking.PushNotifications is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPushNotificationChannel_Interface is interface and WinRt.IInspectable_Interface;
   type IPushNotificationChannel is access all IPushNotificationChannel_Interface'Class;
   type IPushNotificationChannel_Ptr is access all IPushNotificationChannel;

   type IPushNotificationChannelManagerForUser_Interface is interface and WinRt.IInspectable_Interface;
   type IPushNotificationChannelManagerForUser is access all IPushNotificationChannelManagerForUser_Interface'Class;
   type IPushNotificationChannelManagerForUser_Ptr is access all IPushNotificationChannelManagerForUser;

   type IPushNotificationChannelManagerForUser2_Interface is interface and WinRt.IInspectable_Interface;
   type IPushNotificationChannelManagerForUser2 is access all IPushNotificationChannelManagerForUser2_Interface'Class;

   type IPushNotificationChannelManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPushNotificationChannelManagerStatics is access all IPushNotificationChannelManagerStatics_Interface'Class;

   type IPushNotificationChannelManagerStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type IPushNotificationChannelManagerStatics2 is access all IPushNotificationChannelManagerStatics2_Interface'Class;

   type IPushNotificationChannelManagerStatics3_Interface is interface and WinRt.IInspectable_Interface;
   type IPushNotificationChannelManagerStatics3 is access all IPushNotificationChannelManagerStatics3_Interface'Class;

   type IPushNotificationChannelManagerStatics4_Interface is interface and WinRt.IInspectable_Interface;
   type IPushNotificationChannelManagerStatics4 is access all IPushNotificationChannelManagerStatics4_Interface'Class;

   type IPushNotificationChannelsRevokedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IPushNotificationChannelsRevokedEventArgs is access all IPushNotificationChannelsRevokedEventArgs_Interface'Class;
   type IPushNotificationChannelsRevokedEventArgs_Ptr is access all IPushNotificationChannelsRevokedEventArgs;

   type IPushNotificationReceivedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IPushNotificationReceivedEventArgs is access all IPushNotificationReceivedEventArgs_Interface'Class;
   type IPushNotificationReceivedEventArgs_Ptr is access all IPushNotificationReceivedEventArgs;

   type IRawNotification_Interface is interface and WinRt.IInspectable_Interface;
   type IRawNotification is access all IRawNotification_Interface'Class;
   type IRawNotification_Ptr is access all IRawNotification;

   type IRawNotification2_Interface is interface and WinRt.IInspectable_Interface;
   type IRawNotification2 is access all IRawNotification2_Interface'Class;

   type IRawNotification3_Interface is interface and WinRt.IInspectable_Interface;
   type IRawNotification3 is access all IRawNotification3_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type PushNotificationChannel is new Ada.Finalization.Limited_Controlled with
      record
         m_IPushNotificationChannel : access Windows.Networking.PushNotifications.IPushNotificationChannel;
      end record;
   type PushNotificationChannel_Ptr is access all PushNotificationChannel;

   type PushNotificationChannelManagerForUser is new Ada.Finalization.Limited_Controlled with
      record
         m_IPushNotificationChannelManagerForUser : access Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser;
      end record;
   type PushNotificationChannelManagerForUser_Ptr is access all PushNotificationChannelManagerForUser;

   type PushNotificationChannelsRevokedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IPushNotificationChannelsRevokedEventArgs : access Windows.Networking.PushNotifications.IPushNotificationChannelsRevokedEventArgs;
      end record;
   type PushNotificationChannelsRevokedEventArgs_Ptr is access all PushNotificationChannelsRevokedEventArgs;

   type PushNotificationReceivedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IPushNotificationReceivedEventArgs : access Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs;
      end record;
   type PushNotificationReceivedEventArgs_Ptr is access all PushNotificationReceivedEventArgs;

   type RawNotification is new Ada.Finalization.Limited_Controlled with
      record
         m_IRawNotification : access Windows.Networking.PushNotifications.IRawNotification;
      end record;
   type RawNotification_Ptr is access all RawNotification;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type PushNotificationType is (
      Toast_e,
      Tile_e,
      Badge_e,
      Raw_e,
      TileFlyout_e
   );
   for PushNotificationType use (
      Toast_e => 0,
      Tile_e => 1,
      Badge_e => 2,
      Raw_e => 3,
      TileFlyout_e => 4
   );
   type PushNotificationType_Ptr is access all PushNotificationType;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IMapView_HString_HString is new WinRt.Windows.Foundation.Collections.IMapView (WinRt.HString, WinRt.HString);
   IID_IMapView_HString_HString : aliased WinRt.IID := (1435146924, 50044, 20480, (139, 217, 223, 189, 245, 123, 89, 255 ));
   function QInterface_IMapView_HString_HString is new Generic_QueryInterface (GenericObject_Interface, IMapView_HString_HString.Kind, IID_IMapView_HString_HString'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPushNotificationChannel is interface and WinRt.IInspectable;

      function get_Uri
      (
         this : access IPushNotificationChannel_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ExpirationTime
      (
         this : access IPushNotificationChannel_Interface;
         RetVal : access Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function Close
      (
         this : access IPushNotificationChannel_Interface
      )
      return WinRt.Hresult is abstract;

      function add_PushNotificationReceived
      (
         this : access IPushNotificationChannel_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PushNotificationReceived
      (
         this : access IPushNotificationChannel_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IPushNotificationChannel : aliased WinRt.IID := (724045870, 61195, 20281, (155, 138, 163, 193, 148, 222, 112, 129 ));

   -----------------------------------------------------------------------------
   -- type IPushNotificationChannelManagerForUser is interface and WinRt.IInspectable;

      function CreatePushNotificationChannelForApplicationAsync
      (
         this : access IPushNotificationChannelManagerForUser_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function CreatePushNotificationChannelForApplicationAsync
      (
         this : access IPushNotificationChannelManagerForUser_Interface;
         applicationId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function CreatePushNotificationChannelForSecondaryTileAsync
      (
         this : access IPushNotificationChannelManagerForUser_Interface;
         tileId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_User
      (
         this : access IPushNotificationChannelManagerForUser_Interface;
         RetVal : access Windows.System.IUser
      )
      return WinRt.Hresult is abstract;

      IID_IPushNotificationChannelManagerForUser : aliased WinRt.IID := (2764330756, 4482, 17095, (136, 144, 245, 99, 196, 137, 13, 196 ));

   -----------------------------------------------------------------------------
   -- type IPushNotificationChannelManagerForUser2 is interface and WinRt.IInspectable;

      function CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync
      (
         this : access IPushNotificationChannelManagerForUser2_Interface;
         appServerKey : Windows.Storage.Streams.IBuffer;
         channelId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync
      (
         this : access IPushNotificationChannelManagerForUser2_Interface;
         appServerKey : Windows.Storage.Streams.IBuffer;
         channelId : WinRt.HString;
         appId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPushNotificationChannelManagerForUser2 : aliased WinRt.IID := (3280668266, 31937, 19884, (135, 253, 190, 110, 146, 4, 20, 164 ));

   -----------------------------------------------------------------------------
   -- type IPushNotificationChannelManagerStatics is interface and WinRt.IInspectable;

      function CreatePushNotificationChannelForApplicationAsync
      (
         this : access IPushNotificationChannelManagerStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function CreatePushNotificationChannelForApplicationAsync
      (
         this : access IPushNotificationChannelManagerStatics_Interface;
         applicationId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function CreatePushNotificationChannelForSecondaryTileAsync
      (
         this : access IPushNotificationChannelManagerStatics_Interface;
         tileId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPushNotificationChannelManagerStatics : aliased WinRt.IID := (2343541605, 30625, 17800, (189, 25, 134, 21, 41, 169, 220, 240 ));

   -----------------------------------------------------------------------------
   -- type IPushNotificationChannelManagerStatics2 is interface and WinRt.IInspectable;

      function GetForUser
      (
         this : access IPushNotificationChannelManagerStatics2_Interface;
         user : Windows.System.IUser;
         RetVal : access Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser
      )
      return WinRt.Hresult is abstract;

      IID_IPushNotificationChannelManagerStatics2 : aliased WinRt.IID := (3024397917, 42985, 19240, (149, 14, 243, 117, 169, 7, 249, 223 ));

   -----------------------------------------------------------------------------
   -- type IPushNotificationChannelManagerStatics3 is interface and WinRt.IInspectable;

      function GetDefault
      (
         this : access IPushNotificationChannelManagerStatics3_Interface;
         RetVal : access Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser
      )
      return WinRt.Hresult is abstract;

      IID_IPushNotificationChannelManagerStatics3 : aliased WinRt.IID := (1191313150, 3806, 19007, (174, 120, 191, 164, 113, 73, 105, 37 ));

   -----------------------------------------------------------------------------
   -- type IPushNotificationChannelManagerStatics4 is interface and WinRt.IInspectable;

      function add_ChannelsRevoked
      (
         this : access IPushNotificationChannelManagerStatics4_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ChannelsRevoked
      (
         this : access IPushNotificationChannelManagerStatics4_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IPushNotificationChannelManagerStatics4 : aliased WinRt.IID := (3159625467, 30752, 23131, (156, 1, 180, 117, 127, 119, 64, 37 ));

   -----------------------------------------------------------------------------
   -- type IPushNotificationChannelsRevokedEventArgs is interface and WinRt.IInspectable;

      IID_IPushNotificationChannelsRevokedEventArgs : aliased WinRt.IID := (551658060, 6708, 23531, (170, 226, 64, 194, 50, 200, 193, 64 ));

   -----------------------------------------------------------------------------
   -- type IPushNotificationReceivedEventArgs is interface and WinRt.IInspectable;

      function put_Cancel
      (
         this : access IPushNotificationReceivedEventArgs_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_Cancel
      (
         this : access IPushNotificationReceivedEventArgs_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_NotificationType
      (
         this : access IPushNotificationReceivedEventArgs_Interface;
         RetVal : access Windows.Networking.PushNotifications.PushNotificationType
      )
      return WinRt.Hresult is abstract;

      function get_ToastNotification
      (
         this : access IPushNotificationReceivedEventArgs_Interface;
         RetVal : access Windows.UI.Notifications.IToastNotification
      )
      return WinRt.Hresult is abstract;

      function get_TileNotification
      (
         this : access IPushNotificationReceivedEventArgs_Interface;
         RetVal : access Windows.UI.Notifications.ITileNotification
      )
      return WinRt.Hresult is abstract;

      function get_BadgeNotification
      (
         this : access IPushNotificationReceivedEventArgs_Interface;
         RetVal : access Windows.UI.Notifications.IBadgeNotification
      )
      return WinRt.Hresult is abstract;

      function get_RawNotification
      (
         this : access IPushNotificationReceivedEventArgs_Interface;
         RetVal : access Windows.Networking.PushNotifications.IRawNotification
      )
      return WinRt.Hresult is abstract;

      IID_IPushNotificationReceivedEventArgs : aliased WinRt.IID := (3506855436, 14029, 18508, (185, 53, 10, 153, 183, 83, 207, 0 ));

   -----------------------------------------------------------------------------
   -- type IRawNotification is interface and WinRt.IInspectable;

      function get_Content
      (
         this : access IRawNotification_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IRawNotification : aliased WinRt.IID := (438465153, 15225, 17068, (153, 99, 34, 171, 0, 212, 240, 183 ));

   -----------------------------------------------------------------------------
   -- type IRawNotification2 is interface and WinRt.IInspectable;

      function get_Headers
      (
         this : access IRawNotification2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_ChannelId
      (
         this : access IRawNotification2_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IRawNotification2 : aliased WinRt.IID := (3872444185, 3183, 19677, (148, 36, 238, 197, 190, 1, 77, 38 ));

   -----------------------------------------------------------------------------
   -- type IRawNotification3 is interface and WinRt.IInspectable;

      function get_ContentBytes
      (
         this : access IRawNotification3_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      IID_IRawNotification3 : aliased WinRt.IID := (1651736030, 35443, 16972, (171, 68, 86, 53, 244, 10, 150, 229 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PushNotificationChannel

   overriding procedure Initialize (this : in out PushNotificationChannel);
   overriding procedure Finalize (this : in out PushNotificationChannel);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PushNotificationChannel

   function get_Uri
   (
      this : in out PushNotificationChannel
   )
   return WinRt.WString;

   function get_ExpirationTime
   (
      this : in out PushNotificationChannel
   )
   return WinRt.Windows.Foundation.DateTime;

   procedure Close
   (
      this : in out PushNotificationChannel
   );

   function add_PushNotificationReceived
   (
      this : in out PushNotificationChannel;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PushNotificationReceived
   (
      this : in out PushNotificationChannel;
      token : Windows.Foundation.EventRegistrationToken
   );

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package PushNotificationChannelManager is

      function GetForUser
      (
         user : Windows.System.User'Class
      )
      return WinRt.Windows.Networking.PushNotifications.PushNotificationChannelManagerForUser;

      function GetDefault
      return WinRt.Windows.Networking.PushNotifications.PushNotificationChannelManagerForUser;

      function add_ChannelsRevoked
      (
         handler : GenericObject
      )
      return WinRt.Windows.Foundation.EventRegistrationToken;

      procedure remove_ChannelsRevoked
      (
         token : Windows.Foundation.EventRegistrationToken
      );

      function CreatePushNotificationChannelForApplicationAsync
      return WinRt.Windows.Networking.PushNotifications.PushNotificationChannel;

      function CreatePushNotificationChannelForApplicationAsync
      (
         applicationId : WinRt.WString
      )
      return WinRt.Windows.Networking.PushNotifications.PushNotificationChannel;

      function CreatePushNotificationChannelForSecondaryTileAsync
      (
         tileId : WinRt.WString
      )
      return WinRt.Windows.Networking.PushNotifications.PushNotificationChannel;

   end PushNotificationChannelManager;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PushNotificationChannelManagerForUser

   overriding procedure Initialize (this : in out PushNotificationChannelManagerForUser);
   overriding procedure Finalize (this : in out PushNotificationChannelManagerForUser);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PushNotificationChannelManagerForUser

   function CreatePushNotificationChannelForApplicationAsync
   (
      this : in out PushNotificationChannelManagerForUser
   )
   return WinRt.Windows.Networking.PushNotifications.PushNotificationChannel'Class;

   function CreatePushNotificationChannelForApplicationAsync
   (
      this : in out PushNotificationChannelManagerForUser;
      applicationId : WinRt.WString
   )
   return WinRt.Windows.Networking.PushNotifications.PushNotificationChannel'Class;

   function CreatePushNotificationChannelForSecondaryTileAsync
   (
      this : in out PushNotificationChannelManagerForUser;
      tileId : WinRt.WString
   )
   return WinRt.Windows.Networking.PushNotifications.PushNotificationChannel'Class;

   function get_User
   (
      this : in out PushNotificationChannelManagerForUser
   )
   return WinRt.Windows.System.User'Class;

   function CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync
   (
      this : in out PushNotificationChannelManagerForUser;
      appServerKey : Windows.Storage.Streams.IBuffer;
      channelId : WinRt.WString
   )
   return WinRt.Windows.Networking.PushNotifications.PushNotificationChannel'Class;

   function CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync
   (
      this : in out PushNotificationChannelManagerForUser;
      appServerKey : Windows.Storage.Streams.IBuffer;
      channelId : WinRt.WString;
      appId : WinRt.WString
   )
   return WinRt.Windows.Networking.PushNotifications.PushNotificationChannel'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PushNotificationChannelsRevokedEventArgs

   overriding procedure Initialize (this : in out PushNotificationChannelsRevokedEventArgs);
   overriding procedure Finalize (this : in out PushNotificationChannelsRevokedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PushNotificationChannelsRevokedEventArgs

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PushNotificationReceivedEventArgs

   overriding procedure Initialize (this : in out PushNotificationReceivedEventArgs);
   overriding procedure Finalize (this : in out PushNotificationReceivedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PushNotificationReceivedEventArgs

   procedure put_Cancel
   (
      this : in out PushNotificationReceivedEventArgs;
      value : WinRt.Boolean
   );

   function get_Cancel
   (
      this : in out PushNotificationReceivedEventArgs
   )
   return WinRt.Boolean;

   function get_NotificationType
   (
      this : in out PushNotificationReceivedEventArgs
   )
   return WinRt.Windows.Networking.PushNotifications.PushNotificationType;

   function get_ToastNotification
   (
      this : in out PushNotificationReceivedEventArgs
   )
   return WinRt.Windows.UI.Notifications.ToastNotification'Class;

   function get_TileNotification
   (
      this : in out PushNotificationReceivedEventArgs
   )
   return WinRt.Windows.UI.Notifications.TileNotification'Class;

   function get_BadgeNotification
   (
      this : in out PushNotificationReceivedEventArgs
   )
   return WinRt.Windows.UI.Notifications.BadgeNotification'Class;

   function get_RawNotification
   (
      this : in out PushNotificationReceivedEventArgs
   )
   return WinRt.Windows.Networking.PushNotifications.RawNotification'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for RawNotification

   overriding procedure Initialize (this : in out RawNotification);
   overriding procedure Finalize (this : in out RawNotification);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for RawNotification

   function get_Content
   (
      this : in out RawNotification
   )
   return WinRt.WString;

   function get_Headers
   (
      this : in out RawNotification
   )
   return IMapView_HString_HString.Kind;

   function get_ChannelId
   (
      this : in out RawNotification
   )
   return WinRt.WString;

   function get_ContentBytes
   (
      this : in out RawNotification
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

end;
