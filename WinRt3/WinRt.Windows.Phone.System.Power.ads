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
package WinRt.Windows.Phone.System.Power is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPowerManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPowerManagerStatics is access all IPowerManagerStatics_Interface'Class;

   type IPowerManagerStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type IPowerManagerStatics2 is access all IPowerManagerStatics2_Interface'Class;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type PowerSavingMode is (
      Off_e,
      On_e
   );
   for PowerSavingMode use (
      Off_e => 0,
      On_e => 1
   );
   type PowerSavingMode_Ptr is access all PowerSavingMode;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPowerManagerStatics is interface and WinRt.IInspectable;

      function get_PowerSavingMode
      (
         this : access IPowerManagerStatics_Interface;
         RetVal : access Windows.Phone.System.Power.PowerSavingMode
      )
      return WinRt.Hresult is abstract;

      function add_PowerSavingModeChanged
      (
         this : access IPowerManagerStatics_Interface;
         changeHandler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PowerSavingModeChanged
      (
         this : access IPowerManagerStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IPowerManagerStatics : aliased WinRt.IID := (635342800, 7259, 4577, (189, 219, 8, 0, 32, 12, 154, 102 ));

   -----------------------------------------------------------------------------
   -- type IPowerManagerStatics2 is interface and WinRt.IInspectable;

      function get_PowerSavingModeEnabled
      (
         this : access IPowerManagerStatics2_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IPowerManagerStatics2 : aliased WinRt.IID := (1499608783, 6424, 17745, (164, 102, 197, 26, 174, 55, 59, 248 ));

end;
