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
limited with WinRt.Windows.Security.Authentication.Web.Core;
limited with WinRt.Windows.Security.Credentials;
limited with WinRt.Windows.Storage.Streams;
limited with WinRt.Windows.System;
limited with WinRt.Windows.UI.Xaml;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.Store.Preview is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IDeliveryOptimizationSettings_Interface is interface and WinRt.IInspectable_Interface;
   type IDeliveryOptimizationSettings is access all IDeliveryOptimizationSettings_Interface'Class;
   type IDeliveryOptimizationSettings_Ptr is access all IDeliveryOptimizationSettings;

   type IDeliveryOptimizationSettingsStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IDeliveryOptimizationSettingsStatics is access all IDeliveryOptimizationSettingsStatics_Interface'Class;

   type IStoreConfigurationStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IStoreConfigurationStatics is access all IStoreConfigurationStatics_Interface'Class;

   type IStoreConfigurationStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type IStoreConfigurationStatics2 is access all IStoreConfigurationStatics2_Interface'Class;

   type IStoreConfigurationStatics3_Interface is interface and WinRt.IInspectable_Interface;
   type IStoreConfigurationStatics3 is access all IStoreConfigurationStatics3_Interface'Class;

   type IStoreConfigurationStatics4_Interface is interface and WinRt.IInspectable_Interface;
   type IStoreConfigurationStatics4 is access all IStoreConfigurationStatics4_Interface'Class;

   type IStoreConfigurationStatics5_Interface is interface and WinRt.IInspectable_Interface;
   type IStoreConfigurationStatics5 is access all IStoreConfigurationStatics5_Interface'Class;

   type IStoreHardwareManufacturerInfo_Interface is interface and WinRt.IInspectable_Interface;
   type IStoreHardwareManufacturerInfo is access all IStoreHardwareManufacturerInfo_Interface'Class;
   type IStoreHardwareManufacturerInfo_Ptr is access all IStoreHardwareManufacturerInfo;

   type IStorePreview_Interface is interface and WinRt.IInspectable_Interface;
   type IStorePreview is access all IStorePreview_Interface'Class;

   type IStorePreviewProductInfo_Interface is interface and WinRt.IInspectable_Interface;
   type IStorePreviewProductInfo is access all IStorePreviewProductInfo_Interface'Class;
   type IStorePreviewProductInfo_Ptr is access all IStorePreviewProductInfo;

   type IStorePreviewPurchaseResults_Interface is interface and WinRt.IInspectable_Interface;
   type IStorePreviewPurchaseResults is access all IStorePreviewPurchaseResults_Interface'Class;
   type IStorePreviewPurchaseResults_Ptr is access all IStorePreviewPurchaseResults;

   type IStorePreviewSkuInfo_Interface is interface and WinRt.IInspectable_Interface;
   type IStorePreviewSkuInfo is access all IStorePreviewSkuInfo_Interface'Class;
   type IStorePreviewSkuInfo_Ptr is access all IStorePreviewSkuInfo;

   type IWebAuthenticationCoreManagerHelper_Interface is interface and WinRt.IInspectable_Interface;
   type IWebAuthenticationCoreManagerHelper is access all IWebAuthenticationCoreManagerHelper_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type DeliveryOptimizationSettings is new Ada.Finalization.Limited_Controlled with
      record
         m_IDeliveryOptimizationSettings : access Windows.ApplicationModel.Store.Preview.IDeliveryOptimizationSettings;
      end record;
   type DeliveryOptimizationSettings_Ptr is access all DeliveryOptimizationSettings;

   type StoreHardwareManufacturerInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_IStoreHardwareManufacturerInfo : access Windows.ApplicationModel.Store.Preview.IStoreHardwareManufacturerInfo;
      end record;
   type StoreHardwareManufacturerInfo_Ptr is access all StoreHardwareManufacturerInfo;

   type StorePreviewProductInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_IStorePreviewProductInfo : access Windows.ApplicationModel.Store.Preview.IStorePreviewProductInfo;
      end record;
   type StorePreviewProductInfo_Ptr is access all StorePreviewProductInfo;

   type StorePreviewPurchaseResults is new Ada.Finalization.Limited_Controlled with
      record
         m_IStorePreviewPurchaseResults : access Windows.ApplicationModel.Store.Preview.IStorePreviewPurchaseResults;
      end record;
   type StorePreviewPurchaseResults_Ptr is access all StorePreviewPurchaseResults;

   type StorePreviewSkuInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_IStorePreviewSkuInfo : access Windows.ApplicationModel.Store.Preview.IStorePreviewSkuInfo;
      end record;
   type StorePreviewSkuInfo_Ptr is access all StorePreviewSkuInfo;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type DeliveryOptimizationDownloadMode is (
      Simple_e,
      HttpOnly_e,
      Lan_e,
      Group_e,
      Internet_e,
      Bypass_e
   );
   for DeliveryOptimizationDownloadMode use (
      Simple_e => 0,
      HttpOnly_e => 1,
      Lan_e => 2,
      Group_e => 3,
      Internet_e => 4,
      Bypass_e => 5
   );
   type DeliveryOptimizationDownloadMode_Ptr is access all DeliveryOptimizationDownloadMode;

   type DeliveryOptimizationDownloadModeSource is (
      Default_e,
      Policy_e
   );
   for DeliveryOptimizationDownloadModeSource use (
      Default_e => 0,
      Policy_e => 1
   );
   type DeliveryOptimizationDownloadModeSource_Ptr is access all DeliveryOptimizationDownloadModeSource;

   type StoreLogOptions is (
      None_e,
      TryElevate_e
   );
   for StoreLogOptions use (
      None_e => 0,
      TryElevate_e => 1
   );
   type StoreLogOptions_Ptr is access all StoreLogOptions;

   type StorePreviewProductPurchaseStatus is (
      Succeeded_e,
      AlreadyPurchased_e,
      NotFulfilled_e,
      NotPurchased_e
   );
   for StorePreviewProductPurchaseStatus use (
      Succeeded_e => 0,
      AlreadyPurchased_e => 1,
      NotFulfilled_e => 2,
      NotPurchased_e => 3
   );
   type StorePreviewProductPurchaseStatus_Ptr is access all StorePreviewProductPurchaseStatus;

   type StoreSystemFeature is (
      ArchitectureX86_e,
      ArchitectureX64_e,
      ArchitectureArm_e,
      DirectX9_e,
      DirectX10_e,
      DirectX11_e,
      D3D12HardwareFL11_e,
      D3D12HardwareFL12_e,
      Memory300MB_e,
      Memory750MB_e,
      Memory1GB_e,
      Memory2GB_e,
      CameraFront_e,
      CameraRear_e,
      Gyroscope_e,
      Hover_e,
      Magnetometer_e,
      Nfc_e,
      Resolution720P_e,
      ResolutionWvga_e,
      ResolutionWvgaOr720P_e,
      ResolutionWxga_e,
      ResolutionWvgaOrWxga_e,
      ResolutionWxgaOr720P_e,
      Memory4GB_e,
      Memory6GB_e,
      Memory8GB_e,
      Memory12GB_e,
      Memory16GB_e,
      Memory20GB_e,
      VideoMemory2GB_e,
      VideoMemory4GB_e,
      VideoMemory6GB_e,
      VideoMemory1GB_e,
      ArchitectureArm64_e
   );
   for StoreSystemFeature use (
      ArchitectureX86_e => 0,
      ArchitectureX64_e => 1,
      ArchitectureArm_e => 2,
      DirectX9_e => 3,
      DirectX10_e => 4,
      DirectX11_e => 5,
      D3D12HardwareFL11_e => 6,
      D3D12HardwareFL12_e => 7,
      Memory300MB_e => 8,
      Memory750MB_e => 9,
      Memory1GB_e => 10,
      Memory2GB_e => 11,
      CameraFront_e => 12,
      CameraRear_e => 13,
      Gyroscope_e => 14,
      Hover_e => 15,
      Magnetometer_e => 16,
      Nfc_e => 17,
      Resolution720P_e => 18,
      ResolutionWvga_e => 19,
      ResolutionWvgaOr720P_e => 20,
      ResolutionWxga_e => 21,
      ResolutionWvgaOrWxga_e => 22,
      ResolutionWxgaOr720P_e => 23,
      Memory4GB_e => 24,
      Memory6GB_e => 25,
      Memory8GB_e => 26,
      Memory12GB_e => 27,
      Memory16GB_e => 28,
      Memory20GB_e => 29,
      VideoMemory2GB_e => 30,
      VideoMemory4GB_e => 31,
      VideoMemory6GB_e => 32,
      VideoMemory1GB_e => 33,
      ArchitectureArm64_e => 34
   );
   type StoreSystemFeature_Ptr is access all StoreSystemFeature;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_IStorePreviewSkuInfo is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.ApplicationModel.Store.Preview.IStorePreviewSkuInfo);
   IID_IVectorView_IStorePreviewSkuInfo : aliased WinRt.IID := (4110701082, 3038, 24242, (167, 32, 88, 63, 64, 67, 15, 208 ));
   function QInterface_IVectorView_IStorePreviewSkuInfo is new Generic_QueryInterface (GenericObject_Interface, IVectorView_IStorePreviewSkuInfo.Kind, IID_IVectorView_IStorePreviewSkuInfo'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IDeliveryOptimizationSettings is interface and WinRt.IInspectable;

      function get_DownloadMode
      (
         this : access IDeliveryOptimizationSettings_Interface;
         RetVal : access Windows.ApplicationModel.Store.Preview.DeliveryOptimizationDownloadMode
      )
      return WinRt.Hresult is abstract;

      function get_DownloadModeSource
      (
         this : access IDeliveryOptimizationSettings_Interface;
         RetVal : access Windows.ApplicationModel.Store.Preview.DeliveryOptimizationDownloadModeSource
      )
      return WinRt.Hresult is abstract;

      IID_IDeliveryOptimizationSettings : aliased WinRt.IID := (403766688, 59475, 22110, (184, 116, 122, 138, 123, 154, 14, 15 ));

   -----------------------------------------------------------------------------
   -- type IDeliveryOptimizationSettingsStatics is interface and WinRt.IInspectable;

      function GetCurrentSettings
      (
         this : access IDeliveryOptimizationSettingsStatics_Interface;
         RetVal : access Windows.ApplicationModel.Store.Preview.IDeliveryOptimizationSettings
      )
      return WinRt.Hresult is abstract;

      IID_IDeliveryOptimizationSettingsStatics : aliased WinRt.IID := (1551989935, 44757, 22937, (180, 201, 140, 96, 137, 139, 196, 243 ));

   -----------------------------------------------------------------------------
   -- type IStoreConfigurationStatics is interface and WinRt.IInspectable;

      function SetSystemConfiguration
      (
         this : access IStoreConfigurationStatics_Interface;
         catalogHardwareManufacturerId : WinRt.HString;
         catalogStoreContentModifierId : WinRt.HString;
         systemConfigurationExpiration : Windows.Foundation.DateTime;
         catalogHardwareDescriptor : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function SetMobileOperatorConfiguration
      (
         this : access IStoreConfigurationStatics_Interface;
         mobileOperatorId : WinRt.HString;
         appDownloadLimitInMegabytes : WinRt.UInt32;
         updateDownloadLimitInMegabytes : WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function SetStoreWebAccountId
      (
         this : access IStoreConfigurationStatics_Interface;
         webAccountId : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function IsStoreWebAccountId
      (
         this : access IStoreConfigurationStatics_Interface;
         webAccountId : WinRt.HString;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_HardwareManufacturerInfo
      (
         this : access IStoreConfigurationStatics_Interface;
         RetVal : access Windows.ApplicationModel.Store.Preview.IStoreHardwareManufacturerInfo
      )
      return WinRt.Hresult is abstract;

      function FilterUnsupportedSystemFeaturesAsync
      (
         this : access IStoreConfigurationStatics_Interface;
         systemFeatures : GenericObject;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IStoreConfigurationStatics : aliased WinRt.IID := (1922006976, 34344, 17132, (132, 162, 7, 120, 14, 180, 77, 139 ));

   -----------------------------------------------------------------------------
   -- type IStoreConfigurationStatics2 is interface and WinRt.IInspectable;

      function get_PurchasePromptingPolicy
      (
         this : access IStoreConfigurationStatics2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function put_PurchasePromptingPolicy
      (
         this : access IStoreConfigurationStatics2_Interface;
         value : GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IStoreConfigurationStatics2 : aliased WinRt.IID := (1702643093, 51383, 20457, (159, 76, 77, 113, 2, 125, 52, 126 ));

   -----------------------------------------------------------------------------
   -- type IStoreConfigurationStatics3 is interface and WinRt.IInspectable;

      function HasStoreWebAccount
      (
         this : access IStoreConfigurationStatics3_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function HasStoreWebAccountForUser
      (
         this : access IStoreConfigurationStatics3_Interface;
         user : Windows.System.IUser;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function GetStoreLogDataAsync
      (
         this : access IStoreConfigurationStatics3_Interface;
         options : Windows.ApplicationModel.Store.Preview.StoreLogOptions;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SetStoreWebAccountIdForUser
      (
         this : access IStoreConfigurationStatics3_Interface;
         user : Windows.System.IUser;
         webAccountId : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function IsStoreWebAccountIdForUser
      (
         this : access IStoreConfigurationStatics3_Interface;
         user : Windows.System.IUser;
         webAccountId : WinRt.HString;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function GetPurchasePromptingPolicyForUser
      (
         this : access IStoreConfigurationStatics3_Interface;
         user : Windows.System.IUser;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SetPurchasePromptingPolicyForUser
      (
         this : access IStoreConfigurationStatics3_Interface;
         user : Windows.System.IUser;
         value : GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IStoreConfigurationStatics3 : aliased WinRt.IID := (1833301372, 61764, 19637, (157, 63, 78, 176, 94, 48, 182, 211 ));

   -----------------------------------------------------------------------------
   -- type IStoreConfigurationStatics4 is interface and WinRt.IInspectable;

      function GetStoreWebAccountId
      (
         this : access IStoreConfigurationStatics4_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetStoreWebAccountIdForUser
      (
         this : access IStoreConfigurationStatics4_Interface;
         user : Windows.System.IUser;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function SetEnterpriseStoreWebAccountId
      (
         this : access IStoreConfigurationStatics4_Interface;
         webAccountId : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function SetEnterpriseStoreWebAccountIdForUser
      (
         this : access IStoreConfigurationStatics4_Interface;
         user : Windows.System.IUser;
         webAccountId : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetEnterpriseStoreWebAccountId
      (
         this : access IStoreConfigurationStatics4_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetEnterpriseStoreWebAccountIdForUser
      (
         this : access IStoreConfigurationStatics4_Interface;
         user : Windows.System.IUser;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function ShouldRestrictToEnterpriseStoreOnly
      (
         this : access IStoreConfigurationStatics4_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function ShouldRestrictToEnterpriseStoreOnlyForUser
      (
         this : access IStoreConfigurationStatics4_Interface;
         user : Windows.System.IUser;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IStoreConfigurationStatics4 : aliased WinRt.IID := (553604818, 20195, 19696, (155, 18, 85, 44, 3, 49, 15, 117 ));

   -----------------------------------------------------------------------------
   -- type IStoreConfigurationStatics5 is interface and WinRt.IInspectable;

      function IsPinToDesktopSupported
      (
         this : access IStoreConfigurationStatics5_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function IsPinToTaskbarSupported
      (
         this : access IStoreConfigurationStatics5_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function IsPinToStartSupported
      (
         this : access IStoreConfigurationStatics5_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function PinToDesktop
      (
         this : access IStoreConfigurationStatics5_Interface;
         appPackageFamilyName : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function PinToDesktopForUser
      (
         this : access IStoreConfigurationStatics5_Interface;
         user : Windows.System.IUser;
         appPackageFamilyName : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IStoreConfigurationStatics5 : aliased WinRt.IID := (4150342033, 36777, 18907, (130, 43, 1, 96, 231, 228, 229, 197 ));

   -----------------------------------------------------------------------------
   -- type IStoreHardwareManufacturerInfo is interface and WinRt.IInspectable;

      function get_HardwareManufacturerId
      (
         this : access IStoreHardwareManufacturerInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_StoreContentModifierId
      (
         this : access IStoreHardwareManufacturerInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ModelName
      (
         this : access IStoreHardwareManufacturerInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ManufacturerName
      (
         this : access IStoreHardwareManufacturerInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IStoreHardwareManufacturerInfo : aliased WinRt.IID := (4069710856, 50772, 17324, (162, 31, 52, 128, 28, 157, 51, 136 ));

   -----------------------------------------------------------------------------
   -- type IStorePreview is interface and WinRt.IInspectable;

      function RequestProductPurchaseByProductIdAndSkuIdAsync
      (
         this : access IStorePreview_Interface;
         productId : WinRt.HString;
         skuId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function LoadAddOnProductInfosAsync
      (
         this : access IStorePreview_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IStorePreview : aliased WinRt.IID := (2316661313, 33806, 18857, (188, 1, 93, 91, 1, 251, 200, 233 ));

   -----------------------------------------------------------------------------
   -- type IStorePreviewProductInfo is interface and WinRt.IInspectable;

      function get_ProductId
      (
         this : access IStorePreviewProductInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ProductType
      (
         this : access IStorePreviewProductInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Title
      (
         this : access IStorePreviewProductInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Description
      (
         this : access IStorePreviewProductInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_SkuInfoList
      (
         this : access IStorePreviewProductInfo_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IStorePreviewProductInfo : aliased WinRt.IID := (423091123, 27649, 19613, (133, 205, 91, 171, 170, 194, 179, 81 ));

   -----------------------------------------------------------------------------
   -- type IStorePreviewPurchaseResults is interface and WinRt.IInspectable;

      function get_ProductPurchaseStatus
      (
         this : access IStorePreviewPurchaseResults_Interface;
         RetVal : access Windows.ApplicationModel.Store.Preview.StorePreviewProductPurchaseStatus
      )
      return WinRt.Hresult is abstract;

      IID_IStorePreviewPurchaseResults : aliased WinRt.IID := (2967121617, 54981, 20051, (160, 67, 251, 160, 216, 230, 18, 49 ));

   -----------------------------------------------------------------------------
   -- type IStorePreviewSkuInfo is interface and WinRt.IInspectable;

      function get_ProductId
      (
         this : access IStorePreviewSkuInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_SkuId
      (
         this : access IStorePreviewSkuInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_SkuType
      (
         this : access IStorePreviewSkuInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Title
      (
         this : access IStorePreviewSkuInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Description
      (
         this : access IStorePreviewSkuInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_CustomDeveloperData
      (
         this : access IStorePreviewSkuInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_CurrencyCode
      (
         this : access IStorePreviewSkuInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_FormattedListPrice
      (
         this : access IStorePreviewSkuInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ExtendedData
      (
         this : access IStorePreviewSkuInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IStorePreviewSkuInfo : aliased WinRt.IID := (2180871906, 2854, 18649, (152, 206, 39, 70, 28, 102, 157, 108 ));

   -----------------------------------------------------------------------------
   -- type IWebAuthenticationCoreManagerHelper is interface and WinRt.IInspectable;

      function RequestTokenWithUIElementHostingAsync
      (
         this : access IWebAuthenticationCoreManagerHelper_Interface;
         request : Windows.Security.Authentication.Web.Core.IWebTokenRequest;
         uiElement : Windows.UI.Xaml.IUIElement;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RequestTokenWithUIElementHostingAsync
      (
         this : access IWebAuthenticationCoreManagerHelper_Interface;
         request : Windows.Security.Authentication.Web.Core.IWebTokenRequest;
         webAccount : Windows.Security.Credentials.IWebAccount;
         uiElement : Windows.UI.Xaml.IUIElement;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IWebAuthenticationCoreManagerHelper : aliased WinRt.IID := (111478053, 59157, 16675, (146, 118, 157, 111, 134, 91, 165, 95 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DeliveryOptimizationSettings

   overriding procedure Initialize (this : in out DeliveryOptimizationSettings);
   overriding procedure Finalize (this : in out DeliveryOptimizationSettings);

   -----------------------------------------------------------------------------
   -- Static Interfaces for DeliveryOptimizationSettings

   function GetCurrentSettings
   return WinRt.Windows.ApplicationModel.Store.Preview.DeliveryOptimizationSettings;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DeliveryOptimizationSettings

   function get_DownloadMode
   (
      this : in out DeliveryOptimizationSettings
   )
   return WinRt.Windows.ApplicationModel.Store.Preview.DeliveryOptimizationDownloadMode;

   function get_DownloadModeSource
   (
      this : in out DeliveryOptimizationSettings
   )
   return WinRt.Windows.ApplicationModel.Store.Preview.DeliveryOptimizationDownloadModeSource;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package StoreConfiguration is

      procedure SetSystemConfiguration
      (
         catalogHardwareManufacturerId : WinRt.WString;
         catalogStoreContentModifierId : WinRt.WString;
         systemConfigurationExpiration : Windows.Foundation.DateTime;
         catalogHardwareDescriptor : WinRt.WString
      );

      procedure SetMobileOperatorConfiguration
      (
         mobileOperatorId : WinRt.WString;
         appDownloadLimitInMegabytes : WinRt.UInt32;
         updateDownloadLimitInMegabytes : WinRt.UInt32
      );

      procedure SetStoreWebAccountId
      (
         webAccountId : WinRt.WString
      );

      function IsStoreWebAccountId
      (
         webAccountId : WinRt.WString
      )
      return WinRt.Boolean;

      function get_HardwareManufacturerInfo
      return WinRt.Windows.ApplicationModel.Store.Preview.StoreHardwareManufacturerInfo;

      function FilterUnsupportedSystemFeaturesAsync
      (
         systemFeatures : GenericObject
      )
      return WinRt.GenericObject;

      function HasStoreWebAccount
      return WinRt.Boolean;

      function HasStoreWebAccountForUser
      (
         user : Windows.System.User'Class
      )
      return WinRt.Boolean;

      function GetStoreLogDataAsync
      (
         options : Windows.ApplicationModel.Store.Preview.StoreLogOptions
      )
      return WinRt.Windows.Storage.Streams.IRandomAccessStreamReference;

      procedure SetStoreWebAccountIdForUser
      (
         user : Windows.System.User'Class;
         webAccountId : WinRt.WString
      );

      function IsStoreWebAccountIdForUser
      (
         user : Windows.System.User'Class;
         webAccountId : WinRt.WString
      )
      return WinRt.Boolean;

      function GetPurchasePromptingPolicyForUser
      (
         user : Windows.System.User'Class
      )
      return WinRt.GenericObject;

      procedure SetPurchasePromptingPolicyForUser
      (
         user : Windows.System.User'Class;
         value : GenericObject
      );

      function IsPinToDesktopSupported
      return WinRt.Boolean;

      function IsPinToTaskbarSupported
      return WinRt.Boolean;

      function IsPinToStartSupported
      return WinRt.Boolean;

      procedure PinToDesktop
      (
         appPackageFamilyName : WinRt.WString
      );

      procedure PinToDesktopForUser
      (
         user : Windows.System.User'Class;
         appPackageFamilyName : WinRt.WString
      );

      function GetStoreWebAccountId
      return WinRt.WString;

      function GetStoreWebAccountIdForUser
      (
         user : Windows.System.User'Class
      )
      return WinRt.WString;

      procedure SetEnterpriseStoreWebAccountId
      (
         webAccountId : WinRt.WString
      );

      procedure SetEnterpriseStoreWebAccountIdForUser
      (
         user : Windows.System.User'Class;
         webAccountId : WinRt.WString
      );

      function GetEnterpriseStoreWebAccountId
      return WinRt.WString;

      function GetEnterpriseStoreWebAccountIdForUser
      (
         user : Windows.System.User'Class
      )
      return WinRt.WString;

      function ShouldRestrictToEnterpriseStoreOnly
      return WinRt.Boolean;

      function ShouldRestrictToEnterpriseStoreOnlyForUser
      (
         user : Windows.System.User'Class
      )
      return WinRt.Boolean;

      function get_PurchasePromptingPolicy
      return WinRt.GenericObject;

      procedure put_PurchasePromptingPolicy
      (
         value : GenericObject
      );

   end StoreConfiguration;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for StoreHardwareManufacturerInfo

   overriding procedure Initialize (this : in out StoreHardwareManufacturerInfo);
   overriding procedure Finalize (this : in out StoreHardwareManufacturerInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for StoreHardwareManufacturerInfo

   function get_HardwareManufacturerId
   (
      this : in out StoreHardwareManufacturerInfo
   )
   return WinRt.WString;

   function get_StoreContentModifierId
   (
      this : in out StoreHardwareManufacturerInfo
   )
   return WinRt.WString;

   function get_ModelName
   (
      this : in out StoreHardwareManufacturerInfo
   )
   return WinRt.WString;

   function get_ManufacturerName
   (
      this : in out StoreHardwareManufacturerInfo
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package StorePreview is

      function RequestProductPurchaseByProductIdAndSkuIdAsync
      (
         productId : WinRt.WString;
         skuId : WinRt.WString
      )
      return WinRt.Windows.ApplicationModel.Store.Preview.StorePreviewPurchaseResults;

      function LoadAddOnProductInfosAsync
      return WinRt.GenericObject;

   end StorePreview;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for StorePreviewProductInfo

   overriding procedure Initialize (this : in out StorePreviewProductInfo);
   overriding procedure Finalize (this : in out StorePreviewProductInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for StorePreviewProductInfo

   function get_ProductId
   (
      this : in out StorePreviewProductInfo
   )
   return WinRt.WString;

   function get_ProductType
   (
      this : in out StorePreviewProductInfo
   )
   return WinRt.WString;

   function get_Title
   (
      this : in out StorePreviewProductInfo
   )
   return WinRt.WString;

   function get_Description
   (
      this : in out StorePreviewProductInfo
   )
   return WinRt.WString;

   function get_SkuInfoList
   (
      this : in out StorePreviewProductInfo
   )
   return IVectorView_IStorePreviewSkuInfo.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for StorePreviewPurchaseResults

   overriding procedure Initialize (this : in out StorePreviewPurchaseResults);
   overriding procedure Finalize (this : in out StorePreviewPurchaseResults);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for StorePreviewPurchaseResults

   function get_ProductPurchaseStatus
   (
      this : in out StorePreviewPurchaseResults
   )
   return WinRt.Windows.ApplicationModel.Store.Preview.StorePreviewProductPurchaseStatus;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for StorePreviewSkuInfo

   overriding procedure Initialize (this : in out StorePreviewSkuInfo);
   overriding procedure Finalize (this : in out StorePreviewSkuInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for StorePreviewSkuInfo

   function get_ProductId
   (
      this : in out StorePreviewSkuInfo
   )
   return WinRt.WString;

   function get_SkuId
   (
      this : in out StorePreviewSkuInfo
   )
   return WinRt.WString;

   function get_SkuType
   (
      this : in out StorePreviewSkuInfo
   )
   return WinRt.WString;

   function get_Title
   (
      this : in out StorePreviewSkuInfo
   )
   return WinRt.WString;

   function get_Description
   (
      this : in out StorePreviewSkuInfo
   )
   return WinRt.WString;

   function get_CustomDeveloperData
   (
      this : in out StorePreviewSkuInfo
   )
   return WinRt.WString;

   function get_CurrencyCode
   (
      this : in out StorePreviewSkuInfo
   )
   return WinRt.WString;

   function get_FormattedListPrice
   (
      this : in out StorePreviewSkuInfo
   )
   return WinRt.WString;

   function get_ExtendedData
   (
      this : in out StorePreviewSkuInfo
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package WebAuthenticationCoreManagerHelper is

      function RequestTokenWithUIElementHostingAsync
      (
         request : Windows.Security.Authentication.Web.Core.WebTokenRequest'Class;
         uiElement : Windows.UI.Xaml.UIElement'Class
      )
      return WinRt.Windows.Security.Authentication.Web.Core.WebTokenRequestResult;

      function RequestTokenWithUIElementHostingAsync
      (
         request : Windows.Security.Authentication.Web.Core.WebTokenRequest'Class;
         webAccount : Windows.Security.Credentials.WebAccount'Class;
         uiElement : Windows.UI.Xaml.UIElement'Class
      )
      return WinRt.Windows.Security.Authentication.Web.Core.WebTokenRequestResult;

   end WebAuthenticationCoreManagerHelper;

end;
