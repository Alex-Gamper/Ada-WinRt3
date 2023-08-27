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
package WinRt.Windows.Security.Authentication.Identity is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IEnterpriseKeyCredentialRegistrationInfo_Interface is interface and WinRt.IInspectable_Interface;
   type IEnterpriseKeyCredentialRegistrationInfo is access all IEnterpriseKeyCredentialRegistrationInfo_Interface'Class;
   type IEnterpriseKeyCredentialRegistrationInfo_Ptr is access all IEnterpriseKeyCredentialRegistrationInfo;

   type IEnterpriseKeyCredentialRegistrationManager_Interface is interface and WinRt.IInspectable_Interface;
   type IEnterpriseKeyCredentialRegistrationManager is access all IEnterpriseKeyCredentialRegistrationManager_Interface'Class;
   type IEnterpriseKeyCredentialRegistrationManager_Ptr is access all IEnterpriseKeyCredentialRegistrationManager;

   type IEnterpriseKeyCredentialRegistrationManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IEnterpriseKeyCredentialRegistrationManagerStatics is access all IEnterpriseKeyCredentialRegistrationManagerStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type EnterpriseKeyCredentialRegistrationInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_IEnterpriseKeyCredentialRegistrationInfo : access Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationInfo;
      end record;
   type EnterpriseKeyCredentialRegistrationInfo_Ptr is access all EnterpriseKeyCredentialRegistrationInfo;

   type EnterpriseKeyCredentialRegistrationManager is new Ada.Finalization.Limited_Controlled with
      record
         m_IEnterpriseKeyCredentialRegistrationManager : access Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationManager;
      end record;
   type EnterpriseKeyCredentialRegistrationManager_Ptr is access all EnterpriseKeyCredentialRegistrationManager;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IEnterpriseKeyCredentialRegistrationInfo is interface and WinRt.IInspectable;

      function get_TenantId
      (
         this : access IEnterpriseKeyCredentialRegistrationInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_TenantName
      (
         this : access IEnterpriseKeyCredentialRegistrationInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Subject
      (
         this : access IEnterpriseKeyCredentialRegistrationInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_KeyId
      (
         this : access IEnterpriseKeyCredentialRegistrationInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_KeyName
      (
         this : access IEnterpriseKeyCredentialRegistrationInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IEnterpriseKeyCredentialRegistrationInfo : aliased WinRt.IID := (942807756, 26411, 18467, (182, 3, 107, 60, 117, 61, 175, 151 ));

   -----------------------------------------------------------------------------
   -- type IEnterpriseKeyCredentialRegistrationManager is interface and WinRt.IInspectable;

      function GetRegistrationsAsync
      (
         this : access IEnterpriseKeyCredentialRegistrationManager_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IEnterpriseKeyCredentialRegistrationManager : aliased WinRt.IID := (2213789247, 41567, 19642, (187, 142, 189, 195, 45, 3, 194, 151 ));

   -----------------------------------------------------------------------------
   -- type IEnterpriseKeyCredentialRegistrationManagerStatics is interface and WinRt.IInspectable;

      function get_Current
      (
         this : access IEnterpriseKeyCredentialRegistrationManagerStatics_Interface;
         RetVal : access Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationManager
      )
      return WinRt.Hresult is abstract;

      IID_IEnterpriseKeyCredentialRegistrationManagerStatics : aliased WinRt.IID := (2008571550, 44276, 19392, (186, 194, 64, 187, 70, 239, 187, 63 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for EnterpriseKeyCredentialRegistrationInfo

   overriding procedure Initialize (this : in out EnterpriseKeyCredentialRegistrationInfo);
   overriding procedure Finalize (this : in out EnterpriseKeyCredentialRegistrationInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for EnterpriseKeyCredentialRegistrationInfo

   function get_TenantId
   (
      this : in out EnterpriseKeyCredentialRegistrationInfo
   )
   return WinRt.WString;

   function get_TenantName
   (
      this : in out EnterpriseKeyCredentialRegistrationInfo
   )
   return WinRt.WString;

   function get_Subject
   (
      this : in out EnterpriseKeyCredentialRegistrationInfo
   )
   return WinRt.WString;

   function get_KeyId
   (
      this : in out EnterpriseKeyCredentialRegistrationInfo
   )
   return WinRt.WString;

   function get_KeyName
   (
      this : in out EnterpriseKeyCredentialRegistrationInfo
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for EnterpriseKeyCredentialRegistrationManager

   overriding procedure Initialize (this : in out EnterpriseKeyCredentialRegistrationManager);
   overriding procedure Finalize (this : in out EnterpriseKeyCredentialRegistrationManager);

   -----------------------------------------------------------------------------
   -- Static Interfaces for EnterpriseKeyCredentialRegistrationManager

   function get_Current
   return WinRt.Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationManager;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for EnterpriseKeyCredentialRegistrationManager

   function GetRegistrationsAsync
   (
      this : in out EnterpriseKeyCredentialRegistrationManager
   )
   return WinRt.GenericObject;

end;