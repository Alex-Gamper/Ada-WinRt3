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
package WinRt.Windows.Devices.Background is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IDeviceServicingDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IDeviceServicingDetails is access all IDeviceServicingDetails_Interface'Class;
   type IDeviceServicingDetails_Ptr is access all IDeviceServicingDetails;

   type IDeviceUseDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IDeviceUseDetails is access all IDeviceUseDetails_Interface'Class;
   type IDeviceUseDetails_Ptr is access all IDeviceUseDetails;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type DeviceServicingDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IDeviceServicingDetails : access Windows.Devices.Background.IDeviceServicingDetails;
      end record;
   type DeviceServicingDetails_Ptr is access all DeviceServicingDetails;

   type DeviceUseDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IDeviceUseDetails : access Windows.Devices.Background.IDeviceUseDetails;
      end record;
   type DeviceUseDetails_Ptr is access all DeviceUseDetails;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IDeviceServicingDetails is interface and WinRt.IInspectable;

      function get_DeviceId
      (
         this : access IDeviceServicingDetails_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Arguments
      (
         this : access IDeviceServicingDetails_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ExpectedDuration
      (
         this : access IDeviceServicingDetails_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      IID_IDeviceServicingDetails : aliased WinRt.IID := (1252781609, 9028, 19140, (133, 39, 74, 142, 246, 144, 86, 69 ));

   -----------------------------------------------------------------------------
   -- type IDeviceUseDetails is interface and WinRt.IInspectable;

      function get_DeviceId
      (
         this : access IDeviceUseDetails_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Arguments
      (
         this : access IDeviceUseDetails_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IDeviceUseDetails : aliased WinRt.IID := (2102808897, 21886, 16724, (185, 148, 228, 247, 161, 31, 179, 35 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DeviceServicingDetails

   overriding procedure Initialize (this : in out DeviceServicingDetails);
   overriding procedure Finalize (this : in out DeviceServicingDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DeviceServicingDetails

   function get_DeviceId
   (
      this : in out DeviceServicingDetails
   )
   return WinRt.WString;

   function get_Arguments
   (
      this : in out DeviceServicingDetails
   )
   return WinRt.WString;

   function get_ExpectedDuration
   (
      this : in out DeviceServicingDetails
   )
   return WinRt.Windows.Foundation.TimeSpan;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DeviceUseDetails

   overriding procedure Initialize (this : in out DeviceUseDetails);
   overriding procedure Finalize (this : in out DeviceUseDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DeviceUseDetails

   function get_DeviceId
   (
      this : in out DeviceUseDetails
   )
   return WinRt.WString;

   function get_Arguments
   (
      this : in out DeviceUseDetails
   )
   return WinRt.WString;

end;