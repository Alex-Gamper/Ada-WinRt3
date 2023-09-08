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
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Phone.ApplicationModel is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IApplicationProfileStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IApplicationProfileStatics is access all IApplicationProfileStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type ApplicationProfileModes is (
      Default_e,
      Alternate_e
   );
   for ApplicationProfileModes use (
      Default_e => 0,
      Alternate_e => 1
   );
   type ApplicationProfileModes_Ptr is access all ApplicationProfileModes;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IApplicationProfileStatics is interface and WinRt.IInspectable;

      function get_Modes
      (
         this : access IApplicationProfileStatics_Interface;
         RetVal : access Windows.Phone.ApplicationModel.ApplicationProfileModes
      )
      return WinRt.Hresult is abstract;

      IID_IApplicationProfileStatics : aliased WinRt.IID := (3573582516, 32378, 4577, (167, 242, 176, 161, 72, 36, 1, 155 ));

end;
