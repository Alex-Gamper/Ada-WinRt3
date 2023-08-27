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
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.Adc.Provider is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IAdcControllerProvider_Interface is interface and WinRt.IInspectable_Interface;
   type IAdcControllerProvider is access all IAdcControllerProvider_Interface'Class;

   type IAdcProvider_Interface is interface and WinRt.IInspectable_Interface;
   type IAdcProvider is access all IAdcProvider_Interface'Class;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type ProviderAdcChannelMode is (
      SingleEnded_e,
      Differential_e
   );
   for ProviderAdcChannelMode use (
      SingleEnded_e => 0,
      Differential_e => 1
   );
   type ProviderAdcChannelMode_Ptr is access all ProviderAdcChannelMode;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IAdcControllerProvider is interface and WinRt.IInspectable;

      function get_ChannelCount
      (
         this : access IAdcControllerProvider_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_ResolutionInBits
      (
         this : access IAdcControllerProvider_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_MinValue
      (
         this : access IAdcControllerProvider_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_MaxValue
      (
         this : access IAdcControllerProvider_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_ChannelMode
      (
         this : access IAdcControllerProvider_Interface;
         RetVal : access Windows.Devices.Adc.Provider.ProviderAdcChannelMode
      )
      return WinRt.Hresult is abstract;

      function put_ChannelMode
      (
         this : access IAdcControllerProvider_Interface;
         value : Windows.Devices.Adc.Provider.ProviderAdcChannelMode
      )
      return WinRt.Hresult is abstract;

      function IsChannelModeSupported
      (
         this : access IAdcControllerProvider_Interface;
         channelMode : Windows.Devices.Adc.Provider.ProviderAdcChannelMode;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function AcquireChannel
      (
         this : access IAdcControllerProvider_Interface;
         channel : WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function ReleaseChannel
      (
         this : access IAdcControllerProvider_Interface;
         channel : WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function ReadValue
      (
         this : access IAdcControllerProvider_Interface;
         channelNumber : WinRt.Int32;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      IID_IAdcControllerProvider : aliased WinRt.IID := (3193198632, 33133, 19941, (160, 72, 171, 160, 105, 88, 170, 168 ));

   -----------------------------------------------------------------------------
   -- type IAdcProvider is interface and WinRt.IInspectable;

      function GetControllers
      (
         this : access IAdcProvider_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IAdcProvider : aliased WinRt.IID := (680867432, 37721, 19543, (188, 136, 226, 117, 232, 22, 56, 201 ));

end;