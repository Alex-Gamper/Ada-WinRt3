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
with WinRt.Windows.UI.Notifications;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Phone.StartScreen is

   package IAsyncOperation_Boolean is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Boolean);
   package AsyncOperationCompletedHandler_Boolean is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Boolean);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DualSimTile

   procedure Initialize (this : in out DualSimTile) is
   begin
      null;
   end;

   procedure Finalize (this : in out DualSimTile) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IDualSimTile, IDualSimTile_Ptr);
   begin
      if this.m_IDualSimTile /= null then
         if this.m_IDualSimTile.all /= null then
            RefCount := this.m_IDualSimTile.all.Release;
            Free (this.m_IDualSimTile);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for DualSimTile

   function Constructor return DualSimTile is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Phone.StartScreen.DualSimTile");
      m_ComRetVal  : aliased Windows.Phone.StartScreen.IDualSimTile;
   begin
      return RetVal : DualSimTile do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IDualSimTile := new Windows.Phone.StartScreen.IDualSimTile;
            Retval.m_IDualSimTile.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for DualSimTile

   function GetTileForSim2
   return WinRt.Windows.Phone.StartScreen.DualSimTile is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Phone.StartScreen.DualSimTile");
      m_Factory        : access WinRt.Windows.Phone.StartScreen.IDualSimTileStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Phone.StartScreen.IDualSimTile;
   begin
      return RetVal : WinRt.Windows.Phone.StartScreen.DualSimTile do
         Hr := RoGetActivationFactory (m_hString, IID_IDualSimTileStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetTileForSim2 (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IDualSimTile := new Windows.Phone.StartScreen.IDualSimTile;
            Retval.m_IDualSimTile.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function UpdateDisplayNameForSim1Async
   (
      name : WinRt.WString
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Phone.StartScreen.DualSimTile");
      m_Factory        : access WinRt.Windows.Phone.StartScreen.IDualSimTileStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_name : WinRt.HString := To_HString (name);
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_Boolean.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_Boolean.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Boolean;
      m_IID            : aliased WinRt.IID := (3451252659, 22408, 20637, (155, 225, 113, 204, 184, 163, 54, 42 )); -- Boolean;
      m_HandlerIID     : aliased WinRt.IID := (3251884450, 44567, 23135, (181, 162, 189, 204, 136, 68, 136, 154 ));
      m_Handler        : AsyncOperationCompletedHandler_Boolean.Kind := new AsyncOperationCompletedHandler_Boolean.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_Boolean.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_Boolean.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_Boolean.Kind_Delegate, AsyncOperationCompletedHandler_Boolean.Kind);

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
      Hr := RoGetActivationFactory (m_hString, IID_IDualSimTileStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.UpdateDisplayNameForSim1Async (HStr_name, m_ComRetVal'Access);
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
      Hr := WindowsDeleteString (HStr_name);
      return m_RetVal;
   end;

   function CreateTileUpdaterForSim1
   return WinRt.Windows.UI.Notifications.TileUpdater is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Phone.StartScreen.DualSimTile");
      m_Factory        : access WinRt.Windows.Phone.StartScreen.IDualSimTileStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Notifications.ITileUpdater;
   begin
      return RetVal : WinRt.Windows.UI.Notifications.TileUpdater do
         Hr := RoGetActivationFactory (m_hString, IID_IDualSimTileStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateTileUpdaterForSim1 (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ITileUpdater := new Windows.UI.Notifications.ITileUpdater;
            Retval.m_ITileUpdater.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function CreateTileUpdaterForSim2
   return WinRt.Windows.UI.Notifications.TileUpdater is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Phone.StartScreen.DualSimTile");
      m_Factory        : access WinRt.Windows.Phone.StartScreen.IDualSimTileStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Notifications.ITileUpdater;
   begin
      return RetVal : WinRt.Windows.UI.Notifications.TileUpdater do
         Hr := RoGetActivationFactory (m_hString, IID_IDualSimTileStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateTileUpdaterForSim2 (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ITileUpdater := new Windows.UI.Notifications.ITileUpdater;
            Retval.m_ITileUpdater.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function CreateBadgeUpdaterForSim1
   return WinRt.Windows.UI.Notifications.BadgeUpdater is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Phone.StartScreen.DualSimTile");
      m_Factory        : access WinRt.Windows.Phone.StartScreen.IDualSimTileStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Notifications.IBadgeUpdater;
   begin
      return RetVal : WinRt.Windows.UI.Notifications.BadgeUpdater do
         Hr := RoGetActivationFactory (m_hString, IID_IDualSimTileStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateBadgeUpdaterForSim1 (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IBadgeUpdater := new Windows.UI.Notifications.IBadgeUpdater;
            Retval.m_IBadgeUpdater.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function CreateBadgeUpdaterForSim2
   return WinRt.Windows.UI.Notifications.BadgeUpdater is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Phone.StartScreen.DualSimTile");
      m_Factory        : access WinRt.Windows.Phone.StartScreen.IDualSimTileStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Notifications.IBadgeUpdater;
   begin
      return RetVal : WinRt.Windows.UI.Notifications.BadgeUpdater do
         Hr := RoGetActivationFactory (m_hString, IID_IDualSimTileStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateBadgeUpdaterForSim2 (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IBadgeUpdater := new Windows.UI.Notifications.IBadgeUpdater;
            Retval.m_IBadgeUpdater.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function CreateToastNotifierForSim1
   return WinRt.Windows.UI.Notifications.ToastNotifier is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Phone.StartScreen.DualSimTile");
      m_Factory        : access WinRt.Windows.Phone.StartScreen.IDualSimTileStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Notifications.IToastNotifier;
   begin
      return RetVal : WinRt.Windows.UI.Notifications.ToastNotifier do
         Hr := RoGetActivationFactory (m_hString, IID_IDualSimTileStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateToastNotifierForSim1 (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IToastNotifier := new Windows.UI.Notifications.IToastNotifier;
            Retval.m_IToastNotifier.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function CreateToastNotifierForSim2
   return WinRt.Windows.UI.Notifications.ToastNotifier is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Phone.StartScreen.DualSimTile");
      m_Factory        : access WinRt.Windows.Phone.StartScreen.IDualSimTileStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Notifications.IToastNotifier;
   begin
      return RetVal : WinRt.Windows.UI.Notifications.ToastNotifier do
         Hr := RoGetActivationFactory (m_hString, IID_IDualSimTileStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateToastNotifierForSim2 (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IToastNotifier := new Windows.UI.Notifications.IToastNotifier;
            Retval.m_IToastNotifier.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DualSimTile

   procedure put_DisplayName
   (
      this : in out DualSimTile;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_IDualSimTile.all.put_DisplayName (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

   function get_DisplayName
   (
      this : in out DualSimTile
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IDualSimTile.all.get_DisplayName (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_IsPinnedToStart
   (
      this : in out DualSimTile
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IDualSimTile.all.get_IsPinnedToStart (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function CreateAsync
   (
      this : in out DualSimTile
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_Boolean.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_Boolean.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Boolean;
      m_IID            : aliased WinRt.IID := (3451252659, 22408, 20637, (155, 225, 113, 204, 184, 163, 54, 42 )); -- Boolean;
      m_HandlerIID     : aliased WinRt.IID := (3251884450, 44567, 23135, (181, 162, 189, 204, 136, 68, 136, 154 ));
      m_Handler        : AsyncOperationCompletedHandler_Boolean.Kind := new AsyncOperationCompletedHandler_Boolean.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_Boolean.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_Boolean.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_Boolean.Kind_Delegate, AsyncOperationCompletedHandler_Boolean.Kind);

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
      Hr := this.m_IDualSimTile.all.CreateAsync (m_ComRetVal'Access);
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

   function UpdateAsync
   (
      this : in out DualSimTile
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_Boolean.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_Boolean.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Boolean;
      m_IID            : aliased WinRt.IID := (3451252659, 22408, 20637, (155, 225, 113, 204, 184, 163, 54, 42 )); -- Boolean;
      m_HandlerIID     : aliased WinRt.IID := (3251884450, 44567, 23135, (181, 162, 189, 204, 136, 68, 136, 154 ));
      m_Handler        : AsyncOperationCompletedHandler_Boolean.Kind := new AsyncOperationCompletedHandler_Boolean.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_Boolean.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_Boolean.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_Boolean.Kind_Delegate, AsyncOperationCompletedHandler_Boolean.Kind);

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
      Hr := this.m_IDualSimTile.all.UpdateAsync (m_ComRetVal'Access);
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

   function DeleteAsync
   (
      this : in out DualSimTile
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_Boolean.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_Boolean.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Boolean;
      m_IID            : aliased WinRt.IID := (3451252659, 22408, 20637, (155, 225, 113, 204, 184, 163, 54, 42 )); -- Boolean;
      m_HandlerIID     : aliased WinRt.IID := (3251884450, 44567, 23135, (181, 162, 189, 204, 136, 68, 136, 154 ));
      m_Handler        : AsyncOperationCompletedHandler_Boolean.Kind := new AsyncOperationCompletedHandler_Boolean.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_Boolean.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_Boolean.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_Boolean.Kind_Delegate, AsyncOperationCompletedHandler_Boolean.Kind);

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
      Hr := this.m_IDualSimTile.all.DeleteAsync (m_ComRetVal'Access);
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

end;