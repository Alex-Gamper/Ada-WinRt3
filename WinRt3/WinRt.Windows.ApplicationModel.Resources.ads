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
limited with WinRt.Windows.UI;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.Resources is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IResourceLoader_Interface is interface and WinRt.IInspectable_Interface;
   type IResourceLoader is access all IResourceLoader_Interface'Class;
   type IResourceLoader_Ptr is access all IResourceLoader;

   type IResourceLoader2_Interface is interface and WinRt.IInspectable_Interface;
   type IResourceLoader2 is access all IResourceLoader2_Interface'Class;

   type IResourceLoaderFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IResourceLoaderFactory is access all IResourceLoaderFactory_Interface'Class;

   type IResourceLoaderStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IResourceLoaderStatics is access all IResourceLoaderStatics_Interface'Class;

   type IResourceLoaderStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type IResourceLoaderStatics2 is access all IResourceLoaderStatics2_Interface'Class;

   type IResourceLoaderStatics3_Interface is interface and WinRt.IInspectable_Interface;
   type IResourceLoaderStatics3 is access all IResourceLoaderStatics3_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type ResourceLoader is new Ada.Finalization.Limited_Controlled with
      record
         m_IResourceLoader : access Windows.ApplicationModel.Resources.IResourceLoader;
      end record;
   type ResourceLoader_Ptr is access all ResourceLoader;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IResourceLoader is interface and WinRt.IInspectable;

      function GetString
      (
         this : access IResourceLoader_Interface;
         resource : WinRt.HString;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IResourceLoader : aliased WinRt.IID := (139610376, 5871, 17837, (166, 2, 41, 54, 55, 215, 230, 26 ));

   -----------------------------------------------------------------------------
   -- type IResourceLoader2 is interface and WinRt.IInspectable;

      function GetStringForUri
      (
         this : access IResourceLoader2_Interface;
         uri : Windows.Foundation.IUriRuntimeClass;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IResourceLoader2 : aliased WinRt.IID := (283864774, 33080, 18625, (188, 101, 225, 241, 66, 7, 54, 124 ));

   -----------------------------------------------------------------------------
   -- type IResourceLoaderFactory is interface and WinRt.IInspectable;

      function CreateResourceLoaderByName
      (
         this : access IResourceLoaderFactory_Interface;
         name : WinRt.HString;
         RetVal : access Windows.ApplicationModel.Resources.IResourceLoader
      )
      return WinRt.Hresult is abstract;

      IID_IResourceLoaderFactory : aliased WinRt.IID := (3275372035, 27100, 17029, (160, 119, 213, 192, 228, 124, 203, 232 ));

   -----------------------------------------------------------------------------
   -- type IResourceLoaderStatics is interface and WinRt.IInspectable;

      function GetStringForReference
      (
         this : access IResourceLoaderStatics_Interface;
         uri : Windows.Foundation.IUriRuntimeClass;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IResourceLoaderStatics : aliased WinRt.IID := (3212279009, 6600, 18882, (149, 60, 71, 233, 34, 123, 51, 78 ));

   -----------------------------------------------------------------------------
   -- type IResourceLoaderStatics2 is interface and WinRt.IInspectable;

      function GetForCurrentView
      (
         this : access IResourceLoaderStatics2_Interface;
         RetVal : access Windows.ApplicationModel.Resources.IResourceLoader
      )
      return WinRt.Hresult is abstract;

      function GetForCurrentView
      (
         this : access IResourceLoaderStatics2_Interface;
         name : WinRt.HString;
         RetVal : access Windows.ApplicationModel.Resources.IResourceLoader
      )
      return WinRt.Hresult is abstract;

      function GetForViewIndependentUse
      (
         this : access IResourceLoaderStatics2_Interface;
         RetVal : access Windows.ApplicationModel.Resources.IResourceLoader
      )
      return WinRt.Hresult is abstract;

      function GetForViewIndependentUse
      (
         this : access IResourceLoaderStatics2_Interface;
         name : WinRt.HString;
         RetVal : access Windows.ApplicationModel.Resources.IResourceLoader
      )
      return WinRt.Hresult is abstract;

      IID_IResourceLoaderStatics2 : aliased WinRt.IID := (213926209, 25702, 18825, (148, 148, 11, 130, 223, 197, 63, 31 ));

   -----------------------------------------------------------------------------
   -- type IResourceLoaderStatics3 is interface and WinRt.IInspectable;

      function GetForUIContext
      (
         this : access IResourceLoaderStatics3_Interface;
         context : Windows.UI.IUIContext;
         RetVal : access Windows.ApplicationModel.Resources.IResourceLoader
      )
      return WinRt.Hresult is abstract;

      IID_IResourceLoaderStatics3 : aliased WinRt.IID := (1684053499, 25772, 18715, (129, 0, 14, 85, 141, 97, 193, 208 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ResourceLoader

   overriding procedure Initialize (this : in out ResourceLoader);
   overriding procedure Finalize (this : in out ResourceLoader);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for ResourceLoader

   function Constructor
   (
      name : WinRt.WString
   )
   return ResourceLoader;

   function Constructor return ResourceLoader;

   -----------------------------------------------------------------------------
   -- Static Interfaces for ResourceLoader

   function GetStringForReference
   (
      uri : Windows.Foundation.Uri'Class
   )
   return WinRt.WString;

   function GetForUIContext
   (
      context : Windows.UI.UIContext'Class
   )
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader;

   function GetForCurrentView
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader;

   function GetForCurrentView
   (
      name : WinRt.WString
   )
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader;

   function GetForViewIndependentUse
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader;

   function GetForViewIndependentUse
   (
      name : WinRt.WString
   )
   return WinRt.Windows.ApplicationModel.Resources.ResourceLoader;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ResourceLoader

   function GetString
   (
      this : in out ResourceLoader;
      resource : WinRt.WString
   )
   return WinRt.WString;

   function GetStringForUri
   (
      this : in out ResourceLoader;
      uri : Windows.Foundation.Uri'Class
   )
   return WinRt.WString;

end;
