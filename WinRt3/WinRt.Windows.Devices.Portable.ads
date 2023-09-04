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
limited with WinRt.Windows.Storage;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.Portable is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IServiceDeviceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IServiceDeviceStatics is access IServiceDeviceStatics_Interface'Class;

   type IStorageDeviceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IStorageDeviceStatics is access IStorageDeviceStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type ServiceDeviceType is (
      CalendarService_e,
      ContactsService_e,
      DeviceStatusService_e,
      NotesService_e,
      RingtonesService_e,
      SmsService_e,
      TasksService_e
   );
   for ServiceDeviceType use (
      CalendarService_e => 0,
      ContactsService_e => 1,
      DeviceStatusService_e => 2,
      NotesService_e => 3,
      RingtonesService_e => 4,
      SmsService_e => 5,
      TasksService_e => 6
   );
   type ServiceDeviceType_Ptr is access all ServiceDeviceType;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type PortableDeviceContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type PortableDeviceContract_Ptr is access all PortableDeviceContract;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IServiceDeviceStatics is interface and WinRt.IInspectable;

      function GetDeviceSelector
      (
         this : access IServiceDeviceStatics_Interface;
         serviceType : Windows.Devices.Portable.ServiceDeviceType;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelectorFromServiceId
      (
         this : access IServiceDeviceStatics_Interface;
         serviceId : WinRt.Guid;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IServiceDeviceStatics : aliased WinRt.IID := (2827097313, 22983, 18976, (171, 166, 159, 103, 7, 147, 114, 48 ));

   -----------------------------------------------------------------------------
   -- type IStorageDeviceStatics is interface and WinRt.IInspectable;

      function FromId
      (
         this : access IStorageDeviceStatics_Interface;
         deviceId : WinRt.HString;
         RetVal : access Windows.Storage.IStorageFolder
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelector
      (
         this : access IStorageDeviceStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IStorageDeviceStatics : aliased WinRt.IID := (1590576366, 6947, 19922, (134, 82, 188, 22, 79, 0, 49, 40 ));

end;
