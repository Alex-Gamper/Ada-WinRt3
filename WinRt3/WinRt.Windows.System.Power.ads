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
package WinRt.Windows.System.Power is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IBackgroundEnergyManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IBackgroundEnergyManagerStatics is access IBackgroundEnergyManagerStatics_Interface'Class;

   type IForegroundEnergyManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IForegroundEnergyManagerStatics is access IForegroundEnergyManagerStatics_Interface'Class;

   type IPowerManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPowerManagerStatics is access IPowerManagerStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type BatteryStatus is (
      NotPresent_e,
      Discharging_e,
      Idle_e,
      Charging_e
   );
   for BatteryStatus use (
      NotPresent_e => 0,
      Discharging_e => 1,
      Idle_e => 2,
      Charging_e => 3
   );
   type BatteryStatus_Ptr is access all BatteryStatus;

   type EnergySaverStatus is (
      Disabled_e,
      Off_e,
      On_e
   );
   for EnergySaverStatus use (
      Disabled_e => 0,
      Off_e => 1,
      On_e => 2
   );
   type EnergySaverStatus_Ptr is access all EnergySaverStatus;

   type PowerSupplyStatus is (
      NotPresent_e,
      Inadequate_e,
      Adequate_e
   );
   for PowerSupplyStatus use (
      NotPresent_e => 0,
      Inadequate_e => 1,
      Adequate_e => 2
   );
   type PowerSupplyStatus_Ptr is access all PowerSupplyStatus;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IBackgroundEnergyManagerStatics is interface and WinRt.IInspectable;

      function get_LowUsageLevel
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_NearMaxAcceptableUsageLevel
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_MaxAcceptableUsageLevel
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_ExcessiveUsageLevel
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_NearTerminationUsageLevel
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_TerminationUsageLevel
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_RecentEnergyUsage
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_RecentEnergyUsageLevel
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function add_RecentEnergyUsageIncreased
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_RecentEnergyUsageIncreased
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_RecentEnergyUsageReturnedToLow
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_RecentEnergyUsageReturnedToLow
      (
         this : access IBackgroundEnergyManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IBackgroundEnergyManagerStatics : aliased WinRt.IID := (3004571029, 4480, 17270, (150, 225, 64, 149, 86, 129, 71, 206 ));

   -----------------------------------------------------------------------------
   -- type IForegroundEnergyManagerStatics is interface and WinRt.IInspectable;

      function get_LowUsageLevel
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_NearMaxAcceptableUsageLevel
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_MaxAcceptableUsageLevel
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_ExcessiveUsageLevel
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_RecentEnergyUsage
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_RecentEnergyUsageLevel
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function add_RecentEnergyUsageIncreased
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_RecentEnergyUsageIncreased
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_RecentEnergyUsageReturnedToLow
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_RecentEnergyUsageReturnedToLow
      (
         this : access IForegroundEnergyManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IForegroundEnergyManagerStatics : aliased WinRt.IID := (2683857010, 58999, 18452, (154, 32, 83, 55, 202, 115, 43, 152 ));

   -----------------------------------------------------------------------------
   -- type IPowerManagerStatics is interface and WinRt.IInspectable;

      function get_EnergySaverStatus
      (
         this : access IPowerManagerStatics_Interface;
         RetVal : access Windows.System.Power.EnergySaverStatus
      )
      return WinRt.Hresult is abstract;

      function add_EnergySaverStatusChanged
      (
         this : access IPowerManagerStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_EnergySaverStatusChanged
      (
         this : access IPowerManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_BatteryStatus
      (
         this : access IPowerManagerStatics_Interface;
         RetVal : access Windows.System.Power.BatteryStatus
      )
      return WinRt.Hresult is abstract;

      function add_BatteryStatusChanged
      (
         this : access IPowerManagerStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_BatteryStatusChanged
      (
         this : access IPowerManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_PowerSupplyStatus
      (
         this : access IPowerManagerStatics_Interface;
         RetVal : access Windows.System.Power.PowerSupplyStatus
      )
      return WinRt.Hresult is abstract;

      function add_PowerSupplyStatusChanged
      (
         this : access IPowerManagerStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PowerSupplyStatusChanged
      (
         this : access IPowerManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_RemainingChargePercent
      (
         this : access IPowerManagerStatics_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function add_RemainingChargePercentChanged
      (
         this : access IPowerManagerStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_RemainingChargePercentChanged
      (
         this : access IPowerManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_RemainingDischargeTime
      (
         this : access IPowerManagerStatics_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function add_RemainingDischargeTimeChanged
      (
         this : access IPowerManagerStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_RemainingDischargeTimeChanged
      (
         this : access IPowerManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IPowerManagerStatics : aliased WinRt.IID := (328499805, 25294, 17252, (152, 213, 170, 40, 199, 251, 209, 91 ));

end;
