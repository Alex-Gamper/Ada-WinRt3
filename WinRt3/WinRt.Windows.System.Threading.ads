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
package WinRt.Windows.System.Threading is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Delegates declarations
   -----------------------------------------------------------------------------

   type TimerDestroyedHandler_Delegate;
   type TimerDestroyedHandler is access all TimerDestroyedHandler_Delegate;

   type TimerElapsedHandler_Delegate;
   type TimerElapsedHandler is access all TimerElapsedHandler_Delegate;

   type WorkItemHandler_Delegate;
   type WorkItemHandler is access all WorkItemHandler_Delegate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IThreadPoolStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IThreadPoolStatics is access all IThreadPoolStatics_Interface'Class;

   type IThreadPoolTimer_Interface is interface and WinRt.IInspectable_Interface;
   type IThreadPoolTimer is access all IThreadPoolTimer_Interface'Class;
   type IThreadPoolTimer_Ptr is access all IThreadPoolTimer;

   type IThreadPoolTimerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IThreadPoolTimerStatics is access all IThreadPoolTimerStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type ThreadPoolTimer is new Ada.Finalization.Limited_Controlled with
      record
         m_IThreadPoolTimer : access Windows.System.Threading.IThreadPoolTimer;
      end record;
   type ThreadPoolTimer_Ptr is access all ThreadPoolTimer;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type WorkItemOptions is (
      None_e,
      TimeSliced_e
   );
   for WorkItemOptions use (
      None_e => 0,
      TimeSliced_e => 1
   );
   type WorkItemOptions_Ptr is access all WorkItemOptions;

   type WorkItemPriority is (
      Low_e,
      Normal_e,
      High_e
   );
   for WorkItemPriority use (
      Low_e => -1,
      Normal_e => 0,
      High_e => 1
   );
   type WorkItemPriority_Ptr is access all WorkItemPriority;

   -----------------------------------------------------------------------------
   -- Delegate declarations
   -----------------------------------------------------------------------------

   IID_TimerDestroyedHandler : aliased WinRt.IID := (887953914, 33668, 20153, (130, 9, 251, 80, 148, 238, 236, 53 ));
   type TimerDestroyedHandler_Delegate (Callback : access procedure  (timer : Windows.System.Threading.IThreadPoolTimer)) is new WinRt.IMulticastDelegate_Interface (IID_TimerDestroyedHandler'Access) with null record;
      function Invoke
      (
         this : access TimerDestroyedHandler_Delegate;
         timer : Windows.System.Threading.IThreadPoolTimer
      )
      return WinRt.Hresult;

   IID_TimerElapsedHandler : aliased WinRt.IID := (4205749863, 64491, 18891, (173, 178, 113, 24, 76, 85, 110, 67 ));
   type TimerElapsedHandler_Delegate (Callback : access procedure  (timer : Windows.System.Threading.IThreadPoolTimer)) is new WinRt.IMulticastDelegate_Interface (IID_TimerElapsedHandler'Access) with null record;
      function Invoke
      (
         this : access TimerElapsedHandler_Delegate;
         timer : Windows.System.Threading.IThreadPoolTimer
      )
      return WinRt.Hresult;

   IID_WorkItemHandler : aliased WinRt.IID := (488278923, 64102, 16719, (156, 189, 182, 95, 201, 157, 23, 250 ));
   type WorkItemHandler_Delegate (Callback : access procedure  (operation : Windows.Foundation.IAsyncAction)) is new WinRt.IMulticastDelegate_Interface (IID_WorkItemHandler'Access) with null record;
      function Invoke
      (
         this : access WorkItemHandler_Delegate;
         operation : Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IThreadPoolStatics is interface and WinRt.IInspectable;

      function RunAsync
      (
         this : access IThreadPoolStatics_Interface;
         handler : Windows.System.Threading.WorkItemHandler;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function RunAsync
      (
         this : access IThreadPoolStatics_Interface;
         handler : Windows.System.Threading.WorkItemHandler;
         priority : Windows.System.Threading.WorkItemPriority;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function RunAsync
      (
         this : access IThreadPoolStatics_Interface;
         handler : Windows.System.Threading.WorkItemHandler;
         priority : Windows.System.Threading.WorkItemPriority;
         options : Windows.System.Threading.WorkItemOptions;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_IThreadPoolStatics : aliased WinRt.IID := (3065997277, 33981, 17656, (172, 28, 147, 235, 203, 157, 186, 145 ));

   -----------------------------------------------------------------------------
   -- type IThreadPoolTimer is interface and WinRt.IInspectable;

      function get_Period
      (
         this : access IThreadPoolTimer_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function get_Delay
      (
         this : access IThreadPoolTimer_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function Cancel
      (
         this : access IThreadPoolTimer_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IThreadPoolTimer : aliased WinRt.IID := (1498332792, 21994, 19080, (165, 13, 52, 2, 174, 31, 156, 242 ));

   -----------------------------------------------------------------------------
   -- type IThreadPoolTimerStatics is interface and WinRt.IInspectable;

      function CreatePeriodicTimer
      (
         this : access IThreadPoolTimerStatics_Interface;
         handler : Windows.System.Threading.TimerElapsedHandler;
         period : Windows.Foundation.TimeSpan;
         RetVal : access Windows.System.Threading.IThreadPoolTimer
      )
      return WinRt.Hresult is abstract;

      function CreateTimer
      (
         this : access IThreadPoolTimerStatics_Interface;
         handler : Windows.System.Threading.TimerElapsedHandler;
         delay_x : Windows.Foundation.TimeSpan;
         RetVal : access Windows.System.Threading.IThreadPoolTimer
      )
      return WinRt.Hresult is abstract;

      function CreatePeriodicTimer
      (
         this : access IThreadPoolTimerStatics_Interface;
         handler : Windows.System.Threading.TimerElapsedHandler;
         period : Windows.Foundation.TimeSpan;
         destroyed : Windows.System.Threading.TimerDestroyedHandler;
         RetVal : access Windows.System.Threading.IThreadPoolTimer
      )
      return WinRt.Hresult is abstract;

      function CreateTimer
      (
         this : access IThreadPoolTimerStatics_Interface;
         handler : Windows.System.Threading.TimerElapsedHandler;
         delay_x : Windows.Foundation.TimeSpan;
         destroyed : Windows.System.Threading.TimerDestroyedHandler;
         RetVal : access Windows.System.Threading.IThreadPoolTimer
      )
      return WinRt.Hresult is abstract;

      IID_IThreadPoolTimerStatics : aliased WinRt.IID := (445291778, 58498, 17947, (184, 199, 142, 250, 209, 204, 229, 144 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package ThreadPool is

      procedure RunAsync
      (
         handler : Windows.System.Threading.WorkItemHandler
      );

      procedure RunAsync
      (
         handler : Windows.System.Threading.WorkItemHandler;
         priority : Windows.System.Threading.WorkItemPriority
      );

      procedure RunAsync
      (
         handler : Windows.System.Threading.WorkItemHandler;
         priority : Windows.System.Threading.WorkItemPriority;
         options : Windows.System.Threading.WorkItemOptions
      );

   end ThreadPool;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ThreadPoolTimer

   overriding procedure Initialize (this : in out ThreadPoolTimer);
   overriding procedure Finalize (this : in out ThreadPoolTimer);

   -----------------------------------------------------------------------------
   -- Static Interfaces for ThreadPoolTimer

   function CreatePeriodicTimer
   (
      handler : Windows.System.Threading.TimerElapsedHandler;
      period : Windows.Foundation.TimeSpan
   )
   return WinRt.Windows.System.Threading.ThreadPoolTimer;

   function CreateTimer
   (
      handler : Windows.System.Threading.TimerElapsedHandler;
      delay_x : Windows.Foundation.TimeSpan
   )
   return WinRt.Windows.System.Threading.ThreadPoolTimer;

   function CreatePeriodicTimer
   (
      handler : Windows.System.Threading.TimerElapsedHandler;
      period : Windows.Foundation.TimeSpan;
      destroyed : Windows.System.Threading.TimerDestroyedHandler
   )
   return WinRt.Windows.System.Threading.ThreadPoolTimer;

   function CreateTimer
   (
      handler : Windows.System.Threading.TimerElapsedHandler;
      delay_x : Windows.Foundation.TimeSpan;
      destroyed : Windows.System.Threading.TimerDestroyedHandler
   )
   return WinRt.Windows.System.Threading.ThreadPoolTimer;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ThreadPoolTimer

   function get_Period
   (
      this : in out ThreadPoolTimer
   )
   return WinRt.Windows.Foundation.TimeSpan;

   function get_Delay
   (
      this : in out ThreadPoolTimer
   )
   return WinRt.Windows.Foundation.TimeSpan;

   procedure Cancel
   (
      this : in out ThreadPoolTimer
   );

end;