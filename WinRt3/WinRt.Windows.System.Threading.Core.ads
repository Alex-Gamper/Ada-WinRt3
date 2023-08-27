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
package WinRt.Windows.System.Threading.Core is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Delegates declarations
   -----------------------------------------------------------------------------

   type SignalHandler_Delegate;
   type SignalHandler is access all SignalHandler_Delegate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPreallocatedWorkItem_Interface is interface and WinRt.IInspectable_Interface;
   type IPreallocatedWorkItem is access all IPreallocatedWorkItem_Interface'Class;
   type IPreallocatedWorkItem_Ptr is access all IPreallocatedWorkItem;

   type IPreallocatedWorkItemFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IPreallocatedWorkItemFactory is access all IPreallocatedWorkItemFactory_Interface'Class;

   type ISignalNotifier_Interface is interface and WinRt.IInspectable_Interface;
   type ISignalNotifier is access all ISignalNotifier_Interface'Class;
   type ISignalNotifier_Ptr is access all ISignalNotifier;

   type ISignalNotifierStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ISignalNotifierStatics is access all ISignalNotifierStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type PreallocatedWorkItem is new Ada.Finalization.Limited_Controlled with
      record
         m_IPreallocatedWorkItem : access Windows.System.Threading.Core.IPreallocatedWorkItem;
      end record;
   type PreallocatedWorkItem_Ptr is access all PreallocatedWorkItem;

   type SignalNotifier is new Ada.Finalization.Limited_Controlled with
      record
         m_ISignalNotifier : access Windows.System.Threading.Core.ISignalNotifier;
      end record;
   type SignalNotifier_Ptr is access all SignalNotifier;

   -----------------------------------------------------------------------------
   -- Delegate declarations
   -----------------------------------------------------------------------------

   IID_SignalHandler : aliased WinRt.IID := (2453422126, 18209, 17422, (157, 218, 85, 182, 242, 224, 119, 16 ));
   type SignalHandler_Delegate (Callback : access procedure  (signalNotifier_p : Windows.System.Threading.Core.ISignalNotifier;timedOut : WinRt.Boolean)) is new WinRt.IMulticastDelegate_Interface (IID_SignalHandler'Access) with null record;
      function Invoke
      (
         this : access SignalHandler_Delegate;
         signalNotifier_p : Windows.System.Threading.Core.ISignalNotifier;
         timedOut : WinRt.Boolean
      )
      return WinRt.Hresult;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPreallocatedWorkItem is interface and WinRt.IInspectable;

      function RunAsync
      (
         this : access IPreallocatedWorkItem_Interface;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_IPreallocatedWorkItem : aliased WinRt.IID := (3067783676, 48219, 16410, (168, 178, 110, 117, 77, 20, 218, 166 ));

   -----------------------------------------------------------------------------
   -- type IPreallocatedWorkItemFactory is interface and WinRt.IInspectable;

      function CreateWorkItem
      (
         this : access IPreallocatedWorkItemFactory_Interface;
         handler : Windows.System.Threading.WorkItemHandler;
         RetVal : access Windows.System.Threading.Core.IPreallocatedWorkItem
      )
      return WinRt.Hresult is abstract;

      function CreateWorkItemWithPriority
      (
         this : access IPreallocatedWorkItemFactory_Interface;
         handler : Windows.System.Threading.WorkItemHandler;
         priority : Windows.System.Threading.WorkItemPriority;
         RetVal : access Windows.System.Threading.Core.IPreallocatedWorkItem
      )
      return WinRt.Hresult is abstract;

      function CreateWorkItemWithPriorityAndOptions
      (
         this : access IPreallocatedWorkItemFactory_Interface;
         handler : Windows.System.Threading.WorkItemHandler;
         priority : Windows.System.Threading.WorkItemPriority;
         options : Windows.System.Threading.WorkItemOptions;
         RetVal : access Windows.System.Threading.Core.IPreallocatedWorkItem
      )
      return WinRt.Hresult is abstract;

      IID_IPreallocatedWorkItemFactory : aliased WinRt.IID := (3822267205, 57322, 18075, (130, 197, 246, 227, 206, 253, 234, 251 ));

   -----------------------------------------------------------------------------
   -- type ISignalNotifier is interface and WinRt.IInspectable;

      function Enable
      (
         this : access ISignalNotifier_Interface
      )
      return WinRt.Hresult is abstract;

      function Terminate_x
      (
         this : access ISignalNotifier_Interface
      )
      return WinRt.Hresult is abstract;

      IID_ISignalNotifier : aliased WinRt.IID := (338189830, 25511, 18195, (182, 217, 98, 246, 75, 86, 251, 139 ));

   -----------------------------------------------------------------------------
   -- type ISignalNotifierStatics is interface and WinRt.IInspectable;

      function AttachToEvent
      (
         this : access ISignalNotifierStatics_Interface;
         name : WinRt.HString;
         handler : Windows.System.Threading.Core.SignalHandler;
         RetVal : access Windows.System.Threading.Core.ISignalNotifier
      )
      return WinRt.Hresult is abstract;

      function AttachToEvent
      (
         this : access ISignalNotifierStatics_Interface;
         name : WinRt.HString;
         handler : Windows.System.Threading.Core.SignalHandler;
         timeout : Windows.Foundation.TimeSpan;
         RetVal : access Windows.System.Threading.Core.ISignalNotifier
      )
      return WinRt.Hresult is abstract;

      function AttachToSemaphore
      (
         this : access ISignalNotifierStatics_Interface;
         name : WinRt.HString;
         handler : Windows.System.Threading.Core.SignalHandler;
         RetVal : access Windows.System.Threading.Core.ISignalNotifier
      )
      return WinRt.Hresult is abstract;

      function AttachToSemaphore
      (
         this : access ISignalNotifierStatics_Interface;
         name : WinRt.HString;
         handler : Windows.System.Threading.Core.SignalHandler;
         timeout : Windows.Foundation.TimeSpan;
         RetVal : access Windows.System.Threading.Core.ISignalNotifier
      )
      return WinRt.Hresult is abstract;

      IID_ISignalNotifierStatics : aliased WinRt.IID := (474891622, 33792, 18131, (161, 21, 125, 12, 13, 252, 159, 98 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PreallocatedWorkItem

   overriding procedure Initialize (this : in out PreallocatedWorkItem);
   overriding procedure Finalize (this : in out PreallocatedWorkItem);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PreallocatedWorkItem

   function Constructor
   (
      handler : Windows.System.Threading.WorkItemHandler
   )
   return PreallocatedWorkItem;

   function Constructor
   (
      handler : Windows.System.Threading.WorkItemHandler;
      priority : Windows.System.Threading.WorkItemPriority
   )
   return PreallocatedWorkItem;

   function Constructor
   (
      handler : Windows.System.Threading.WorkItemHandler;
      priority : Windows.System.Threading.WorkItemPriority;
      options : Windows.System.Threading.WorkItemOptions
   )
   return PreallocatedWorkItem;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PreallocatedWorkItem

   procedure RunAsync
   (
      this : in out PreallocatedWorkItem
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SignalNotifier

   overriding procedure Initialize (this : in out SignalNotifier);
   overriding procedure Finalize (this : in out SignalNotifier);

   -----------------------------------------------------------------------------
   -- Static Interfaces for SignalNotifier

   function AttachToEvent
   (
      name : WinRt.WString;
      handler : Windows.System.Threading.Core.SignalHandler
   )
   return WinRt.Windows.System.Threading.Core.SignalNotifier;

   function AttachToEvent
   (
      name : WinRt.WString;
      handler : Windows.System.Threading.Core.SignalHandler;
      timeout : Windows.Foundation.TimeSpan
   )
   return WinRt.Windows.System.Threading.Core.SignalNotifier;

   function AttachToSemaphore
   (
      name : WinRt.WString;
      handler : Windows.System.Threading.Core.SignalHandler
   )
   return WinRt.Windows.System.Threading.Core.SignalNotifier;

   function AttachToSemaphore
   (
      name : WinRt.WString;
      handler : Windows.System.Threading.Core.SignalHandler;
      timeout : Windows.Foundation.TimeSpan
   )
   return WinRt.Windows.System.Threading.Core.SignalNotifier;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SignalNotifier

   procedure Enable
   (
      this : in out SignalNotifier
   );

   procedure Terminate_x
   (
      this : in out SignalNotifier
   );

end;