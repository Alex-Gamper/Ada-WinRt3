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
package body WinRt.Windows.Management.Deployment.Preview is

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package body ClassicAppManager is

      function FindInstalledApp
      (
         appUninstallKey : WinRt.WString
      )
      return WinRt.Windows.Management.Deployment.Preview.InstalledClassicAppInfo is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Management.Deployment.Preview.ClassicAppManager");
         m_Factory        : access WinRt.Windows.Management.Deployment.Preview.IClassicAppManagerStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased Windows.Management.Deployment.Preview.IInstalledClassicAppInfo;
         HStr_appUninstallKey : WinRt.HString := To_HString (appUninstallKey);
      begin
         return RetVal : WinRt.Windows.Management.Deployment.Preview.InstalledClassicAppInfo do
            Hr := RoGetActivationFactory (m_hString, IID_IClassicAppManagerStatics'Access , m_Factory'Address);
            if Hr = S_OK then
               Hr := m_Factory.FindInstalledApp (HStr_appUninstallKey, m_ComRetVal'Access);
               m_RefCount := m_Factory.Release;
               Retval.m_IInstalledClassicAppInfo := new Windows.Management.Deployment.Preview.IInstalledClassicAppInfo;
               Retval.m_IInstalledClassicAppInfo.all := m_ComRetVal;
            end if;
            Hr := WindowsDeleteString (m_hString);
            Hr := WindowsDeleteString (HStr_appUninstallKey);
         end return;
      end;

   end ClassicAppManager;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InstalledClassicAppInfo

   procedure Initialize (this : in out InstalledClassicAppInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out InstalledClassicAppInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IInstalledClassicAppInfo, IInstalledClassicAppInfo_Ptr);
   begin
      if this.m_IInstalledClassicAppInfo /= null then
         if this.m_IInstalledClassicAppInfo.all /= null then
            RefCount := this.m_IInstalledClassicAppInfo.all.Release;
            Free (this.m_IInstalledClassicAppInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InstalledClassicAppInfo

   function get_DisplayName
   (
      this : in out InstalledClassicAppInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IInstalledClassicAppInfo.all.get_DisplayName (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_DisplayVersion
   (
      this : in out InstalledClassicAppInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IInstalledClassicAppInfo.all.get_DisplayVersion (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

end;
