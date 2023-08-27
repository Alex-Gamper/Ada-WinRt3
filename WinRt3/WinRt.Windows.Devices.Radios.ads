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
package WinRt.Windows.Devices.Radios is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IRadio_Interface is interface and WinRt.IInspectable_Interface;
   type IRadio is access all IRadio_Interface'Class;
   type IRadio_Ptr is access all IRadio;

   type IRadioStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IRadioStatics is access all IRadioStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type Radio is new Ada.Finalization.Limited_Controlled with
      record
         m_IRadio : access Windows.Devices.Radios.IRadio;
      end record;
   type Radio_Ptr is access all Radio;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type RadioAccessStatus is (
      Unspecified_e,
      Allowed_e,
      DeniedByUser_e,
      DeniedBySystem_e
   );
   for RadioAccessStatus use (
      Unspecified_e => 0,
      Allowed_e => 1,
      DeniedByUser_e => 2,
      DeniedBySystem_e => 3
   );
   type RadioAccessStatus_Ptr is access all RadioAccessStatus;

   type RadioKind is (
      Other_e,
      WiFi_e,
      MobileBroadband_e,
      Bluetooth_e,
      FM_e
   );
   for RadioKind use (
      Other_e => 0,
      WiFi_e => 1,
      MobileBroadband_e => 2,
      Bluetooth_e => 3,
      FM_e => 4
   );
   type RadioKind_Ptr is access all RadioKind;

   type RadioState is (
      Unknown_e,
      On_e,
      Off_e,
      Disabled_e
   );
   for RadioState use (
      Unknown_e => 0,
      On_e => 1,
      Off_e => 2,
      Disabled_e => 3
   );
   type RadioState_Ptr is access all RadioState;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IRadio is interface and WinRt.IInspectable;

      function SetStateAsync
      (
         this : access IRadio_Interface;
         value : Windows.Devices.Radios.RadioState;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function add_StateChanged
      (
         this : access IRadio_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_StateChanged
      (
         this : access IRadio_Interface;
         eventCookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_State
      (
         this : access IRadio_Interface;
         RetVal : access Windows.Devices.Radios.RadioState
      )
      return WinRt.Hresult is abstract;

      function get_Name
      (
         this : access IRadio_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Kind
      (
         this : access IRadio_Interface;
         RetVal : access Windows.Devices.Radios.RadioKind
      )
      return WinRt.Hresult is abstract;

      IID_IRadio : aliased WinRt.IID := (622926047, 45886, 16746, (135, 95, 28, 243, 138, 226, 216, 62 ));

   -----------------------------------------------------------------------------
   -- type IRadioStatics is interface and WinRt.IInspectable;

      function GetRadiosAsync
      (
         this : access IRadioStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelector
      (
         this : access IRadioStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access IRadioStatics_Interface;
         deviceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RequestAccessAsync
      (
         this : access IRadioStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IRadioStatics : aliased WinRt.IID := (1605804334, 26571, 18094, (170, 233, 101, 145, 159, 134, 239, 244 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for Radio

   overriding procedure Initialize (this : in out Radio);
   overriding procedure Finalize (this : in out Radio);

   -----------------------------------------------------------------------------
   -- Static Interfaces for Radio

   function GetRadiosAsync
   return WinRt.GenericObject;

   function GetDeviceSelector
   return WinRt.WString;

   function FromIdAsync
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Radios.Radio;

   function RequestAccessAsync
   return WinRt.Windows.Devices.Radios.RadioAccessStatus;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for Radio

   function SetStateAsync
   (
      this : in out Radio;
      value : Windows.Devices.Radios.RadioState
   )
   return WinRt.Windows.Devices.Radios.RadioAccessStatus;

   function add_StateChanged
   (
      this : in out Radio;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_StateChanged
   (
      this : in out Radio;
      eventCookie : Windows.Foundation.EventRegistrationToken
   );

   function get_State
   (
      this : in out Radio
   )
   return WinRt.Windows.Devices.Radios.RadioState;

   function get_Name
   (
      this : in out Radio
   )
   return WinRt.WString;

   function get_Kind
   (
      this : in out Radio
   )
   return WinRt.Windows.Devices.Radios.RadioKind;

end;
