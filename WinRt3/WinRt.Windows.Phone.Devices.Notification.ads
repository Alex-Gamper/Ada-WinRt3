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
package WinRt.Windows.Phone.Devices.Notification is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IVibrationDevice_Interface is interface and WinRt.IInspectable_Interface;
   type IVibrationDevice is access all IVibrationDevice_Interface'Class;
   type IVibrationDevice_Ptr is access all IVibrationDevice;

   type IVibrationDeviceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IVibrationDeviceStatics is access all IVibrationDeviceStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type VibrationDevice is new Ada.Finalization.Limited_Controlled with
      record
         m_IVibrationDevice : access Windows.Phone.Devices.Notification.IVibrationDevice;
      end record;
   type VibrationDevice_Ptr is access all VibrationDevice;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IVibrationDevice is interface and WinRt.IInspectable;

      function Vibrate
      (
         this : access IVibrationDevice_Interface;
         duration : Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function Cancel
      (
         this : access IVibrationDevice_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IVibrationDevice : aliased WinRt.IID := (457860501, 53197, 19976, (146, 251, 193, 144, 109, 4, 73, 140 ));

   -----------------------------------------------------------------------------
   -- type IVibrationDeviceStatics is interface and WinRt.IInspectable;

      function GetDefault
      (
         this : access IVibrationDeviceStatics_Interface;
         RetVal : access Windows.Phone.Devices.Notification.IVibrationDevice
      )
      return WinRt.Hresult is abstract;

      IID_IVibrationDeviceStatics : aliased WinRt.IID := (858772209, 7273, 19601, (148, 158, 75, 182, 122, 133, 189, 199 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for VibrationDevice

   overriding procedure Initialize (this : in out VibrationDevice);
   overriding procedure Finalize (this : in out VibrationDevice);

   -----------------------------------------------------------------------------
   -- Static Interfaces for VibrationDevice

   function GetDefault
   return WinRt.Windows.Phone.Devices.Notification.VibrationDevice;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for VibrationDevice

   procedure Vibrate
   (
      this : in out VibrationDevice;
      duration : Windows.Foundation.TimeSpan
   );

   procedure Cancel
   (
      this : in out VibrationDevice
   );

end;
