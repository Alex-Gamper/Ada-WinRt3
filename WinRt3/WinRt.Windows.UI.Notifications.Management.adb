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
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.UI.Notifications.Management is

   package IAsyncOperation_UserNotificationListenerAccessStatus is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus);
   package AsyncOperationCompletedHandler_UserNotificationListenerAccessStatus is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus);

   package IAsyncOperation_GenericObject is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.GenericObject);
   package AsyncOperationCompletedHandler_GenericObject is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.GenericObject);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for UserNotificationListener

   procedure Initialize (this : in out UserNotificationListener) is
   begin
      null;
   end;

   procedure Finalize (this : in out UserNotificationListener) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IUserNotificationListener, IUserNotificationListener_Ptr);
   begin
      if this.m_IUserNotificationListener /= null then
         if this.m_IUserNotificationListener.all /= null then
            RefCount := this.m_IUserNotificationListener.all.Release;
            Free (this.m_IUserNotificationListener);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for UserNotificationListener

   function get_Current
   return WinRt.Windows.UI.Notifications.Management.UserNotificationListener is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.UI.Notifications.Management.UserNotificationListener");
      m_Factory        : access WinRt.Windows.UI.Notifications.Management.IUserNotificationListenerStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Notifications.Management.IUserNotificationListener;
   begin
      return RetVal : WinRt.Windows.UI.Notifications.Management.UserNotificationListener do
         Hr := RoGetActivationFactory (m_hString, IID_IUserNotificationListenerStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_Current (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IUserNotificationListener := new Windows.UI.Notifications.Management.IUserNotificationListener;
            Retval.m_IUserNotificationListener.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for UserNotificationListener

   function RequestAccessAsync
   (
      this : in out UserNotificationListener
   )
   return WinRt.Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_UserNotificationListenerAccessStatus.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_UserNotificationListenerAccessStatus.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus;
      m_IID            : aliased WinRt.IID := (263903431, 2159, 23545, (129, 226, 141, 121, 231, 24, 72, 3 )); -- Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus;
      m_HandlerIID     : aliased WinRt.IID := (4036920378, 5067, 21915, (169, 252, 1, 87, 34, 194, 205, 87 ));
      m_Handler        : AsyncOperationCompletedHandler_UserNotificationListenerAccessStatus.Kind := new AsyncOperationCompletedHandler_UserNotificationListenerAccessStatus.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_UserNotificationListenerAccessStatus.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_UserNotificationListenerAccessStatus.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_UserNotificationListenerAccessStatus.Kind_Delegate, AsyncOperationCompletedHandler_UserNotificationListenerAccessStatus.Kind);

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
      Hr := this.m_IUserNotificationListener.all.RequestAccessAsync (m_ComRetVal'Access);
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

   function GetAccessStatus
   (
      this : in out UserNotificationListener
   )
   return WinRt.Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus;
   begin
      Hr := this.m_IUserNotificationListener.all.GetAccessStatus (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function add_NotificationChanged
   (
      this : in out UserNotificationListener;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IUserNotificationListener.all.add_NotificationChanged (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_NotificationChanged
   (
      this : in out UserNotificationListener;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IUserNotificationListener.all.remove_NotificationChanged (token);
   end;

   function GetNotificationsAsync
   (
      this : in out UserNotificationListener;
      kinds : Windows.UI.Notifications.NotificationKinds
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_GenericObject.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_GenericObject.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.GenericObject;
      m_IID            : aliased WinRt.IID := (3212787004, 8975, 21738, (173, 116, 12, 246, 197, 92, 216, 209 )); -- GenericObject;
      m_HandlerIID     : aliased WinRt.IID := (2655186184, 17843, 22083, (181, 199, 178, 22, 245, 120, 21, 148 ));
      m_Handler        : AsyncOperationCompletedHandler_GenericObject.Kind := new AsyncOperationCompletedHandler_GenericObject.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_GenericObject.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_GenericObject.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_GenericObject.Kind_Delegate, AsyncOperationCompletedHandler_GenericObject.Kind);

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
      Hr := this.m_IUserNotificationListener.all.GetNotificationsAsync (kinds, m_ComRetVal'Access);
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

   function GetNotification
   (
      this : in out UserNotificationListener;
      notificationId : WinRt.UInt32
   )
   return WinRt.Windows.UI.Notifications.UserNotification'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Notifications.IUserNotification;
   begin
      return RetVal : WinRt.Windows.UI.Notifications.UserNotification do
         Hr := this.m_IUserNotificationListener.all.GetNotification (notificationId, m_ComRetVal'Access);
         Retval.m_IUserNotification := new Windows.UI.Notifications.IUserNotification;
         Retval.m_IUserNotification.all := m_ComRetVal;
      end return;
   end;

   procedure ClearNotifications
   (
      this : in out UserNotificationListener
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IUserNotificationListener.all.ClearNotifications;
   end;

   procedure RemoveNotification
   (
      this : in out UserNotificationListener;
      notificationId : WinRt.UInt32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IUserNotificationListener.all.RemoveNotification (notificationId);
   end;

end;