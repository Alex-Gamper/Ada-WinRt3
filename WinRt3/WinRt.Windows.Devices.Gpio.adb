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
with WinRt.Windows.Devices.Gpio.Provider;
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Devices.Gpio is

   package IAsyncOperation_GenericObject is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.GenericObject);
   package AsyncOperationCompletedHandler_GenericObject is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.GenericObject);

   package IAsyncOperation_GpioController is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.Devices.Gpio.IGpioController);
   package AsyncOperationCompletedHandler_GpioController is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.Devices.Gpio.IGpioController);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GpioChangeCounter

   procedure Initialize (this : in out GpioChangeCounter) is
   begin
      null;
   end;

   procedure Finalize (this : in out GpioChangeCounter) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGpioChangeCounter, IGpioChangeCounter_Ptr);
   begin
      if this.m_IGpioChangeCounter /= null then
         if this.m_IGpioChangeCounter.all /= null then
            RefCount := this.m_IGpioChangeCounter.all.Release;
            Free (this.m_IGpioChangeCounter);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for GpioChangeCounter

   function Constructor
   (
      pin : Windows.Devices.Gpio.GpioPin'Class
   )
   return GpioChangeCounter is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Devices.Gpio.GpioChangeCounter");
      m_Factory    : access IGpioChangeCounterFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Devices.Gpio.IGpioChangeCounter;
   begin
      return RetVal : GpioChangeCounter do
         Hr := RoGetActivationFactory (m_hString, IID_IGpioChangeCounterFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.Create (pin.m_IGpioPin.all, m_ComRetVal'Access);
            Retval.m_IGpioChangeCounter := new Windows.Devices.Gpio.IGpioChangeCounter;
            Retval.m_IGpioChangeCounter.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GpioChangeCounter

   procedure put_Polarity
   (
      this : in out GpioChangeCounter;
      value : Windows.Devices.Gpio.GpioChangePolarity
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioChangeCounter.all.put_Polarity (value);
   end;

   function get_Polarity
   (
      this : in out GpioChangeCounter
   )
   return WinRt.Windows.Devices.Gpio.GpioChangePolarity is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioChangePolarity;
   begin
      Hr := this.m_IGpioChangeCounter.all.get_Polarity (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IsStarted
   (
      this : in out GpioChangeCounter
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGpioChangeCounter.all.get_IsStarted (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure Start
   (
      this : in out GpioChangeCounter
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioChangeCounter.all.Start;
   end;

   procedure Stop
   (
      this : in out GpioChangeCounter
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioChangeCounter.all.Stop;
   end;

   function Read
   (
      this : in out GpioChangeCounter
   )
   return WinRt.Windows.Devices.Gpio.GpioChangeCount is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioChangeCount;
   begin
      Hr := this.m_IGpioChangeCounter.all.Read (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function Reset
   (
      this : in out GpioChangeCounter
   )
   return WinRt.Windows.Devices.Gpio.GpioChangeCount is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioChangeCount;
   begin
      Hr := this.m_IGpioChangeCounter.all.Reset (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure Close
   (
      this : in out GpioChangeCounter
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Foundation.IClosable := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Devices.Gpio.IGpioChangeCounter_Interface, WinRt.Windows.Foundation.IClosable, WinRt.Windows.Foundation.IID_IClosable'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IGpioChangeCounter.all);
      Hr := m_Interface.Close;
      m_RefCount := m_Interface.Release;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GpioChangeReader

   procedure Initialize (this : in out GpioChangeReader) is
   begin
      null;
   end;

   procedure Finalize (this : in out GpioChangeReader) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGpioChangeReader, IGpioChangeReader_Ptr);
   begin
      if this.m_IGpioChangeReader /= null then
         if this.m_IGpioChangeReader.all /= null then
            RefCount := this.m_IGpioChangeReader.all.Release;
            Free (this.m_IGpioChangeReader);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for GpioChangeReader

   function Constructor
   (
      pin : Windows.Devices.Gpio.GpioPin'Class
   )
   return GpioChangeReader is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Devices.Gpio.GpioChangeReader");
      m_Factory    : access IGpioChangeReaderFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Devices.Gpio.IGpioChangeReader;
   begin
      return RetVal : GpioChangeReader do
         Hr := RoGetActivationFactory (m_hString, IID_IGpioChangeReaderFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.Create (pin.m_IGpioPin.all, m_ComRetVal'Access);
            Retval.m_IGpioChangeReader := new Windows.Devices.Gpio.IGpioChangeReader;
            Retval.m_IGpioChangeReader.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function Constructor
   (
      pin : Windows.Devices.Gpio.GpioPin'Class;
      minCapacity : WinRt.Int32
   )
   return GpioChangeReader is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Devices.Gpio.GpioChangeReader");
      m_Factory    : access IGpioChangeReaderFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Devices.Gpio.IGpioChangeReader;
   begin
      return RetVal : GpioChangeReader do
         Hr := RoGetActivationFactory (m_hString, IID_IGpioChangeReaderFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateWithCapacity (pin.m_IGpioPin.all, minCapacity, m_ComRetVal'Access);
            Retval.m_IGpioChangeReader := new Windows.Devices.Gpio.IGpioChangeReader;
            Retval.m_IGpioChangeReader.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GpioChangeReader

   function get_Capacity
   (
      this : in out GpioChangeReader
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IGpioChangeReader.all.get_Capacity (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Length
   (
      this : in out GpioChangeReader
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IGpioChangeReader.all.get_Length (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IsEmpty
   (
      this : in out GpioChangeReader
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGpioChangeReader.all.get_IsEmpty (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IsOverflowed
   (
      this : in out GpioChangeReader
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGpioChangeReader.all.get_IsOverflowed (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Polarity
   (
      this : in out GpioChangeReader;
      value : Windows.Devices.Gpio.GpioChangePolarity
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioChangeReader.all.put_Polarity (value);
   end;

   function get_Polarity
   (
      this : in out GpioChangeReader
   )
   return WinRt.Windows.Devices.Gpio.GpioChangePolarity is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioChangePolarity;
   begin
      Hr := this.m_IGpioChangeReader.all.get_Polarity (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IsStarted
   (
      this : in out GpioChangeReader
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGpioChangeReader.all.get_IsStarted (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure Start
   (
      this : in out GpioChangeReader
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioChangeReader.all.Start;
   end;

   procedure Stop
   (
      this : in out GpioChangeReader
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioChangeReader.all.Stop;
   end;

   procedure Clear
   (
      this : in out GpioChangeReader
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioChangeReader.all.Clear;
   end;

   function GetNextItem
   (
      this : in out GpioChangeReader
   )
   return WinRt.Windows.Devices.Gpio.GpioChangeRecord is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioChangeRecord;
   begin
      Hr := this.m_IGpioChangeReader.all.GetNextItem (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function PeekNextItem
   (
      this : in out GpioChangeReader
   )
   return WinRt.Windows.Devices.Gpio.GpioChangeRecord is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioChangeRecord;
   begin
      Hr := this.m_IGpioChangeReader.all.PeekNextItem (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function GetAllItems
   (
      this : in out GpioChangeReader
   )
   return IVector_GpioChangeRecord.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVector_GpioChangeRecord.Kind;
   begin
      Hr := this.m_IGpioChangeReader.all.GetAllItems (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVector_GpioChangeRecord (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   procedure WaitForItemsAsync
   (
      this : in out GpioChangeReader;
      count : WinRt.Int32
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
      Hr := this.m_IGpioChangeReader.all.WaitForItemsAsync (count, m_ComRetVal'Access);
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

   procedure Close
   (
      this : in out GpioChangeReader
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Foundation.IClosable := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Devices.Gpio.IGpioChangeReader_Interface, WinRt.Windows.Foundation.IClosable, WinRt.Windows.Foundation.IID_IClosable'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IGpioChangeReader.all);
      Hr := m_Interface.Close;
      m_RefCount := m_Interface.Release;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GpioController

   procedure Initialize (this : in out GpioController) is
   begin
      null;
   end;

   procedure Finalize (this : in out GpioController) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGpioController, IGpioController_Ptr);
   begin
      if this.m_IGpioController /= null then
         if this.m_IGpioController.all /= null then
            RefCount := this.m_IGpioController.all.Release;
            Free (this.m_IGpioController);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for GpioController

   function GetDefault
   return WinRt.Windows.Devices.Gpio.GpioController is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Gpio.GpioController");
      m_Factory        : access WinRt.Windows.Devices.Gpio.IGpioControllerStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.IGpioController;
   begin
      return RetVal : WinRt.Windows.Devices.Gpio.GpioController do
         Hr := RoGetActivationFactory (m_hString, IID_IGpioControllerStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetDefault (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IGpioController := new Windows.Devices.Gpio.IGpioController;
            Retval.m_IGpioController.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function GetControllersAsync
   (
      provider : Windows.Devices.Gpio.Provider.IGpioProvider
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Gpio.GpioController");
      m_Factory        : access WinRt.Windows.Devices.Gpio.IGpioControllerStatics2_Interface'Class := null;
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
      m_IID            : aliased WinRt.IID := (1571027700, 24743, 23060, (147, 25, 57, 65, 223, 177, 63, 237 )); -- GenericObject;
      m_HandlerIID     : aliased WinRt.IID := (3997335342, 32055, 21903, (151, 24, 156, 188, 191, 244, 12, 148 ));
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
      Hr := RoGetActivationFactory (m_hString, IID_IGpioControllerStatics2'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.GetControllersAsync (provider, m_ComRetVal'Access);
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

   function GetDefaultAsync
   return WinRt.Windows.Devices.Gpio.GpioController is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Devices.Gpio.GpioController");
      m_Factory        : access WinRt.Windows.Devices.Gpio.IGpioControllerStatics2_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_GpioController.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_GpioController.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.Devices.Gpio.IGpioController;
      m_IID            : aliased WinRt.IID := (3976485143, 38599, 22325, (180, 190, 215, 150, 25, 212, 131, 94 )); -- Windows.Devices.Gpio.GpioController;
      m_HandlerIID     : aliased WinRt.IID := (922838976, 3963, 24183, (155, 174, 211, 80, 137, 163, 219, 117 ));
      m_Handler        : AsyncOperationCompletedHandler_GpioController.Kind := new AsyncOperationCompletedHandler_GpioController.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_GpioController.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_GpioController.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_GpioController.Kind_Delegate, AsyncOperationCompletedHandler_GpioController.Kind);

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
      return RetVal : WinRt.Windows.Devices.Gpio.GpioController do
         Hr := RoGetActivationFactory (m_hString, IID_IGpioControllerStatics2'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetDefaultAsync (m_ComRetVal'Access);
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
                     Retval.m_IGpioController := new Windows.Devices.Gpio.IGpioController;
                     Retval.m_IGpioController.all := m_RetVal;
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

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GpioController

   function get_PinCount
   (
      this : in out GpioController
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IGpioController.all.get_PinCount (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function OpenPin
   (
      this : in out GpioController;
      pinNumber : WinRt.Int32
   )
   return WinRt.Windows.Devices.Gpio.GpioPin'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.IGpioPin;
   begin
      return RetVal : WinRt.Windows.Devices.Gpio.GpioPin do
         Hr := this.m_IGpioController.all.OpenPin (pinNumber, m_ComRetVal'Access);
         Retval.m_IGpioPin := new Windows.Devices.Gpio.IGpioPin;
         Retval.m_IGpioPin.all := m_ComRetVal;
      end return;
   end;

   function OpenPin
   (
      this : in out GpioController;
      pinNumber : WinRt.Int32;
      sharingMode : Windows.Devices.Gpio.GpioSharingMode
   )
   return WinRt.Windows.Devices.Gpio.GpioPin'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.IGpioPin;
   begin
      return RetVal : WinRt.Windows.Devices.Gpio.GpioPin do
         Hr := this.m_IGpioController.all.OpenPin (pinNumber, sharingMode, m_ComRetVal'Access);
         Retval.m_IGpioPin := new Windows.Devices.Gpio.IGpioPin;
         Retval.m_IGpioPin.all := m_ComRetVal;
      end return;
   end;

   function TryOpenPin
   (
      this : in out GpioController;
      pinNumber : WinRt.Int32;
      sharingMode : Windows.Devices.Gpio.GpioSharingMode;
      pin : access Windows.Devices.Gpio.IGpioPin;
      openStatus : Windows.Devices.Gpio.GpioOpenStatus_Ptr
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGpioController.all.TryOpenPin (pinNumber, sharingMode, pin, openStatus, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GpioPin

   procedure Initialize (this : in out GpioPin) is
   begin
      null;
   end;

   procedure Finalize (this : in out GpioPin) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGpioPin, IGpioPin_Ptr);
   begin
      if this.m_IGpioPin /= null then
         if this.m_IGpioPin.all /= null then
            RefCount := this.m_IGpioPin.all.Release;
            Free (this.m_IGpioPin);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GpioPin

   function add_ValueChanged
   (
      this : in out GpioPin;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IGpioPin.all.add_ValueChanged (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_ValueChanged
   (
      this : in out GpioPin;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioPin.all.remove_ValueChanged (token);
   end;

   function get_DebounceTimeout
   (
      this : in out GpioPin
   )
   return WinRt.Windows.Foundation.TimeSpan is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.TimeSpan;
   begin
      Hr := this.m_IGpioPin.all.get_DebounceTimeout (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_DebounceTimeout
   (
      this : in out GpioPin;
      value : Windows.Foundation.TimeSpan
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioPin.all.put_DebounceTimeout (value);
   end;

   function get_PinNumber
   (
      this : in out GpioPin
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IGpioPin.all.get_PinNumber (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_SharingMode
   (
      this : in out GpioPin
   )
   return WinRt.Windows.Devices.Gpio.GpioSharingMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioSharingMode;
   begin
      Hr := this.m_IGpioPin.all.get_SharingMode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function IsDriveModeSupported
   (
      this : in out GpioPin;
      driveMode : Windows.Devices.Gpio.GpioPinDriveMode
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IGpioPin.all.IsDriveModeSupported (driveMode, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function GetDriveMode
   (
      this : in out GpioPin
   )
   return WinRt.Windows.Devices.Gpio.GpioPinDriveMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioPinDriveMode;
   begin
      Hr := this.m_IGpioPin.all.GetDriveMode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure SetDriveMode
   (
      this : in out GpioPin;
      value : Windows.Devices.Gpio.GpioPinDriveMode
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioPin.all.SetDriveMode (value);
   end;

   procedure Write
   (
      this : in out GpioPin;
      value : Windows.Devices.Gpio.GpioPinValue
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGpioPin.all.Write (value);
   end;

   function Read
   (
      this : in out GpioPin
   )
   return WinRt.Windows.Devices.Gpio.GpioPinValue is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioPinValue;
   begin
      Hr := this.m_IGpioPin.all.Read (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure Close
   (
      this : in out GpioPin
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Foundation.IClosable := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Devices.Gpio.IGpioPin_Interface, WinRt.Windows.Foundation.IClosable, WinRt.Windows.Foundation.IID_IClosable'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IGpioPin.all);
      Hr := m_Interface.Close;
      m_RefCount := m_Interface.Release;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GpioPinValueChangedEventArgs

   procedure Initialize (this : in out GpioPinValueChangedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out GpioPinValueChangedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGpioPinValueChangedEventArgs, IGpioPinValueChangedEventArgs_Ptr);
   begin
      if this.m_IGpioPinValueChangedEventArgs /= null then
         if this.m_IGpioPinValueChangedEventArgs.all /= null then
            RefCount := this.m_IGpioPinValueChangedEventArgs.all.Release;
            Free (this.m_IGpioPinValueChangedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GpioPinValueChangedEventArgs

   function get_Edge
   (
      this : in out GpioPinValueChangedEventArgs
   )
   return WinRt.Windows.Devices.Gpio.GpioPinEdge is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Devices.Gpio.GpioPinEdge;
   begin
      Hr := this.m_IGpioPinValueChangedEventArgs.all.get_Edge (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

end;
