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
limited with WinRt.Windows.System.Power;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.Power is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IBattery_Interface is interface and WinRt.IInspectable_Interface;
   type IBattery is access IBattery_Interface'Class;
   type IBattery_Ptr is access all IBattery;

   type IBatteryReport_Interface is interface and WinRt.IInspectable_Interface;
   type IBatteryReport is access IBatteryReport_Interface'Class;
   type IBatteryReport_Ptr is access all IBatteryReport;

   type IBatteryStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IBatteryStatics is access IBatteryStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type Battery is new Ada.Finalization.Limited_Controlled with
      record
         m_IBattery : access Windows.Devices.Power.IBattery;
      end record;
   type Battery_Ptr is access all Battery;

   type BatteryReport is new Ada.Finalization.Limited_Controlled with
      record
         m_IBatteryReport : access Windows.Devices.Power.IBatteryReport;
      end record;
   type BatteryReport_Ptr is access all BatteryReport;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IReference_Int32 is new WinRt.Windows.Foundation.IReference (WinRt.Int32);
   IID_IReference_Int32 : aliased WinRt.IID := (2570502389, 173, 24055, (183, 116, 171, 117, 0, 54, 60, 7 ));
   function QInterface_IReference_Int32 is new Generic_QueryInterface (GenericObject_Interface, IReference_Int32.Kind, IID_IReference_Int32'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IBattery is interface and WinRt.IInspectable;

      function get_DeviceId
      (
         this : access IBattery_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetReport
      (
         this : access IBattery_Interface;
         RetVal : access Windows.Devices.Power.IBatteryReport
      )
      return WinRt.Hresult is abstract;

      function add_ReportUpdated
      (
         this : access IBattery_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ReportUpdated
      (
         this : access IBattery_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IBattery : aliased WinRt.IID := (3163115462, 114, 18376, (139, 93, 97, 74, 170, 122, 67, 126 ));

   -----------------------------------------------------------------------------
   -- type IBatteryReport is interface and WinRt.IInspectable;

      function get_ChargeRateInMilliwatts
      (
         this : access IBatteryReport_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_DesignCapacityInMilliwattHours
      (
         this : access IBatteryReport_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_FullChargeCapacityInMilliwattHours
      (
         this : access IBatteryReport_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_RemainingCapacityInMilliwattHours
      (
         this : access IBatteryReport_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Status
      (
         this : access IBatteryReport_Interface;
         RetVal : access Windows.System.Power.BatteryStatus
      )
      return WinRt.Hresult is abstract;

      IID_IBatteryReport : aliased WinRt.IID := (3380972602, 19987, 16906, (168, 208, 36, 241, 143, 57, 84, 1 ));

   -----------------------------------------------------------------------------
   -- type IBatteryStatics is interface and WinRt.IInspectable;

      function get_AggregateBattery
      (
         this : access IBatteryStatics_Interface;
         RetVal : access Windows.Devices.Power.IBattery
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access IBatteryStatics_Interface;
         deviceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelector
      (
         this : access IBatteryStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IBatteryStatics : aliased WinRt.IID := (2043507382, 40542, 17490, (190, 166, 223, 205, 84, 30, 89, 127 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for Battery

   overriding procedure Initialize (this : in out Battery);
   overriding procedure Finalize (this : in out Battery);

   -----------------------------------------------------------------------------
   -- Static Interfaces for Battery

   function get_AggregateBattery
   return WinRt.Windows.Devices.Power.Battery;

   function FromIdAsync
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Power.Battery;

   function GetDeviceSelector
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for Battery

   function get_DeviceId
   (
      this : in out Battery
   )
   return WinRt.WString;

   function GetReport
   (
      this : in out Battery
   )
   return WinRt.Windows.Devices.Power.BatteryReport'Class;

   function add_ReportUpdated
   (
      this : in out Battery;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ReportUpdated
   (
      this : in out Battery;
      token : Windows.Foundation.EventRegistrationToken
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for BatteryReport

   overriding procedure Initialize (this : in out BatteryReport);
   overriding procedure Finalize (this : in out BatteryReport);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for BatteryReport

   function get_ChargeRateInMilliwatts
   (
      this : in out BatteryReport
   )
   return IReference_Int32.Kind;

   function get_DesignCapacityInMilliwattHours
   (
      this : in out BatteryReport
   )
   return IReference_Int32.Kind;

   function get_FullChargeCapacityInMilliwattHours
   (
      this : in out BatteryReport
   )
   return IReference_Int32.Kind;

   function get_RemainingCapacityInMilliwattHours
   (
      this : in out BatteryReport
   )
   return IReference_Int32.Kind;

   function get_Status
   (
      this : in out BatteryReport
   )
   return WinRt.Windows.System.Power.BatteryStatus;

end;
