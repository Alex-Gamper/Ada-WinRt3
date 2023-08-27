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
with WinRt.Windows.Foundation.Collections;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.CommunicationBlocking is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ICommunicationBlockingAccessManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ICommunicationBlockingAccessManagerStatics is access all ICommunicationBlockingAccessManagerStatics_Interface'Class;

   type ICommunicationBlockingAppManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ICommunicationBlockingAppManagerStatics is access all ICommunicationBlockingAppManagerStatics_Interface'Class;

   type ICommunicationBlockingAppManagerStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type ICommunicationBlockingAppManagerStatics2 is access all ICommunicationBlockingAppManagerStatics2_Interface'Class;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type CommunicationBlockingContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type CommunicationBlockingContract_Ptr is access all CommunicationBlockingContract;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ICommunicationBlockingAccessManagerStatics is interface and WinRt.IInspectable;

      function get_IsBlockingActive
      (
         this : access ICommunicationBlockingAccessManagerStatics_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function IsBlockedNumberAsync
      (
         this : access ICommunicationBlockingAccessManagerStatics_Interface;
         number : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function ShowBlockNumbersUI
      (
         this : access ICommunicationBlockingAccessManagerStatics_Interface;
         phoneNumbers : GenericObject;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function ShowUnblockNumbersUI
      (
         this : access ICommunicationBlockingAccessManagerStatics_Interface;
         phoneNumbers : GenericObject;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function ShowBlockedCallsUI
      (
         this : access ICommunicationBlockingAccessManagerStatics_Interface
      )
      return WinRt.Hresult is abstract;

      function ShowBlockedMessagesUI
      (
         this : access ICommunicationBlockingAccessManagerStatics_Interface
      )
      return WinRt.Hresult is abstract;

      IID_ICommunicationBlockingAccessManagerStatics : aliased WinRt.IID := (479631768, 40234, 23991, (237, 213, 12, 228, 7, 252, 37, 149 ));

   -----------------------------------------------------------------------------
   -- type ICommunicationBlockingAppManagerStatics is interface and WinRt.IInspectable;

      function get_IsCurrentAppActiveBlockingApp
      (
         this : access ICommunicationBlockingAppManagerStatics_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function ShowCommunicationBlockingSettingsUI
      (
         this : access ICommunicationBlockingAppManagerStatics_Interface
      )
      return WinRt.Hresult is abstract;

      IID_ICommunicationBlockingAppManagerStatics : aliased WinRt.IID := (2010863852, 5286, 19370, (148, 42, 106, 103, 61, 153, 155, 242 ));

   -----------------------------------------------------------------------------
   -- type ICommunicationBlockingAppManagerStatics2 is interface and WinRt.IInspectable;

      function RequestSetAsActiveBlockingAppAsync
      (
         this : access ICommunicationBlockingAppManagerStatics2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ICommunicationBlockingAppManagerStatics2 : aliased WinRt.IID := (346459869, 60808, 17786, (163, 100, 163, 99, 77, 111, 22, 109 ));

end;