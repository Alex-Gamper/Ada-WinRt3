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
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.UI.Notifications.Management is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IUserNotificationListener_Interface is interface and WinRt.IInspectable_Interface;
   type IUserNotificationListener is access IUserNotificationListener_Interface'Class;
   type IUserNotificationListener_Ptr is access all IUserNotificationListener;

   type IUserNotificationListenerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IUserNotificationListenerStatics is access IUserNotificationListenerStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type UserNotificationListener is new Ada.Finalization.Limited_Controlled with
      record
         m_IUserNotificationListener : access Windows.UI.Notifications.Management.IUserNotificationListener;
      end record;
   type UserNotificationListener_Ptr is access all UserNotificationListener;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type UserNotificationListenerAccessStatus is (
      Unspecified_e,
      Allowed_e,
      Denied_e
   );
   for UserNotificationListenerAccessStatus use (
      Unspecified_e => 0,
      Allowed_e => 1,
      Denied_e => 2
   );
   type UserNotificationListenerAccessStatus_Ptr is access UserNotificationListenerAccessStatus;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IUserNotificationListener is interface and WinRt.IInspectable;

      function RequestAccessAsync
      (
         this : access IUserNotificationListener_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetAccessStatus
      (
         this : access IUserNotificationListener_Interface;
         RetVal : access Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus
      )
      return WinRt.Hresult is abstract;

      function add_NotificationChanged
      (
         this : access IUserNotificationListener_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_NotificationChanged
      (
         this : access IUserNotificationListener_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function GetNotificationsAsync
      (
         this : access IUserNotificationListener_Interface;
         kinds : Windows.UI.Notifications.NotificationKinds;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetNotification
      (
         this : access IUserNotificationListener_Interface;
         notificationId : WinRt.UInt32;
         RetVal : access Windows.UI.Notifications.IUserNotification
      )
      return WinRt.Hresult is abstract;

      function ClearNotifications
      (
         this : access IUserNotificationListener_Interface
      )
      return WinRt.Hresult is abstract;

      function RemoveNotification
      (
         this : access IUserNotificationListener_Interface;
         notificationId : WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      IID_IUserNotificationListener : aliased WinRt.IID := (1649753665, 35334, 19695, (130, 21, 96, 51, 165, 190, 75, 3 ));

   -----------------------------------------------------------------------------
   -- type IUserNotificationListenerStatics is interface and WinRt.IInspectable;

      function get_Current
      (
         this : access IUserNotificationListenerStatics_Interface;
         RetVal : access Windows.UI.Notifications.Management.IUserNotificationListener
      )
      return WinRt.Hresult is abstract;

      IID_IUserNotificationListenerStatics : aliased WinRt.IID := (4284556239, 17286, 19107, (183, 61, 184, 4, 229, 182, 59, 35 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for UserNotificationListener

   overriding procedure Initialize (this : in out UserNotificationListener);
   overriding procedure Finalize (this : in out UserNotificationListener);

   -----------------------------------------------------------------------------
   -- Static Interfaces for UserNotificationListener

   function get_Current
   return WinRt.Windows.UI.Notifications.Management.UserNotificationListener;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for UserNotificationListener

   function RequestAccessAsync
   (
      this : in out UserNotificationListener
   )
   return WinRt.Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus;

   function GetAccessStatus
   (
      this : in out UserNotificationListener
   )
   return WinRt.Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus;

   function add_NotificationChanged
   (
      this : in out UserNotificationListener;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_NotificationChanged
   (
      this : in out UserNotificationListener;
      token : Windows.Foundation.EventRegistrationToken
   );

   function GetNotificationsAsync
   (
      this : in out UserNotificationListener;
      kinds : Windows.UI.Notifications.NotificationKinds
   )
   return WinRt.GenericObject;

   function GetNotification
   (
      this : in out UserNotificationListener;
      notificationId : WinRt.UInt32
   )
   return WinRt.Windows.UI.Notifications.UserNotification'Class;

   procedure ClearNotifications
   (
      this : in out UserNotificationListener
   );

   procedure RemoveNotification
   (
      this : in out UserNotificationListener;
      notificationId : WinRt.UInt32
   );

end;
