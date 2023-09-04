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
package WinRt.Windows.System.Display is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IDisplayRequest_Interface is interface and WinRt.IInspectable_Interface;
   type IDisplayRequest is access IDisplayRequest_Interface'Class;
   type IDisplayRequest_Ptr is access all IDisplayRequest;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type DisplayRequest is new Ada.Finalization.Limited_Controlled with
      record
         m_IDisplayRequest : access Windows.System.Display.IDisplayRequest;
      end record;
   type DisplayRequest_Ptr is access all DisplayRequest;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IDisplayRequest is interface and WinRt.IInspectable;

      function RequestActive
      (
         this : access IDisplayRequest_Interface
      )
      return WinRt.Hresult is abstract;

      function RequestRelease
      (
         this : access IDisplayRequest_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IDisplayRequest : aliased WinRt.IID := (3849527364, 62623, 19296, (141, 212, 94, 126, 58, 99, 42, 192 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DisplayRequest

   overriding procedure Initialize (this : in out DisplayRequest);
   overriding procedure Finalize (this : in out DisplayRequest);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for DisplayRequest

   function Constructor return DisplayRequest;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DisplayRequest

   procedure RequestActive
   (
      this : in out DisplayRequest
   );

   procedure RequestRelease
   (
      this : in out DisplayRequest
   );

end;
