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
package WinRt.Windows.UI.Xaml.Automation.Text is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type TextPatternRangeEndpoint is (
      Start_e,
      End_e
   );
   for TextPatternRangeEndpoint use (
      Start_e => 0,
      End_e => 1
   );
   type TextPatternRangeEndpoint_Ptr is access all TextPatternRangeEndpoint;

   type TextUnit is (
      Character_e,
      Format_e,
      Word_e,
      Line_e,
      Paragraph_e,
      Page_e,
      Document_e
   );
   for TextUnit use (
      Character_e => 0,
      Format_e => 1,
      Word_e => 2,
      Line_e => 3,
      Paragraph_e => 4,
      Page_e => 5,
      Document_e => 6
   );
   type TextUnit_Ptr is access all TextUnit;

end;
