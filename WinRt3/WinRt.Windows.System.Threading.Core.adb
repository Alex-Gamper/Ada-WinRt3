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
package body WinRt.Windows.System.Threading.Core is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PreallocatedWorkItem

   procedure Initialize (this : in out PreallocatedWorkItem) is
   begin
      null;
   end;

   procedure Finalize (this : in out PreallocatedWorkItem) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPreallocatedWorkItem, IPreallocatedWorkItem_Ptr);
   begin
      if this.m_IPreallocatedWorkItem /= null then
         if this.m_IPreallocatedWorkItem.all /= null then
            RefCount := this.m_IPreallocatedWorkItem.all.Release;
            Free (this.m_IPreallocatedWorkItem);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PreallocatedWorkItem

   function Constructor
   (
      handler : Windows.System.Threading.WorkItemHandler
   )
   return PreallocatedWorkItem is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.System.Threading.Core.PreallocatedWorkItem");
      m_Factory    : access IPreallocatedWorkItemFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.System.Threading.Core.IPreallocatedWorkItem;
   begin
      return RetVal : PreallocatedWorkItem do
         Hr := RoGetActivationFactory (m_hString, IID_IPreallocatedWorkItemFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateWorkItem (handler, m_ComRetVal'Access);
            Retval.m_IPreallocatedWorkItem := new Windows.System.Threading.Core.IPreallocatedWorkItem;
            Retval.m_IPreallocatedWorkItem.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function Constructor
   (
      handler : Windows.System.Threading.WorkItemHandler;
      priority : Windows.System.Threading.WorkItemPriority
   )
   return PreallocatedWorkItem is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.System.Threading.Core.PreallocatedWorkItem");
      m_Factory    : access IPreallocatedWorkItemFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.System.Threading.Core.IPreallocatedWorkItem;
   begin
      return RetVal : PreallocatedWorkItem do
         Hr := RoGetActivationFactory (m_hString, IID_IPreallocatedWorkItemFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateWorkItemWithPriority (handler, priority, m_ComRetVal'Access);
            Retval.m_IPreallocatedWorkItem := new Windows.System.Threading.Core.IPreallocatedWorkItem;
            Retval.m_IPreallocatedWorkItem.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function Constructor
   (
      handler : Windows.System.Threading.WorkItemHandler;
      priority : Windows.System.Threading.WorkItemPriority;
      options : Windows.System.Threading.WorkItemOptions
   )
   return PreallocatedWorkItem is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.System.Threading.Core.PreallocatedWorkItem");
      m_Factory    : access IPreallocatedWorkItemFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.System.Threading.Core.IPreallocatedWorkItem;
   begin
      return RetVal : PreallocatedWorkItem do
         Hr := RoGetActivationFactory (m_hString, IID_IPreallocatedWorkItemFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateWorkItemWithPriorityAndOptions (handler, priority, options, m_ComRetVal'Access);
            Retval.m_IPreallocatedWorkItem := new Windows.System.Threading.Core.IPreallocatedWorkItem;
            Retval.m_IPreallocatedWorkItem.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PreallocatedWorkItem

   procedure RunAsync
   (
      this : in out PreallocatedWorkItem
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Windows.Foundation.IAsyncAction := null;

      procedure IAsyncAction_Callback (asyncInfo : WinRt.Windows.Foundation.IAsyncAction; asyncStatus: WinRt.Windows.Foundation.AsyncStatus) is
         Hr        : WinRt.HResult := 0;
      begin
         if asyncStatus = Completed_e then
            Hr := asyncInfo.GetResults;
         end if;
         m_Completed := 1;
         WakeByAddressSingle (m_Completed'Address);
      end;

      m_CompletedHandler : WinRt.Windows.Foundation.AsyncActionCompletedHandler := new WinRt.Windows.Foundation.AsyncActionCompletedHandler_Delegate'(IAsyncAction_Callback'Access, 1, null);
      procedure Free is new Ada.Unchecked_Deallocation (WinRt.Windows.Foundation.AsyncActionCompletedHandler_Delegate, WinRt.Windows.Foundation.AsyncActionCompletedHandler);

   begin
      Hr := this.m_IPreallocatedWorkItem.all.RunAsync (m_ComRetVal'Access);
      if Hr = S_OK then
         m_Captured := m_Completed;
         Hr := m_ComRetVal.Put_Completed (m_CompletedHandler);
         while m_Captured = m_Compare loop
            m_Temp := WaitOnAddress (m_Completed'Address, m_Compare'Address, 4, 4294967295);
            m_Captured := m_Completed;
         end loop;
         m_RefCount := m_ComRetVal.Release;
         m_RefCount := m_CompletedHandler.Release;
         if m_RefCount = 0 then
            Free (m_CompletedHandler);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Delegate SignalHandler

   function Invoke
   (
      this : access SignalHandler_Delegate;
      signalNotifier_p : Windows.System.Threading.Core.ISignalNotifier;
      timedOut : WinRt.Boolean
   )
   return WinRt.Hresult is
      Hr : WinRt.HResult := S_OK;
   begin
      this.Callback (signalNotifier_p, timedOut);
      return Hr;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SignalNotifier

   procedure Initialize (this : in out SignalNotifier) is
   begin
      null;
   end;

   procedure Finalize (this : in out SignalNotifier) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ISignalNotifier, ISignalNotifier_Ptr);
   begin
      if this.m_ISignalNotifier /= null then
         if this.m_ISignalNotifier.all /= null then
            RefCount := this.m_ISignalNotifier.all.Release;
            Free (this.m_ISignalNotifier);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for SignalNotifier

   function AttachToEvent
   (
      name : WinRt.WString;
      handler : Windows.System.Threading.Core.SignalHandler
   )
   return WinRt.Windows.System.Threading.Core.SignalNotifier is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.System.Threading.Core.SignalNotifier");
      m_Factory        : access WinRt.Windows.System.Threading.Core.ISignalNotifierStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.System.Threading.Core.ISignalNotifier;
      HStr_name : WinRt.HString := To_HString (name);
   begin
      return RetVal : WinRt.Windows.System.Threading.Core.SignalNotifier do
         Hr := RoGetActivationFactory (m_hString, IID_ISignalNotifierStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.AttachToEvent (HStr_name, handler, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ISignalNotifier := new Windows.System.Threading.Core.ISignalNotifier;
            Retval.m_ISignalNotifier.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_name);
      end return;
   end;

   function AttachToEvent
   (
      name : WinRt.WString;
      handler : Windows.System.Threading.Core.SignalHandler;
      timeout : Windows.Foundation.TimeSpan
   )
   return WinRt.Windows.System.Threading.Core.SignalNotifier is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.System.Threading.Core.SignalNotifier");
      m_Factory        : access WinRt.Windows.System.Threading.Core.ISignalNotifierStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.System.Threading.Core.ISignalNotifier;
      HStr_name : WinRt.HString := To_HString (name);
   begin
      return RetVal : WinRt.Windows.System.Threading.Core.SignalNotifier do
         Hr := RoGetActivationFactory (m_hString, IID_ISignalNotifierStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.AttachToEvent (HStr_name, handler, timeout, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ISignalNotifier := new Windows.System.Threading.Core.ISignalNotifier;
            Retval.m_ISignalNotifier.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_name);
      end return;
   end;

   function AttachToSemaphore
   (
      name : WinRt.WString;
      handler : Windows.System.Threading.Core.SignalHandler
   )
   return WinRt.Windows.System.Threading.Core.SignalNotifier is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.System.Threading.Core.SignalNotifier");
      m_Factory        : access WinRt.Windows.System.Threading.Core.ISignalNotifierStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.System.Threading.Core.ISignalNotifier;
      HStr_name : WinRt.HString := To_HString (name);
   begin
      return RetVal : WinRt.Windows.System.Threading.Core.SignalNotifier do
         Hr := RoGetActivationFactory (m_hString, IID_ISignalNotifierStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.AttachToSemaphore (HStr_name, handler, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ISignalNotifier := new Windows.System.Threading.Core.ISignalNotifier;
            Retval.m_ISignalNotifier.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_name);
      end return;
   end;

   function AttachToSemaphore
   (
      name : WinRt.WString;
      handler : Windows.System.Threading.Core.SignalHandler;
      timeout : Windows.Foundation.TimeSpan
   )
   return WinRt.Windows.System.Threading.Core.SignalNotifier is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.System.Threading.Core.SignalNotifier");
      m_Factory        : access WinRt.Windows.System.Threading.Core.ISignalNotifierStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.System.Threading.Core.ISignalNotifier;
      HStr_name : WinRt.HString := To_HString (name);
   begin
      return RetVal : WinRt.Windows.System.Threading.Core.SignalNotifier do
         Hr := RoGetActivationFactory (m_hString, IID_ISignalNotifierStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.AttachToSemaphore (HStr_name, handler, timeout, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ISignalNotifier := new Windows.System.Threading.Core.ISignalNotifier;
            Retval.m_ISignalNotifier.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_name);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SignalNotifier

   procedure Enable
   (
      this : in out SignalNotifier
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISignalNotifier.all.Enable;
   end;

   procedure Terminate_x
   (
      this : in out SignalNotifier
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISignalNotifier.all.Terminate_x;
   end;

end;
