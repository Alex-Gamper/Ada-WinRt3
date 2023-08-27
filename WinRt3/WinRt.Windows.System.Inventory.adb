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
package body WinRt.Windows.System.Inventory is

   package IAsyncOperation_GenericObject is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.GenericObject);
   package AsyncOperationCompletedHandler_GenericObject is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.GenericObject);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InstalledDesktopApp

   procedure Initialize (this : in out InstalledDesktopApp) is
   begin
      null;
   end;

   procedure Finalize (this : in out InstalledDesktopApp) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IInstalledDesktopApp, IInstalledDesktopApp_Ptr);
   begin
      if this.m_IInstalledDesktopApp /= null then
         if this.m_IInstalledDesktopApp.all /= null then
            RefCount := this.m_IInstalledDesktopApp.all.Release;
            Free (this.m_IInstalledDesktopApp);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for InstalledDesktopApp

   function GetInventoryAsync
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.System.Inventory.InstalledDesktopApp");
      m_Factory        : access WinRt.Windows.System.Inventory.IInstalledDesktopAppStatics_Interface'Class := null;
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
      m_IID            : aliased WinRt.IID := (2684202880, 27941, 24116, (152, 134, 43, 93, 84, 29, 131, 36 )); -- GenericObject;
      m_HandlerIID     : aliased WinRt.IID := (3952368764, 32477, 22106, (139, 204, 130, 186, 244, 234, 23, 182 ));
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
      Hr := RoGetActivationFactory (m_hString, IID_IInstalledDesktopAppStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.GetInventoryAsync (m_ComRetVal'Access);
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
      return m_RetVal;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InstalledDesktopApp

   function get_Id
   (
      this : in out InstalledDesktopApp
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IInstalledDesktopApp.all.get_Id (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_DisplayName
   (
      this : in out InstalledDesktopApp
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IInstalledDesktopApp.all.get_DisplayName (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_Publisher
   (
      this : in out InstalledDesktopApp
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IInstalledDesktopApp.all.get_Publisher (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_DisplayVersion
   (
      this : in out InstalledDesktopApp
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IInstalledDesktopApp.all.get_DisplayVersion (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function ToString
   (
      this : in out InstalledDesktopApp
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Foundation.IStringable := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.System.Inventory.IInstalledDesktopApp_Interface, WinRt.Windows.Foundation.IStringable, WinRt.Windows.Foundation.IID_IStringable'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IInstalledDesktopApp.all);
      Hr := m_Interface.ToString (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

end;