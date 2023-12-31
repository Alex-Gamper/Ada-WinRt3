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
with WinRt.Windows.UI;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.ApplicationModel.Resources is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ResourceLoader

   procedure Initialize (this : in out ResourceLoader) is
   begin
      null;
   end;

   procedure Finalize (this : in out ResourceLoader) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IResourceLoader, IResourceLoader_Ptr);
   begin
      if this.m_IResourceLoader /= null then
         if this.m_IResourceLoader.all /= null then
            RefCount := this.m_IResourceLoader.all.Release;
            Free (this.m_IResourceLoader);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for ResourceLoader

   function Constructor
   (
      name : WinRt.WString
   )
   return ResourceLoader is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.ApplicationModel.Resources.ResourceLoader");
      m_Factory    : access IResourceLoaderFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.ApplicationModel.Resources.IResourceLoader;
      HStr_name : WinRt.HString := To_HString (name);
   begin
      return RetVal : ResourceLoader do
         Hr := RoGetActivationFactory (m_hString, IID_IResourceLoaderFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateResourceLoaderByName (HStr_name, m_ComRetVal'Access);
            Retval.m_IResourceLoader := new Windows.ApplicationModel.Resources.IResourceLoader;
            Retval.m_IResourceLoader.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_name);
      end return;
   end;

   function Constructor return ResourceLoader is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.ApplicationModel.Resources.ResourceLoader");
      m_ComRetVal  : aliased Windows.ApplicationModel.Resources.IResourceLoader;
   begin
      return RetVal : ResourceLoader do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IResourceLoader := new Windows.ApplicationModel.Resources.IResourceLoader;
            Retval.m_IResourceLoader.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for ResourceLoader

   function GetStringForReference
   (
      uri : Windows.Foundation.Uri'Class
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.ApplicationModel.Resources.ResourceLoader");
      m_Factory        : access WinRt.Windows.ApplicationModel.Resources.IResourceLoaderStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := RoGetActivationFactory (m_hString, IID_IResourceLoaderStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.GetStringForReference (uri.m_IUriRuntimeClass.all, m_ComRetVal'Access);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function GetForUIContext
   (
      context : Windows.UI.UIContext'Class
   )
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.ApplicationModel.Resources.ResourceLoader");
      m_Factory        : access WinRt.Windows.ApplicationModel.Resources.IResourceLoaderStatics3_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.Resources.IResourceLoader;
   begin
      return RetVal : WinRt.Windows.ApplicationModel.Resources.ResourceLoader do
         Hr := RoGetActivationFactory (m_hString, IID_IResourceLoaderStatics3'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForUIContext (context.m_IUIContext.all, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IResourceLoader := new Windows.ApplicationModel.Resources.IResourceLoader;
            Retval.m_IResourceLoader.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function GetForCurrentView
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.ApplicationModel.Resources.ResourceLoader");
      m_Factory        : access WinRt.Windows.ApplicationModel.Resources.IResourceLoaderStatics2_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.Resources.IResourceLoader;
   begin
      return RetVal : WinRt.Windows.ApplicationModel.Resources.ResourceLoader do
         Hr := RoGetActivationFactory (m_hString, IID_IResourceLoaderStatics2'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForCurrentView (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IResourceLoader := new Windows.ApplicationModel.Resources.IResourceLoader;
            Retval.m_IResourceLoader.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function GetForCurrentView
   (
      name : WinRt.WString
   )
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.ApplicationModel.Resources.ResourceLoader");
      m_Factory        : access WinRt.Windows.ApplicationModel.Resources.IResourceLoaderStatics2_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.Resources.IResourceLoader;
      HStr_name : WinRt.HString := To_HString (name);
   begin
      return RetVal : WinRt.Windows.ApplicationModel.Resources.ResourceLoader do
         Hr := RoGetActivationFactory (m_hString, IID_IResourceLoaderStatics2'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForCurrentView (HStr_name, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IResourceLoader := new Windows.ApplicationModel.Resources.IResourceLoader;
            Retval.m_IResourceLoader.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_name);
      end return;
   end;

   function GetForViewIndependentUse
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.ApplicationModel.Resources.ResourceLoader");
      m_Factory        : access WinRt.Windows.ApplicationModel.Resources.IResourceLoaderStatics2_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.Resources.IResourceLoader;
   begin
      return RetVal : WinRt.Windows.ApplicationModel.Resources.ResourceLoader do
         Hr := RoGetActivationFactory (m_hString, IID_IResourceLoaderStatics2'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForViewIndependentUse (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IResourceLoader := new Windows.ApplicationModel.Resources.IResourceLoader;
            Retval.m_IResourceLoader.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function GetForViewIndependentUse
   (
      name : WinRt.WString
   )
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.ApplicationModel.Resources.ResourceLoader");
      m_Factory        : access WinRt.Windows.ApplicationModel.Resources.IResourceLoaderStatics2_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.Resources.IResourceLoader;
      HStr_name : WinRt.HString := To_HString (name);
   begin
      return RetVal : WinRt.Windows.ApplicationModel.Resources.ResourceLoader do
         Hr := RoGetActivationFactory (m_hString, IID_IResourceLoaderStatics2'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForViewIndependentUse (HStr_name, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IResourceLoader := new Windows.ApplicationModel.Resources.IResourceLoader;
            Retval.m_IResourceLoader.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_name);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ResourceLoader

   function GetString
   (
      this : in out ResourceLoader;
      resource : WinRt.WString
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      HStr_resource : WinRt.HString := To_HString (resource);
   begin
      Hr := this.m_IResourceLoader.all.GetString (HStr_resource, m_ComRetVal'Access);
      Hr := WindowsDeleteString (HStr_resource);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function GetStringForUri
   (
      this : in out ResourceLoader;
      uri : Windows.Foundation.Uri'Class
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.ApplicationModel.Resources.IResourceLoader2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.ApplicationModel.Resources.IResourceLoader_Interface, WinRt.Windows.ApplicationModel.Resources.IResourceLoader2, WinRt.Windows.ApplicationModel.Resources.IID_IResourceLoader2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IResourceLoader.all);
      Hr := m_Interface.GetStringForUri (uri.m_IUriRuntimeClass.all, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

end;
