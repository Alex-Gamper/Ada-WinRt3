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
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.System.Profile.SystemManufacturers is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for OemSupportInfo

   procedure Initialize (this : in out OemSupportInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out OemSupportInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IOemSupportInfo, IOemSupportInfo_Ptr);
   begin
      if this.m_IOemSupportInfo /= null then
         if this.m_IOemSupportInfo.all /= null then
            RefCount := this.m_IOemSupportInfo.all.Release;
            Free (this.m_IOemSupportInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for OemSupportInfo

   function get_SupportLink
   (
      this : in out OemSupportInfo
   )
   return WinRt.Windows.Foundation.Uri'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.IUriRuntimeClass;
   begin
      return RetVal : WinRt.Windows.Foundation.Uri do
         Hr := this.m_IOemSupportInfo.all.get_SupportLink (m_ComRetVal'Access);
         Retval.m_IUriRuntimeClass := new Windows.Foundation.IUriRuntimeClass;
         Retval.m_IUriRuntimeClass.all := m_ComRetVal;
      end return;
   end;

   function get_SupportAppLink
   (
      this : in out OemSupportInfo
   )
   return WinRt.Windows.Foundation.Uri'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.IUriRuntimeClass;
   begin
      return RetVal : WinRt.Windows.Foundation.Uri do
         Hr := this.m_IOemSupportInfo.all.get_SupportAppLink (m_ComRetVal'Access);
         Retval.m_IUriRuntimeClass := new Windows.Foundation.IUriRuntimeClass;
         Retval.m_IUriRuntimeClass.all := m_ComRetVal;
      end return;
   end;

   function get_SupportProvider
   (
      this : in out OemSupportInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IOemSupportInfo.all.get_SupportProvider (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package body SmbiosInformation is

      function get_SerialNumber
      return WinRt.WString is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.System.Profile.SystemManufacturers.SmbiosInformation");
         m_Factory        : access WinRt.Windows.System.Profile.SystemManufacturers.ISmbiosInformationStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased WinRt.HString;
         AdaRetval        : WString;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_ISmbiosInformationStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_SerialNumber (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         AdaRetval := To_Ada (m_ComRetVal);
         Hr := WindowsDeleteString (m_ComRetVal);
         return AdaRetVal;
      end;

   end SmbiosInformation;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SystemSupportDeviceInfo

   procedure Initialize (this : in out SystemSupportDeviceInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out SystemSupportDeviceInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ISystemSupportDeviceInfo, ISystemSupportDeviceInfo_Ptr);
   begin
      if this.m_ISystemSupportDeviceInfo /= null then
         if this.m_ISystemSupportDeviceInfo.all /= null then
            RefCount := this.m_ISystemSupportDeviceInfo.all.Release;
            Free (this.m_ISystemSupportDeviceInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SystemSupportDeviceInfo

   function get_OperatingSystem
   (
      this : in out SystemSupportDeviceInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ISystemSupportDeviceInfo.all.get_OperatingSystem (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_FriendlyName
   (
      this : in out SystemSupportDeviceInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ISystemSupportDeviceInfo.all.get_FriendlyName (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_SystemManufacturer
   (
      this : in out SystemSupportDeviceInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ISystemSupportDeviceInfo.all.get_SystemManufacturer (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_SystemProductName
   (
      this : in out SystemSupportDeviceInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ISystemSupportDeviceInfo.all.get_SystemProductName (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_SystemSku
   (
      this : in out SystemSupportDeviceInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ISystemSupportDeviceInfo.all.get_SystemSku (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_SystemHardwareVersion
   (
      this : in out SystemSupportDeviceInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ISystemSupportDeviceInfo.all.get_SystemHardwareVersion (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_SystemFirmwareVersion
   (
      this : in out SystemSupportDeviceInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ISystemSupportDeviceInfo.all.get_SystemFirmwareVersion (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package body SystemSupportInfo is

      function get_LocalDeviceInfo
      return WinRt.Windows.System.Profile.SystemManufacturers.SystemSupportDeviceInfo is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.System.Profile.SystemManufacturers.SystemSupportInfo");
         m_Factory        : access WinRt.Windows.System.Profile.SystemManufacturers.ISystemSupportInfoStatics2_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased Windows.System.Profile.SystemManufacturers.ISystemSupportDeviceInfo;
      begin
         return RetVal : WinRt.Windows.System.Profile.SystemManufacturers.SystemSupportDeviceInfo do
            Hr := RoGetActivationFactory (m_hString, IID_ISystemSupportInfoStatics2'Access , m_Factory'Address);
            if Hr = S_OK then
               Hr := m_Factory.get_LocalDeviceInfo (m_ComRetVal'Access);
               m_RefCount := m_Factory.Release;
               Retval.m_ISystemSupportDeviceInfo := new Windows.System.Profile.SystemManufacturers.ISystemSupportDeviceInfo;
               Retval.m_ISystemSupportDeviceInfo.all := m_ComRetVal;
            end if;
            Hr := WindowsDeleteString (m_hString);
         end return;
      end;

      function get_LocalSystemEdition
      return WinRt.WString is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.System.Profile.SystemManufacturers.SystemSupportInfo");
         m_Factory        : access WinRt.Windows.System.Profile.SystemManufacturers.ISystemSupportInfoStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased WinRt.HString;
         AdaRetval        : WString;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_ISystemSupportInfoStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_LocalSystemEdition (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         AdaRetval := To_Ada (m_ComRetVal);
         Hr := WindowsDeleteString (m_ComRetVal);
         return AdaRetVal;
      end;

      function get_OemSupportInfo
      return WinRt.Windows.System.Profile.SystemManufacturers.OemSupportInfo is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.System.Profile.SystemManufacturers.SystemSupportInfo");
         m_Factory        : access WinRt.Windows.System.Profile.SystemManufacturers.ISystemSupportInfoStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased Windows.System.Profile.SystemManufacturers.IOemSupportInfo;
      begin
         return RetVal : WinRt.Windows.System.Profile.SystemManufacturers.OemSupportInfo do
            Hr := RoGetActivationFactory (m_hString, IID_ISystemSupportInfoStatics'Access , m_Factory'Address);
            if Hr = S_OK then
               Hr := m_Factory.get_OemSupportInfo (m_ComRetVal'Access);
               m_RefCount := m_Factory.Release;
               Retval.m_IOemSupportInfo := new Windows.System.Profile.SystemManufacturers.IOemSupportInfo;
               Retval.m_IOemSupportInfo.all := m_ComRetVal;
            end if;
            Hr := WindowsDeleteString (m_hString);
         end return;
      end;

   end SystemSupportInfo;

end;
