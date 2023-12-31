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
with WinRt.Windows.Storage;
with WinRt.Windows.Storage.Streams;
with WinRt.Windows.System;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Security.DataProtection is

   package IAsyncOperation_UserDataStorageItemProtectionStatus is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Security.DataProtection.UserDataStorageItemProtectionStatus);
   package AsyncOperationCompletedHandler_UserDataStorageItemProtectionStatus is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Security.DataProtection.UserDataStorageItemProtectionStatus);

   package IAsyncOperation_UserDataStorageItemProtectionInfo is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Security.DataProtection.IUserDataStorageItemProtectionInfo);
   package AsyncOperationCompletedHandler_UserDataStorageItemProtectionInfo is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Security.DataProtection.IUserDataStorageItemProtectionInfo);

   package IAsyncOperation_IBuffer is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Storage.Streams.IBuffer);
   package AsyncOperationCompletedHandler_IBuffer is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Storage.Streams.IBuffer);

   package IAsyncOperation_UserDataBufferUnprotectResult is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Security.DataProtection.IUserDataBufferUnprotectResult);
   package AsyncOperationCompletedHandler_UserDataBufferUnprotectResult is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Security.DataProtection.IUserDataBufferUnprotectResult);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for UserDataAvailabilityStateChangedEventArgs

   procedure Initialize (this : in out UserDataAvailabilityStateChangedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out UserDataAvailabilityStateChangedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IUserDataAvailabilityStateChangedEventArgs, IUserDataAvailabilityStateChangedEventArgs_Ptr);
   begin
      if this.m_IUserDataAvailabilityStateChangedEventArgs /= null then
         if this.m_IUserDataAvailabilityStateChangedEventArgs.all /= null then
            RefCount := this.m_IUserDataAvailabilityStateChangedEventArgs.all.Release;
            Free (this.m_IUserDataAvailabilityStateChangedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for UserDataAvailabilityStateChangedEventArgs

   function GetDeferral
   (
      this : in out UserDataAvailabilityStateChangedEventArgs
   )
   return WinRt.Windows.Foundation.Deferral'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.IDeferral;
   begin
      return RetVal : WinRt.Windows.Foundation.Deferral do
         Hr := this.m_IUserDataAvailabilityStateChangedEventArgs.all.GetDeferral (m_ComRetVal'Access);
         Retval.m_IDeferral := new Windows.Foundation.IDeferral;
         Retval.m_IDeferral.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for UserDataBufferUnprotectResult

   procedure Initialize (this : in out UserDataBufferUnprotectResult) is
   begin
      null;
   end;

   procedure Finalize (this : in out UserDataBufferUnprotectResult) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IUserDataBufferUnprotectResult, IUserDataBufferUnprotectResult_Ptr);
   begin
      if this.m_IUserDataBufferUnprotectResult /= null then
         if this.m_IUserDataBufferUnprotectResult.all /= null then
            RefCount := this.m_IUserDataBufferUnprotectResult.all.Release;
            Free (this.m_IUserDataBufferUnprotectResult);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for UserDataBufferUnprotectResult

   function get_Status
   (
      this : in out UserDataBufferUnprotectResult
   )
   return WinRt.Windows.Security.DataProtection.UserDataBufferUnprotectStatus is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Security.DataProtection.UserDataBufferUnprotectStatus;
   begin
      Hr := this.m_IUserDataBufferUnprotectResult.all.get_Status (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_UnprotectedBuffer
   (
      this : in out UserDataBufferUnprotectResult
   )
   return WinRt.Windows.Storage.Streams.IBuffer is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Storage.Streams.IBuffer;
   begin
      Hr := this.m_IUserDataBufferUnprotectResult.all.get_UnprotectedBuffer (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for UserDataProtectionManager

   procedure Initialize (this : in out UserDataProtectionManager) is
   begin
      null;
   end;

   procedure Finalize (this : in out UserDataProtectionManager) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IUserDataProtectionManager, IUserDataProtectionManager_Ptr);
   begin
      if this.m_IUserDataProtectionManager /= null then
         if this.m_IUserDataProtectionManager.all /= null then
            RefCount := this.m_IUserDataProtectionManager.all.Release;
            Free (this.m_IUserDataProtectionManager);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for UserDataProtectionManager

   function TryGetDefault
   return WinRt.Windows.Security.DataProtection.UserDataProtectionManager is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Security.DataProtection.UserDataProtectionManager");
      m_Factory        : access WinRt.Windows.Security.DataProtection.IUserDataProtectionManagerStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Security.DataProtection.IUserDataProtectionManager;
   begin
      return RetVal : WinRt.Windows.Security.DataProtection.UserDataProtectionManager do
         Hr := RoGetActivationFactory (m_hString, IID_IUserDataProtectionManagerStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.TryGetDefault (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IUserDataProtectionManager := new Windows.Security.DataProtection.IUserDataProtectionManager;
            Retval.m_IUserDataProtectionManager.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function TryGetForUser
   (
      user : Windows.System.User'Class
   )
   return WinRt.Windows.Security.DataProtection.UserDataProtectionManager is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Security.DataProtection.UserDataProtectionManager");
      m_Factory        : access WinRt.Windows.Security.DataProtection.IUserDataProtectionManagerStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Security.DataProtection.IUserDataProtectionManager;
   begin
      return RetVal : WinRt.Windows.Security.DataProtection.UserDataProtectionManager do
         Hr := RoGetActivationFactory (m_hString, IID_IUserDataProtectionManagerStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.TryGetForUser (user.m_IUser.all, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IUserDataProtectionManager := new Windows.Security.DataProtection.IUserDataProtectionManager;
            Retval.m_IUserDataProtectionManager.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for UserDataProtectionManager

   function ProtectStorageItemAsync
   (
      this : in out UserDataProtectionManager;
      storageItem : Windows.Storage.IStorageItem;
      availability : Windows.Security.DataProtection.UserDataAvailability
   )
   return WinRt.Windows.Security.DataProtection.UserDataStorageItemProtectionStatus is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_UserDataStorageItemProtectionStatus.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_UserDataStorageItemProtectionStatus.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Security.DataProtection.UserDataStorageItemProtectionStatus;
      m_IID            : aliased WinRt.IID := (3854970301, 57385, 21217, (175, 213, 115, 247, 164, 34, 61, 230 )); -- Windows.Security.DataProtection.UserDataStorageItemProtectionStatus;
      m_HandlerIID     : aliased WinRt.IID := (943730012, 50564, 21215, (154, 234, 121, 104, 103, 166, 104, 53 ));
      m_Handler        : AsyncOperationCompletedHandler_UserDataStorageItemProtectionStatus.Kind := new AsyncOperationCompletedHandler_UserDataStorageItemProtectionStatus.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_UserDataStorageItemProtectionStatus.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_UserDataStorageItemProtectionStatus.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_UserDataStorageItemProtectionStatus.Kind_Delegate, AsyncOperationCompletedHandler_UserDataStorageItemProtectionStatus.Kind);

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
      Hr := this.m_IUserDataProtectionManager.all.ProtectStorageItemAsync (storageItem, availability, m_ComRetVal'Access);
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

   function GetStorageItemProtectionInfoAsync
   (
      this : in out UserDataProtectionManager;
      storageItem : Windows.Storage.IStorageItem
   )
   return WinRt.Windows.Security.DataProtection.UserDataStorageItemProtectionInfo'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_UserDataStorageItemProtectionInfo.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_UserDataStorageItemProtectionInfo.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Security.DataProtection.IUserDataStorageItemProtectionInfo;
      m_IID            : aliased WinRt.IID := (687838034, 23730, 24455, (159, 8, 222, 202, 207, 79, 89, 179 )); -- Windows.Security.DataProtection.UserDataStorageItemProtectionInfo;
      m_HandlerIID     : aliased WinRt.IID := (2860606682, 55424, 23029, (128, 147, 102, 77, 5, 45, 116, 181 ));
      m_Handler        : AsyncOperationCompletedHandler_UserDataStorageItemProtectionInfo.Kind := new AsyncOperationCompletedHandler_UserDataStorageItemProtectionInfo.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_UserDataStorageItemProtectionInfo.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_UserDataStorageItemProtectionInfo.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_UserDataStorageItemProtectionInfo.Kind_Delegate, AsyncOperationCompletedHandler_UserDataStorageItemProtectionInfo.Kind);

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
      return RetVal : WinRt.Windows.Security.DataProtection.UserDataStorageItemProtectionInfo do
         Hr := this.m_IUserDataProtectionManager.all.GetStorageItemProtectionInfoAsync (storageItem, m_ComRetVal'Access);
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
                  Retval.m_IUserDataStorageItemProtectionInfo := new Windows.Security.DataProtection.IUserDataStorageItemProtectionInfo;
                  Retval.m_IUserDataStorageItemProtectionInfo.all := m_RetVal;
               end if;
               m_RefCount := m_AsyncOperation.Release;
               m_RefCount := m_Handler.Release;
               if m_RefCount = 0 then
                  Free (m_Handler);
               end if;
            end if;
         end if;
      end return;
   end;

   function ProtectBufferAsync
   (
      this : in out UserDataProtectionManager;
      unprotectedBuffer : Windows.Storage.Streams.IBuffer;
      availability : Windows.Security.DataProtection.UserDataAvailability
   )
   return WinRt.Windows.Storage.Streams.IBuffer is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_IBuffer.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_IBuffer.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Storage.Streams.IBuffer;
      m_IID            : aliased WinRt.IID := (1005488180, 47527, 23168, (167, 70, 94, 240, 151, 34, 120, 120 )); -- Windows.Storage.Streams.IBuffer;
      m_HandlerIID     : aliased WinRt.IID := (1371788029, 47265, 22048, (183, 70, 126, 230, 213, 51, 172, 163 ));
      m_Handler        : AsyncOperationCompletedHandler_IBuffer.Kind := new AsyncOperationCompletedHandler_IBuffer.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_IBuffer.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_IBuffer.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_IBuffer.Kind_Delegate, AsyncOperationCompletedHandler_IBuffer.Kind);

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
      Hr := this.m_IUserDataProtectionManager.all.ProtectBufferAsync (unprotectedBuffer, availability, m_ComRetVal'Access);
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

   function UnprotectBufferAsync
   (
      this : in out UserDataProtectionManager;
      protectedBuffer : Windows.Storage.Streams.IBuffer
   )
   return WinRt.Windows.Security.DataProtection.UserDataBufferUnprotectResult'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_UserDataBufferUnprotectResult.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_UserDataBufferUnprotectResult.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Security.DataProtection.IUserDataBufferUnprotectResult;
      m_IID            : aliased WinRt.IID := (4168508717, 65505, 23671, (166, 145, 43, 219, 64, 76, 250, 111 )); -- Windows.Security.DataProtection.UserDataBufferUnprotectResult;
      m_HandlerIID     : aliased WinRt.IID := (3081625265, 13942, 20889, (161, 254, 189, 79, 96, 35, 17, 159 ));
      m_Handler        : AsyncOperationCompletedHandler_UserDataBufferUnprotectResult.Kind := new AsyncOperationCompletedHandler_UserDataBufferUnprotectResult.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_UserDataBufferUnprotectResult.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_UserDataBufferUnprotectResult.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_UserDataBufferUnprotectResult.Kind_Delegate, AsyncOperationCompletedHandler_UserDataBufferUnprotectResult.Kind);

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
      return RetVal : WinRt.Windows.Security.DataProtection.UserDataBufferUnprotectResult do
         Hr := this.m_IUserDataProtectionManager.all.UnprotectBufferAsync (protectedBuffer, m_ComRetVal'Access);
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
                  Retval.m_IUserDataBufferUnprotectResult := new Windows.Security.DataProtection.IUserDataBufferUnprotectResult;
                  Retval.m_IUserDataBufferUnprotectResult.all := m_RetVal;
               end if;
               m_RefCount := m_AsyncOperation.Release;
               m_RefCount := m_Handler.Release;
               if m_RefCount = 0 then
                  Free (m_Handler);
               end if;
            end if;
         end if;
      end return;
   end;

   function IsContinuedDataAvailabilityExpected
   (
      this : in out UserDataProtectionManager;
      availability : Windows.Security.DataProtection.UserDataAvailability
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IUserDataProtectionManager.all.IsContinuedDataAvailabilityExpected (availability, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function add_DataAvailabilityStateChanged
   (
      this : in out UserDataProtectionManager;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IUserDataProtectionManager.all.add_DataAvailabilityStateChanged (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_DataAvailabilityStateChanged
   (
      this : in out UserDataProtectionManager;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IUserDataProtectionManager.all.remove_DataAvailabilityStateChanged (token);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for UserDataStorageItemProtectionInfo

   procedure Initialize (this : in out UserDataStorageItemProtectionInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out UserDataStorageItemProtectionInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IUserDataStorageItemProtectionInfo, IUserDataStorageItemProtectionInfo_Ptr);
   begin
      if this.m_IUserDataStorageItemProtectionInfo /= null then
         if this.m_IUserDataStorageItemProtectionInfo.all /= null then
            RefCount := this.m_IUserDataStorageItemProtectionInfo.all.Release;
            Free (this.m_IUserDataStorageItemProtectionInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for UserDataStorageItemProtectionInfo

   function get_Availability
   (
      this : in out UserDataStorageItemProtectionInfo
   )
   return WinRt.Windows.Security.DataProtection.UserDataAvailability is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Security.DataProtection.UserDataAvailability;
   begin
      Hr := this.m_IUserDataStorageItemProtectionInfo.all.get_Availability (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

end;
