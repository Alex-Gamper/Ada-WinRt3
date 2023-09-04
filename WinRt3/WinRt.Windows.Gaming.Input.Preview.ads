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
limited with WinRt.Windows.Gaming.Input.Custom;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Gaming.Input.Preview is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IGameControllerProviderInfoStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IGameControllerProviderInfoStatics is access IGameControllerProviderInfoStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IGameControllerProviderInfoStatics is interface and WinRt.IInspectable;

      function GetParentProviderId
      (
         this : access IGameControllerProviderInfoStatics_Interface;
         provider : Windows.Gaming.Input.Custom.IGameControllerProvider;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetProviderId
      (
         this : access IGameControllerProviderInfoStatics_Interface;
         provider : Windows.Gaming.Input.Custom.IGameControllerProvider;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IGameControllerProviderInfoStatics : aliased WinRt.IID := (199354053, 55741, 17646, (131, 98, 72, 139, 46, 70, 75, 251 ));

end;
