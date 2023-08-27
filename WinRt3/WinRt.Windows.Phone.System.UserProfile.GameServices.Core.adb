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
with WinRt.Windows.Storage.Streams;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Phone.System.UserProfile.GameServices.Core is

   package IAsyncOperation_GameServicePropertyCollection is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameServicePropertyCollection);
   package AsyncOperationCompletedHandler_GameServicePropertyCollection is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameServicePropertyCollection);

   package IAsyncOperation_HString is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.HString);
   package AsyncOperationCompletedHandler_HString is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.HString);

   package IAsyncOperation_IInspectable is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.IInspectable);
   package AsyncOperationCompletedHandler_IInspectable is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.IInspectable);

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package body GameService is

      function get_ServiceUri
      return WinRt.Windows.Foundation.Uri is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased Windows.Foundation.IUriRuntimeClass;
      begin
         return RetVal : WinRt.Windows.Foundation.Uri do
            Hr := RoGetActivationFactory (m_hString, IID_IGameService'Access , m_Factory'Address);
            if Hr = S_OK then
               Hr := m_Factory.get_ServiceUri (m_ComRetVal'Access);
               m_RefCount := m_Factory.Release;
               Retval.m_IUriRuntimeClass := new Windows.Foundation.IUriRuntimeClass;
               Retval.m_IUriRuntimeClass.all := m_ComRetVal;
            end if;
            Hr := WindowsDeleteString (m_hString);
         end return;
      end;

      function GetGamerProfileAsync
      return WinRt.Windows.Phone.System.UserProfile.GameServices.Core.GameServicePropertyCollection is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_Temp           : WinRt.Int32 := 0;
         m_Completed      : WinRt.UInt32 := 0;
         m_Captured       : WinRt.UInt32 := 0;
         m_Compare        : constant WinRt.UInt32 := 0;

         use type WinRt.Windows.Foundation.AsyncStatus;
         use type IAsyncOperation_GameServicePropertyCollection.Kind;

         procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

         m_AsyncOperation : aliased IAsyncOperation_GameServicePropertyCollection.Kind;
         m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
         m_ComRetVal      : aliased WinRt.GenericObject := null;
         m_RetVal         : aliased WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameServicePropertyCollection;
         m_IID            : aliased WinRt.IID := (405332204, 46029, 23058, (134, 100, 247, 42, 85, 109, 230, 79 )); -- Windows.Phone.System.UserProfile.GameServices.Core.GameServicePropertyCollection;
         m_HandlerIID     : aliased WinRt.IID := (3540645608, 17247, 21024, (150, 80, 227, 112, 176, 78, 42, 56 ));
         m_Handler        : AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind := new AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

         function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_GameServicePropertyCollection.Kind, m_IID'Unchecked_Access);
         function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind, GenericObject);
         procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind_Delegate, AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind);

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
         return RetVal : WinRt.Windows.Phone.System.UserProfile.GameServices.Core.GameServicePropertyCollection do
            Hr := RoGetActivationFactory (m_hString, IID_IGameService'Access , m_Factory'Address);
            if Hr = S_OK then
               Hr := m_Factory.GetGamerProfileAsync (m_ComRetVal'Access);
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
                        Retval.m_IGameServicePropertyCollection := new Windows.Phone.System.UserProfile.GameServices.Core.IGameServicePropertyCollection;
                        Retval.m_IGameServicePropertyCollection.all := m_RetVal;
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

      function GetInstalledGameItemsAsync
      return WinRt.Windows.Phone.System.UserProfile.GameServices.Core.GameServicePropertyCollection is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_Temp           : WinRt.Int32 := 0;
         m_Completed      : WinRt.UInt32 := 0;
         m_Captured       : WinRt.UInt32 := 0;
         m_Compare        : constant WinRt.UInt32 := 0;

         use type WinRt.Windows.Foundation.AsyncStatus;
         use type IAsyncOperation_GameServicePropertyCollection.Kind;

         procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

         m_AsyncOperation : aliased IAsyncOperation_GameServicePropertyCollection.Kind;
         m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
         m_ComRetVal      : aliased WinRt.GenericObject := null;
         m_RetVal         : aliased WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameServicePropertyCollection;
         m_IID            : aliased WinRt.IID := (405332204, 46029, 23058, (134, 100, 247, 42, 85, 109, 230, 79 )); -- Windows.Phone.System.UserProfile.GameServices.Core.GameServicePropertyCollection;
         m_HandlerIID     : aliased WinRt.IID := (3540645608, 17247, 21024, (150, 80, 227, 112, 176, 78, 42, 56 ));
         m_Handler        : AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind := new AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

         function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_GameServicePropertyCollection.Kind, m_IID'Unchecked_Access);
         function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind, GenericObject);
         procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind_Delegate, AsyncOperationCompletedHandler_GameServicePropertyCollection.Kind);

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
         return RetVal : WinRt.Windows.Phone.System.UserProfile.GameServices.Core.GameServicePropertyCollection do
            Hr := RoGetActivationFactory (m_hString, IID_IGameService'Access , m_Factory'Address);
            if Hr = S_OK then
               Hr := m_Factory.GetInstalledGameItemsAsync (m_ComRetVal'Access);
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
                        Retval.m_IGameServicePropertyCollection := new Windows.Phone.System.UserProfile.GameServices.Core.IGameServicePropertyCollection;
                        Retval.m_IGameServicePropertyCollection.all := m_RetVal;
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

      function GetPartnerTokenAsync
      (
         audienceUri : Windows.Foundation.Uri'Class
      )
      return WinRt.WString is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_Temp           : WinRt.Int32 := 0;
         m_Completed      : WinRt.UInt32 := 0;
         m_Captured       : WinRt.UInt32 := 0;
         m_Compare        : constant WinRt.UInt32 := 0;

         use type WinRt.Windows.Foundation.AsyncStatus;
         use type IAsyncOperation_HString.Kind;

         procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

         m_AsyncOperation : aliased IAsyncOperation_HString.Kind;
         m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
         m_ComRetVal      : aliased WinRt.GenericObject := null;
         m_RetVal         : aliased WinRt.HString;
         AdaRetval        : WString;
         m_IID            : aliased WinRt.IID := (1042277891, 63639, 21091, (179, 40, 8, 6, 66, 107, 138, 121 )); -- HString;
         m_HandlerIID     : aliased WinRt.IID := (3080352799, 32693, 20654, (158, 153, 145, 18, 1, 236, 61, 65 ));
         m_Handler        : AsyncOperationCompletedHandler_HString.Kind := new AsyncOperationCompletedHandler_HString.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

         function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_HString.Kind, m_IID'Unchecked_Access);
         function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_HString.Kind, GenericObject);
         procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_HString.Kind_Delegate, AsyncOperationCompletedHandler_HString.Kind);

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
         Hr := RoGetActivationFactory (m_hString, IID_IGameService'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetPartnerTokenAsync (audienceUri.m_IUriRuntimeClass.all, m_ComRetVal'Access);
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
         AdaRetval := To_Ada (m_RetVal);
         Hr := WindowsDeleteString (m_RetVal);
         return AdaRetVal;
      end;

      function GetPrivilegesAsync
      return WinRt.WString is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_Temp           : WinRt.Int32 := 0;
         m_Completed      : WinRt.UInt32 := 0;
         m_Captured       : WinRt.UInt32 := 0;
         m_Compare        : constant WinRt.UInt32 := 0;

         use type WinRt.Windows.Foundation.AsyncStatus;
         use type IAsyncOperation_HString.Kind;

         procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

         m_AsyncOperation : aliased IAsyncOperation_HString.Kind;
         m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
         m_ComRetVal      : aliased WinRt.GenericObject := null;
         m_RetVal         : aliased WinRt.HString;
         AdaRetval        : WString;
         m_IID            : aliased WinRt.IID := (1042277891, 63639, 21091, (179, 40, 8, 6, 66, 107, 138, 121 )); -- HString;
         m_HandlerIID     : aliased WinRt.IID := (3080352799, 32693, 20654, (158, 153, 145, 18, 1, 236, 61, 65 ));
         m_Handler        : AsyncOperationCompletedHandler_HString.Kind := new AsyncOperationCompletedHandler_HString.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

         function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_HString.Kind, m_IID'Unchecked_Access);
         function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_HString.Kind, GenericObject);
         procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_HString.Kind_Delegate, AsyncOperationCompletedHandler_HString.Kind);

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
         Hr := RoGetActivationFactory (m_hString, IID_IGameService'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetPrivilegesAsync (m_ComRetVal'Access);
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
         AdaRetval := To_Ada (m_RetVal);
         Hr := WindowsDeleteString (m_RetVal);
         return AdaRetVal;
      end;

      procedure GrantAchievement
      (
         achievementId : WinRt.UInt32
      ) is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameService'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GrantAchievement (achievementId);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end;

      procedure GrantAvatarAward
      (
         avatarAwardId : WinRt.UInt32
      ) is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameService'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GrantAvatarAward (avatarAwardId);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end;

      procedure PostResult
      (
         gameVariant : WinRt.UInt32;
         scoreKind : Windows.Phone.System.UserProfile.GameServices.Core.GameServiceScoreKind;
         scoreValue : WinRt.Int64;
         gameOutcome : Windows.Phone.System.UserProfile.GameServices.Core.GameServiceGameOutcome;
         buffer : Windows.Storage.Streams.IBuffer
      ) is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameService'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.PostResult (gameVariant, scoreKind, scoreValue, gameOutcome, buffer);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end;

      procedure NotifyPartnerTokenExpired
      (
         audienceUri : Windows.Foundation.Uri'Class
      ) is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService2_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameService2'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.NotifyPartnerTokenExpired (audienceUri.m_IUriRuntimeClass.all);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end;

      function GetAuthenticationStatus
      return WinRt.UInt32 is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Phone.System.UserProfile.GameServices.Core.GameService");
         m_Factory        : access WinRt.Windows.Phone.System.UserProfile.GameServices.Core.IGameService2_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased WinRt.UInt32;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameService2'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetAuthenticationStatus (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         return m_ComRetVal;
      end;

   end GameService;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameServicePropertyCollection

   procedure Initialize (this : in out GameServicePropertyCollection) is
   begin
      null;
   end;

   procedure Finalize (this : in out GameServicePropertyCollection) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGameServicePropertyCollection, IGameServicePropertyCollection_Ptr);
   begin
      if this.m_IGameServicePropertyCollection /= null then
         if this.m_IGameServicePropertyCollection.all /= null then
            RefCount := this.m_IGameServicePropertyCollection.all.Release;
            Free (this.m_IGameServicePropertyCollection);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameServicePropertyCollection

   function GetPropertyAsync
   (
      this : in out GameServicePropertyCollection;
      propertyName : WinRt.WString
   )
   return WinRt.IInspectable is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_propertyName : WinRt.HString := To_HString (propertyName);
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_IInspectable.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_IInspectable.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.IInspectable;
      m_IID            : aliased WinRt.IID := (2884975703, 61008, 21314, (181, 42, 38, 227, 184, 204, 2, 79 )); -- IInspectable;
      m_HandlerIID     : aliased WinRt.IID := (1057498670, 41697, 20788, (146, 151, 233, 33, 31, 72, 26, 45 ));
      m_Handler        : AsyncOperationCompletedHandler_IInspectable.Kind := new AsyncOperationCompletedHandler_IInspectable.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_IInspectable.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_IInspectable.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_IInspectable.Kind_Delegate, AsyncOperationCompletedHandler_IInspectable.Kind);

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
      Hr := this.m_IGameServicePropertyCollection.all.GetPropertyAsync (HStr_propertyName, m_ComRetVal'Access);
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
      Hr := WindowsDeleteString (HStr_propertyName);
      return m_RetVal;
   end;

end;