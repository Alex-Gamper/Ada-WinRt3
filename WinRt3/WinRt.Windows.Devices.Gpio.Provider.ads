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
with WinRt.Windows.Foundation.Collections;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.Gpio.Provider is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IGpioControllerProvider_Interface is interface and WinRt.IInspectable_Interface;
   type IGpioControllerProvider is access all IGpioControllerProvider_Interface'Class;

   type IGpioPinProvider_Interface is interface and WinRt.IInspectable_Interface;
   type IGpioPinProvider is access all IGpioPinProvider_Interface'Class;

   type IGpioPinProviderValueChangedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IGpioPinProviderValueChangedEventArgs is access all IGpioPinProviderValueChangedEventArgs_Interface'Class;
   type IGpioPinProviderValueChangedEventArgs_Ptr is access all IGpioPinProviderValueChangedEventArgs;

   type IGpioPinProviderValueChangedEventArgsFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IGpioPinProviderValueChangedEventArgsFactory is access all IGpioPinProviderValueChangedEventArgsFactory_Interface'Class;

   type IGpioProvider_Interface is interface and WinRt.IInspectable_Interface;
   type IGpioProvider is access all IGpioProvider_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type GpioPinProviderValueChangedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IGpioPinProviderValueChangedEventArgs : access Windows.Devices.Gpio.Provider.IGpioPinProviderValueChangedEventArgs;
      end record;
   type GpioPinProviderValueChangedEventArgs_Ptr is access all GpioPinProviderValueChangedEventArgs;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type ProviderGpioPinDriveMode is (
      Input_e,
      Output_e,
      InputPullUp_e,
      InputPullDown_e,
      OutputOpenDrain_e,
      OutputOpenDrainPullUp_e,
      OutputOpenSource_e,
      OutputOpenSourcePullDown_e
   );
   for ProviderGpioPinDriveMode use (
      Input_e => 0,
      Output_e => 1,
      InputPullUp_e => 2,
      InputPullDown_e => 3,
      OutputOpenDrain_e => 4,
      OutputOpenDrainPullUp_e => 5,
      OutputOpenSource_e => 6,
      OutputOpenSourcePullDown_e => 7
   );
   type ProviderGpioPinDriveMode_Ptr is access all ProviderGpioPinDriveMode;

   type ProviderGpioPinEdge is (
      FallingEdge_e,
      RisingEdge_e
   );
   for ProviderGpioPinEdge use (
      FallingEdge_e => 0,
      RisingEdge_e => 1
   );
   type ProviderGpioPinEdge_Ptr is access all ProviderGpioPinEdge;

   type ProviderGpioPinValue is (
      Low_e,
      High_e
   );
   for ProviderGpioPinValue use (
      Low_e => 0,
      High_e => 1
   );
   type ProviderGpioPinValue_Ptr is access all ProviderGpioPinValue;

   type ProviderGpioSharingMode is (
      Exclusive_e,
      SharedReadOnly_e
   );
   for ProviderGpioSharingMode use (
      Exclusive_e => 0,
      SharedReadOnly_e => 1
   );
   type ProviderGpioSharingMode_Ptr is access all ProviderGpioSharingMode;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IGpioControllerProvider is interface and WinRt.IInspectable;

      function get_PinCount
      (
         this : access IGpioControllerProvider_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function OpenPinProvider
      (
         this : access IGpioControllerProvider_Interface;
         pin : WinRt.Int32;
         sharingMode : Windows.Devices.Gpio.Provider.ProviderGpioSharingMode;
         RetVal : access Windows.Devices.Gpio.Provider.IGpioPinProvider
      )
      return WinRt.Hresult is abstract;

      IID_IGpioControllerProvider : aliased WinRt.IID := (2903625415, 6634, 19233, (135, 79, 185, 26, 237, 74, 37, 219 ));

   -----------------------------------------------------------------------------
   -- type IGpioPinProvider is interface and WinRt.IInspectable;

      function add_ValueChanged
      (
         this : access IGpioPinProvider_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ValueChanged
      (
         this : access IGpioPinProvider_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_DebounceTimeout
      (
         this : access IGpioPinProvider_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function put_DebounceTimeout
      (
         this : access IGpioPinProvider_Interface;
         value : Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function get_PinNumber
      (
         this : access IGpioPinProvider_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_SharingMode
      (
         this : access IGpioPinProvider_Interface;
         RetVal : access Windows.Devices.Gpio.Provider.ProviderGpioSharingMode
      )
      return WinRt.Hresult is abstract;

      function IsDriveModeSupported
      (
         this : access IGpioPinProvider_Interface;
         driveMode : Windows.Devices.Gpio.Provider.ProviderGpioPinDriveMode;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function GetDriveMode
      (
         this : access IGpioPinProvider_Interface;
         RetVal : access Windows.Devices.Gpio.Provider.ProviderGpioPinDriveMode
      )
      return WinRt.Hresult is abstract;

      function SetDriveMode
      (
         this : access IGpioPinProvider_Interface;
         value : Windows.Devices.Gpio.Provider.ProviderGpioPinDriveMode
      )
      return WinRt.Hresult is abstract;

      function Write
      (
         this : access IGpioPinProvider_Interface;
         value : Windows.Devices.Gpio.Provider.ProviderGpioPinValue
      )
      return WinRt.Hresult is abstract;

      function Read
      (
         this : access IGpioPinProvider_Interface;
         RetVal : access Windows.Devices.Gpio.Provider.ProviderGpioPinValue
      )
      return WinRt.Hresult is abstract;

      IID_IGpioPinProvider : aliased WinRt.IID := (1110723767, 27324, 16639, (156, 231, 115, 184, 83, 1, 185, 0 ));

   -----------------------------------------------------------------------------
   -- type IGpioPinProviderValueChangedEventArgs is interface and WinRt.IInspectable;

      function get_Edge
      (
         this : access IGpioPinProviderValueChangedEventArgs_Interface;
         RetVal : access Windows.Devices.Gpio.Provider.ProviderGpioPinEdge
      )
      return WinRt.Hresult is abstract;

      IID_IGpioPinProviderValueChangedEventArgs : aliased WinRt.IID := (849794802, 15707, 17613, (143, 190, 19, 166, 159, 46, 219, 36 ));

   -----------------------------------------------------------------------------
   -- type IGpioPinProviderValueChangedEventArgsFactory is interface and WinRt.IInspectable;

      function Create
      (
         this : access IGpioPinProviderValueChangedEventArgsFactory_Interface;
         edge : Windows.Devices.Gpio.Provider.ProviderGpioPinEdge;
         RetVal : access Windows.Devices.Gpio.Provider.IGpioPinProviderValueChangedEventArgs
      )
      return WinRt.Hresult is abstract;

      IID_IGpioPinProviderValueChangedEventArgsFactory : aliased WinRt.IID := (1053494105, 22156, 17298, (178, 74, 138, 89, 169, 2, 177, 241 ));

   -----------------------------------------------------------------------------
   -- type IGpioProvider is interface and WinRt.IInspectable;

      function GetControllers
      (
         this : access IGpioProvider_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGpioProvider : aliased WinRt.IID := (1156065031, 2250, 17226, (175, 224, 214, 21, 128, 68, 111, 126 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GpioPinProviderValueChangedEventArgs

   overriding procedure Initialize (this : in out GpioPinProviderValueChangedEventArgs);
   overriding procedure Finalize (this : in out GpioPinProviderValueChangedEventArgs);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for GpioPinProviderValueChangedEventArgs

   function Constructor
   (
      edge : Windows.Devices.Gpio.Provider.ProviderGpioPinEdge
   )
   return GpioPinProviderValueChangedEventArgs;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GpioPinProviderValueChangedEventArgs

   function get_Edge
   (
      this : in out GpioPinProviderValueChangedEventArgs
   )
   return WinRt.Windows.Devices.Gpio.Provider.ProviderGpioPinEdge;

end;
