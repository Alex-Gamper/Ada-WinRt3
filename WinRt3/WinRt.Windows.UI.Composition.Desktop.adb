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
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.UI.Composition.Desktop is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DesktopWindowTarget

   procedure Initialize (this : in out DesktopWindowTarget) is
   begin
      null;
   end;

   procedure Finalize (this : in out DesktopWindowTarget) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IDesktopWindowTarget, IDesktopWindowTarget_Ptr);
   begin
      if this.m_IDesktopWindowTarget /= null then
         if this.m_IDesktopWindowTarget.all /= null then
            RefCount := this.m_IDesktopWindowTarget.all.Release;
            Free (this.m_IDesktopWindowTarget);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DesktopWindowTarget

   function get_IsTopmost
   (
      this : in out DesktopWindowTarget
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IDesktopWindowTarget.all.get_IsTopmost (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

end;
