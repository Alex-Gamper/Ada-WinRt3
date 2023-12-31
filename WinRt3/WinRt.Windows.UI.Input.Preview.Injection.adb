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
with WinRt.Windows.Foundation.Collections;
with WinRt.Windows.Gaming.Input;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.UI.Input.Preview.Injection is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InjectedInputGamepadInfo

   procedure Initialize (this : in out InjectedInputGamepadInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out InjectedInputGamepadInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IInjectedInputGamepadInfo, IInjectedInputGamepadInfo_Ptr);
   begin
      if this.m_IInjectedInputGamepadInfo /= null then
         if this.m_IInjectedInputGamepadInfo.all /= null then
            RefCount := this.m_IInjectedInputGamepadInfo.all.Release;
            Free (this.m_IInjectedInputGamepadInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for InjectedInputGamepadInfo

   function Constructor
   (
      reading : Windows.Gaming.Input.GamepadReading
   )
   return InjectedInputGamepadInfo is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.Input.Preview.Injection.InjectedInputGamepadInfo");
      m_Factory    : access IInjectedInputGamepadInfoFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.UI.Input.Preview.Injection.IInjectedInputGamepadInfo;
   begin
      return RetVal : InjectedInputGamepadInfo do
         Hr := RoGetActivationFactory (m_hString, IID_IInjectedInputGamepadInfoFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateInstance (reading, m_ComRetVal'Access);
            Retval.m_IInjectedInputGamepadInfo := new Windows.UI.Input.Preview.Injection.IInjectedInputGamepadInfo;
            Retval.m_IInjectedInputGamepadInfo.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function Constructor return InjectedInputGamepadInfo is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.Input.Preview.Injection.InjectedInputGamepadInfo");
      m_ComRetVal  : aliased Windows.UI.Input.Preview.Injection.IInjectedInputGamepadInfo;
   begin
      return RetVal : InjectedInputGamepadInfo do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IInjectedInputGamepadInfo := new Windows.UI.Input.Preview.Injection.IInjectedInputGamepadInfo;
            Retval.m_IInjectedInputGamepadInfo.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InjectedInputGamepadInfo

   function get_Buttons
   (
      this : in out InjectedInputGamepadInfo
   )
   return WinRt.Windows.Gaming.Input.GamepadButtons is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Gaming.Input.GamepadButtons;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.get_Buttons (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Buttons
   (
      this : in out InjectedInputGamepadInfo;
      value : Windows.Gaming.Input.GamepadButtons
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.put_Buttons (value);
   end;

   function get_LeftThumbstickX
   (
      this : in out InjectedInputGamepadInfo
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.get_LeftThumbstickX (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_LeftThumbstickX
   (
      this : in out InjectedInputGamepadInfo;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.put_LeftThumbstickX (value);
   end;

   function get_LeftThumbstickY
   (
      this : in out InjectedInputGamepadInfo
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.get_LeftThumbstickY (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_LeftThumbstickY
   (
      this : in out InjectedInputGamepadInfo;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.put_LeftThumbstickY (value);
   end;

   function get_LeftTrigger
   (
      this : in out InjectedInputGamepadInfo
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.get_LeftTrigger (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_LeftTrigger
   (
      this : in out InjectedInputGamepadInfo;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.put_LeftTrigger (value);
   end;

   function get_RightThumbstickX
   (
      this : in out InjectedInputGamepadInfo
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.get_RightThumbstickX (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_RightThumbstickX
   (
      this : in out InjectedInputGamepadInfo;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.put_RightThumbstickX (value);
   end;

   function get_RightThumbstickY
   (
      this : in out InjectedInputGamepadInfo
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.get_RightThumbstickY (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_RightThumbstickY
   (
      this : in out InjectedInputGamepadInfo;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.put_RightThumbstickY (value);
   end;

   function get_RightTrigger
   (
      this : in out InjectedInputGamepadInfo
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.get_RightTrigger (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_RightTrigger
   (
      this : in out InjectedInputGamepadInfo;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputGamepadInfo.all.put_RightTrigger (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InjectedInputKeyboardInfo

   procedure Initialize (this : in out InjectedInputKeyboardInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out InjectedInputKeyboardInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IInjectedInputKeyboardInfo, IInjectedInputKeyboardInfo_Ptr);
   begin
      if this.m_IInjectedInputKeyboardInfo /= null then
         if this.m_IInjectedInputKeyboardInfo.all /= null then
            RefCount := this.m_IInjectedInputKeyboardInfo.all.Release;
            Free (this.m_IInjectedInputKeyboardInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for InjectedInputKeyboardInfo

   function Constructor return InjectedInputKeyboardInfo is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.Input.Preview.Injection.InjectedInputKeyboardInfo");
      m_ComRetVal  : aliased Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo;
   begin
      return RetVal : InjectedInputKeyboardInfo do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IInjectedInputKeyboardInfo := new Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo;
            Retval.m_IInjectedInputKeyboardInfo.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InjectedInputKeyboardInfo

   function get_KeyOptions
   (
      this : in out InjectedInputKeyboardInfo
   )
   return WinRt.Windows.UI.Input.Preview.Injection.InjectedInputKeyOptions is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.InjectedInputKeyOptions;
   begin
      Hr := this.m_IInjectedInputKeyboardInfo.all.get_KeyOptions (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_KeyOptions
   (
      this : in out InjectedInputKeyboardInfo;
      value : Windows.UI.Input.Preview.Injection.InjectedInputKeyOptions
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputKeyboardInfo.all.put_KeyOptions (value);
   end;

   function get_ScanCode
   (
      this : in out InjectedInputKeyboardInfo
   )
   return WinRt.UInt16 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt16;
   begin
      Hr := this.m_IInjectedInputKeyboardInfo.all.get_ScanCode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_ScanCode
   (
      this : in out InjectedInputKeyboardInfo;
      value : WinRt.UInt16
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputKeyboardInfo.all.put_ScanCode (value);
   end;

   function get_VirtualKey
   (
      this : in out InjectedInputKeyboardInfo
   )
   return WinRt.UInt16 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt16;
   begin
      Hr := this.m_IInjectedInputKeyboardInfo.all.get_VirtualKey (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_VirtualKey
   (
      this : in out InjectedInputKeyboardInfo;
      value : WinRt.UInt16
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputKeyboardInfo.all.put_VirtualKey (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InjectedInputMouseInfo

   procedure Initialize (this : in out InjectedInputMouseInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out InjectedInputMouseInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IInjectedInputMouseInfo, IInjectedInputMouseInfo_Ptr);
   begin
      if this.m_IInjectedInputMouseInfo /= null then
         if this.m_IInjectedInputMouseInfo.all /= null then
            RefCount := this.m_IInjectedInputMouseInfo.all.Release;
            Free (this.m_IInjectedInputMouseInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for InjectedInputMouseInfo

   function Constructor return InjectedInputMouseInfo is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.Input.Preview.Injection.InjectedInputMouseInfo");
      m_ComRetVal  : aliased Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo;
   begin
      return RetVal : InjectedInputMouseInfo do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IInjectedInputMouseInfo := new Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo;
            Retval.m_IInjectedInputMouseInfo.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InjectedInputMouseInfo

   function get_MouseOptions
   (
      this : in out InjectedInputMouseInfo
   )
   return WinRt.Windows.UI.Input.Preview.Injection.InjectedInputMouseOptions is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.InjectedInputMouseOptions;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.get_MouseOptions (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_MouseOptions
   (
      this : in out InjectedInputMouseInfo;
      value : Windows.UI.Input.Preview.Injection.InjectedInputMouseOptions
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.put_MouseOptions (value);
   end;

   function get_MouseData
   (
      this : in out InjectedInputMouseInfo
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.get_MouseData (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_MouseData
   (
      this : in out InjectedInputMouseInfo;
      value : WinRt.UInt32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.put_MouseData (value);
   end;

   function get_DeltaY
   (
      this : in out InjectedInputMouseInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.get_DeltaY (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_DeltaY
   (
      this : in out InjectedInputMouseInfo;
      value : WinRt.Int32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.put_DeltaY (value);
   end;

   function get_DeltaX
   (
      this : in out InjectedInputMouseInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.get_DeltaX (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_DeltaX
   (
      this : in out InjectedInputMouseInfo;
      value : WinRt.Int32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.put_DeltaX (value);
   end;

   function get_TimeOffsetInMilliseconds
   (
      this : in out InjectedInputMouseInfo
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.get_TimeOffsetInMilliseconds (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_TimeOffsetInMilliseconds
   (
      this : in out InjectedInputMouseInfo;
      value : WinRt.UInt32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputMouseInfo.all.put_TimeOffsetInMilliseconds (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InjectedInputPenInfo

   procedure Initialize (this : in out InjectedInputPenInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out InjectedInputPenInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IInjectedInputPenInfo, IInjectedInputPenInfo_Ptr);
   begin
      if this.m_IInjectedInputPenInfo /= null then
         if this.m_IInjectedInputPenInfo.all /= null then
            RefCount := this.m_IInjectedInputPenInfo.all.Release;
            Free (this.m_IInjectedInputPenInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for InjectedInputPenInfo

   function Constructor return InjectedInputPenInfo is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.Input.Preview.Injection.InjectedInputPenInfo");
      m_ComRetVal  : aliased Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo;
   begin
      return RetVal : InjectedInputPenInfo do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IInjectedInputPenInfo := new Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo;
            Retval.m_IInjectedInputPenInfo.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InjectedInputPenInfo

   function get_PointerInfo
   (
      this : in out InjectedInputPenInfo
   )
   return WinRt.Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.get_PointerInfo (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_PointerInfo
   (
      this : in out InjectedInputPenInfo;
      value : Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.put_PointerInfo (value);
   end;

   function get_PenButtons
   (
      this : in out InjectedInputPenInfo
   )
   return WinRt.Windows.UI.Input.Preview.Injection.InjectedInputPenButtons is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.InjectedInputPenButtons;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.get_PenButtons (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_PenButtons
   (
      this : in out InjectedInputPenInfo;
      value : Windows.UI.Input.Preview.Injection.InjectedInputPenButtons
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.put_PenButtons (value);
   end;

   function get_PenParameters
   (
      this : in out InjectedInputPenInfo
   )
   return WinRt.Windows.UI.Input.Preview.Injection.InjectedInputPenParameters is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.InjectedInputPenParameters;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.get_PenParameters (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_PenParameters
   (
      this : in out InjectedInputPenInfo;
      value : Windows.UI.Input.Preview.Injection.InjectedInputPenParameters
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.put_PenParameters (value);
   end;

   function get_Pressure
   (
      this : in out InjectedInputPenInfo
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.get_Pressure (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Pressure
   (
      this : in out InjectedInputPenInfo;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.put_Pressure (value);
   end;

   function get_Rotation
   (
      this : in out InjectedInputPenInfo
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.get_Rotation (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Rotation
   (
      this : in out InjectedInputPenInfo;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.put_Rotation (value);
   end;

   function get_TiltX
   (
      this : in out InjectedInputPenInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.get_TiltX (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_TiltX
   (
      this : in out InjectedInputPenInfo;
      value : WinRt.Int32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.put_TiltX (value);
   end;

   function get_TiltY
   (
      this : in out InjectedInputPenInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.get_TiltY (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_TiltY
   (
      this : in out InjectedInputPenInfo;
      value : WinRt.Int32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputPenInfo.all.put_TiltY (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InjectedInputTouchInfo

   procedure Initialize (this : in out InjectedInputTouchInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out InjectedInputTouchInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IInjectedInputTouchInfo, IInjectedInputTouchInfo_Ptr);
   begin
      if this.m_IInjectedInputTouchInfo /= null then
         if this.m_IInjectedInputTouchInfo.all /= null then
            RefCount := this.m_IInjectedInputTouchInfo.all.Release;
            Free (this.m_IInjectedInputTouchInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for InjectedInputTouchInfo

   function Constructor return InjectedInputTouchInfo is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.Input.Preview.Injection.InjectedInputTouchInfo");
      m_ComRetVal  : aliased Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo;
   begin
      return RetVal : InjectedInputTouchInfo do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IInjectedInputTouchInfo := new Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo;
            Retval.m_IInjectedInputTouchInfo.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InjectedInputTouchInfo

   function get_Contact
   (
      this : in out InjectedInputTouchInfo
   )
   return WinRt.Windows.UI.Input.Preview.Injection.InjectedInputRectangle is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.InjectedInputRectangle;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.get_Contact (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Contact
   (
      this : in out InjectedInputTouchInfo;
      value : Windows.UI.Input.Preview.Injection.InjectedInputRectangle
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.put_Contact (value);
   end;

   function get_Orientation
   (
      this : in out InjectedInputTouchInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.get_Orientation (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Orientation
   (
      this : in out InjectedInputTouchInfo;
      value : WinRt.Int32
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.put_Orientation (value);
   end;

   function get_PointerInfo
   (
      this : in out InjectedInputTouchInfo
   )
   return WinRt.Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.get_PointerInfo (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_PointerInfo
   (
      this : in out InjectedInputTouchInfo;
      value : Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.put_PointerInfo (value);
   end;

   function get_Pressure
   (
      this : in out InjectedInputTouchInfo
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.get_Pressure (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Pressure
   (
      this : in out InjectedInputTouchInfo;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.put_Pressure (value);
   end;

   function get_TouchParameters
   (
      this : in out InjectedInputTouchInfo
   )
   return WinRt.Windows.UI.Input.Preview.Injection.InjectedInputTouchParameters is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.InjectedInputTouchParameters;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.get_TouchParameters (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_TouchParameters
   (
      this : in out InjectedInputTouchInfo;
      value : Windows.UI.Input.Preview.Injection.InjectedInputTouchParameters
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInjectedInputTouchInfo.all.put_TouchParameters (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InputInjector

   procedure Initialize (this : in out InputInjector) is
   begin
      null;
   end;

   procedure Finalize (this : in out InputInjector) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IInputInjector, IInputInjector_Ptr);
   begin
      if this.m_IInputInjector /= null then
         if this.m_IInputInjector.all /= null then
            RefCount := this.m_IInputInjector.all.Release;
            Free (this.m_IInputInjector);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for InputInjector

   function TryCreate
   return WinRt.Windows.UI.Input.Preview.Injection.InputInjector is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.UI.Input.Preview.Injection.InputInjector");
      m_Factory        : access WinRt.Windows.UI.Input.Preview.Injection.IInputInjectorStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.IInputInjector;
   begin
      return RetVal : WinRt.Windows.UI.Input.Preview.Injection.InputInjector do
         Hr := RoGetActivationFactory (m_hString, IID_IInputInjectorStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.TryCreate (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IInputInjector := new Windows.UI.Input.Preview.Injection.IInputInjector;
            Retval.m_IInputInjector.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function TryCreateForAppBroadcastOnly
   return WinRt.Windows.UI.Input.Preview.Injection.InputInjector is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.UI.Input.Preview.Injection.InputInjector");
      m_Factory        : access WinRt.Windows.UI.Input.Preview.Injection.IInputInjectorStatics2_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Input.Preview.Injection.IInputInjector;
   begin
      return RetVal : WinRt.Windows.UI.Input.Preview.Injection.InputInjector do
         Hr := RoGetActivationFactory (m_hString, IID_IInputInjectorStatics2'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.TryCreateForAppBroadcastOnly (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IInputInjector := new Windows.UI.Input.Preview.Injection.IInputInjector;
            Retval.m_IInputInjector.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InputInjector

   procedure InjectKeyboardInput
   (
      this : in out InputInjector;
      input : GenericObject
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInputInjector.all.InjectKeyboardInput (input);
   end;

   procedure InjectMouseInput
   (
      this : in out InputInjector;
      input : GenericObject
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInputInjector.all.InjectMouseInput (input);
   end;

   procedure InitializeTouchInjection
   (
      this : in out InputInjector;
      visualMode : Windows.UI.Input.Preview.Injection.InjectedInputVisualizationMode
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInputInjector.all.InitializeTouchInjection (visualMode);
   end;

   procedure InjectTouchInput
   (
      this : in out InputInjector;
      input : GenericObject
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInputInjector.all.InjectTouchInput (input);
   end;

   procedure UninitializeTouchInjection
   (
      this : in out InputInjector
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInputInjector.all.UninitializeTouchInjection;
   end;

   procedure InitializePenInjection
   (
      this : in out InputInjector;
      visualMode : Windows.UI.Input.Preview.Injection.InjectedInputVisualizationMode
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInputInjector.all.InitializePenInjection (visualMode);
   end;

   procedure InjectPenInput
   (
      this : in out InputInjector;
      input : Windows.UI.Input.Preview.Injection.InjectedInputPenInfo'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInputInjector.all.InjectPenInput (input.m_IInjectedInputPenInfo.all);
   end;

   procedure UninitializePenInjection
   (
      this : in out InputInjector
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInputInjector.all.UninitializePenInjection;
   end;

   procedure InjectShortcut
   (
      this : in out InputInjector;
      shortcut : Windows.UI.Input.Preview.Injection.InjectedInputShortcut
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IInputInjector.all.InjectShortcut (shortcut);
   end;

   procedure InitializeGamepadInjection
   (
      this : in out InputInjector
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.Input.Preview.Injection.IInputInjector2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Input.Preview.Injection.IInputInjector_Interface, WinRt.Windows.UI.Input.Preview.Injection.IInputInjector2, WinRt.Windows.UI.Input.Preview.Injection.IID_IInputInjector2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IInputInjector.all);
      Hr := m_Interface.InitializeGamepadInjection;
      m_RefCount := m_Interface.Release;
   end;

   procedure InjectGamepadInput
   (
      this : in out InputInjector;
      input : Windows.UI.Input.Preview.Injection.InjectedInputGamepadInfo'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.Input.Preview.Injection.IInputInjector2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Input.Preview.Injection.IInputInjector_Interface, WinRt.Windows.UI.Input.Preview.Injection.IInputInjector2, WinRt.Windows.UI.Input.Preview.Injection.IID_IInputInjector2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IInputInjector.all);
      Hr := m_Interface.InjectGamepadInput (input.m_IInjectedInputGamepadInfo.all);
      m_RefCount := m_Interface.Release;
   end;

   procedure UninitializeGamepadInjection
   (
      this : in out InputInjector
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.Input.Preview.Injection.IInputInjector2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Input.Preview.Injection.IInputInjector_Interface, WinRt.Windows.UI.Input.Preview.Injection.IInputInjector2, WinRt.Windows.UI.Input.Preview.Injection.IID_IInputInjector2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IInputInjector.all);
      Hr := m_Interface.UninitializeGamepadInjection;
      m_RefCount := m_Interface.Release;
   end;

end;
