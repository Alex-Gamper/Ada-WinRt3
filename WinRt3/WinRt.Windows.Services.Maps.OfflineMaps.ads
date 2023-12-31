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
limited with WinRt.Windows.Devices.Geolocation;
with WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Services.Maps.OfflineMaps is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IOfflineMapPackage_Interface is interface and WinRt.IInspectable_Interface;
   type IOfflineMapPackage is access all IOfflineMapPackage_Interface'Class;
   type IOfflineMapPackage_Ptr is access all IOfflineMapPackage;

   type IOfflineMapPackageQueryResult_Interface is interface and WinRt.IInspectable_Interface;
   type IOfflineMapPackageQueryResult is access all IOfflineMapPackageQueryResult_Interface'Class;
   type IOfflineMapPackageQueryResult_Ptr is access all IOfflineMapPackageQueryResult;

   type IOfflineMapPackageStartDownloadResult_Interface is interface and WinRt.IInspectable_Interface;
   type IOfflineMapPackageStartDownloadResult is access all IOfflineMapPackageStartDownloadResult_Interface'Class;
   type IOfflineMapPackageStartDownloadResult_Ptr is access all IOfflineMapPackageStartDownloadResult;

   type IOfflineMapPackageStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IOfflineMapPackageStatics is access all IOfflineMapPackageStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type OfflineMapPackage is new Ada.Finalization.Limited_Controlled with
      record
         m_IOfflineMapPackage : access Windows.Services.Maps.OfflineMaps.IOfflineMapPackage;
      end record;
   type OfflineMapPackage_Ptr is access all OfflineMapPackage;

   type OfflineMapPackageQueryResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IOfflineMapPackageQueryResult : access Windows.Services.Maps.OfflineMaps.IOfflineMapPackageQueryResult;
      end record;
   type OfflineMapPackageQueryResult_Ptr is access all OfflineMapPackageQueryResult;

   type OfflineMapPackageStartDownloadResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IOfflineMapPackageStartDownloadResult : access Windows.Services.Maps.OfflineMaps.IOfflineMapPackageStartDownloadResult;
      end record;
   type OfflineMapPackageStartDownloadResult_Ptr is access all OfflineMapPackageStartDownloadResult;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type OfflineMapPackageQueryStatus is (
      Success_e,
      UnknownError_e,
      InvalidCredentials_e,
      NetworkFailure_e
   );
   for OfflineMapPackageQueryStatus use (
      Success_e => 0,
      UnknownError_e => 1,
      InvalidCredentials_e => 2,
      NetworkFailure_e => 3
   );
   type OfflineMapPackageQueryStatus_Ptr is access all OfflineMapPackageQueryStatus;

   type OfflineMapPackageStartDownloadStatus is (
      Success_e,
      UnknownError_e,
      InvalidCredentials_e,
      DeniedWithoutCapability_e
   );
   for OfflineMapPackageStartDownloadStatus use (
      Success_e => 0,
      UnknownError_e => 1,
      InvalidCredentials_e => 2,
      DeniedWithoutCapability_e => 3
   );
   type OfflineMapPackageStartDownloadStatus_Ptr is access all OfflineMapPackageStartDownloadStatus;

   type OfflineMapPackageStatus is (
      NotDownloaded_e,
      Downloading_e,
      Downloaded_e,
      Deleting_e
   );
   for OfflineMapPackageStatus use (
      NotDownloaded_e => 0,
      Downloading_e => 1,
      Downloaded_e => 2,
      Deleting_e => 3
   );
   type OfflineMapPackageStatus_Ptr is access all OfflineMapPackageStatus;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_IOfflineMapPackage is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.Services.Maps.OfflineMaps.IOfflineMapPackage);
   IID_IVectorView_IOfflineMapPackage : aliased WinRt.IID := (3761224259, 57019, 21389, (136, 136, 235, 97, 194, 91, 15, 182 ));
   function QInterface_IVectorView_IOfflineMapPackage is new Generic_QueryInterface (GenericObject_Interface, IVectorView_IOfflineMapPackage.Kind, IID_IVectorView_IOfflineMapPackage'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IOfflineMapPackage is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IOfflineMapPackage_Interface;
         RetVal : access Windows.Services.Maps.OfflineMaps.OfflineMapPackageStatus
      )
      return WinRt.Hresult is abstract;

      function get_DisplayName
      (
         this : access IOfflineMapPackage_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_EnclosingRegionName
      (
         this : access IOfflineMapPackage_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_EstimatedSizeInBytes
      (
         this : access IOfflineMapPackage_Interface;
         RetVal : access WinRt.UInt64
      )
      return WinRt.Hresult is abstract;

      function remove_StatusChanged
      (
         this : access IOfflineMapPackage_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_StatusChanged
      (
         this : access IOfflineMapPackage_Interface;
         value : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function RequestStartDownloadAsync
      (
         this : access IOfflineMapPackage_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IOfflineMapPackage : aliased WinRt.IID := (2811717435, 42421, 16708, (181, 37, 230, 140, 136, 98, 102, 75 ));

   -----------------------------------------------------------------------------
   -- type IOfflineMapPackageQueryResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IOfflineMapPackageQueryResult_Interface;
         RetVal : access Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryStatus
      )
      return WinRt.Hresult is abstract;

      function get_Packages
      (
         this : access IOfflineMapPackageQueryResult_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IOfflineMapPackageQueryResult : aliased WinRt.IID := (1431852049, 14817, 20033, (164, 225, 95, 72, 114, 190, 225, 153 ));

   -----------------------------------------------------------------------------
   -- type IOfflineMapPackageStartDownloadResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IOfflineMapPackageStartDownloadResult_Interface;
         RetVal : access Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadStatus
      )
      return WinRt.Hresult is abstract;

      IID_IOfflineMapPackageStartDownloadResult : aliased WinRt.IID := (3647322392, 54486, 19198, (147, 120, 62, 199, 30, 241, 28, 61 ));

   -----------------------------------------------------------------------------
   -- type IOfflineMapPackageStatics is interface and WinRt.IInspectable;

      function FindPackagesAsync
      (
         this : access IOfflineMapPackageStatics_Interface;
         queryPoint : Windows.Devices.Geolocation.IGeopoint;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function FindPackagesInBoundingBoxAsync
      (
         this : access IOfflineMapPackageStatics_Interface;
         queryBoundingBox : Windows.Devices.Geolocation.IGeoboundingBox;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function FindPackagesInGeocircleAsync
      (
         this : access IOfflineMapPackageStatics_Interface;
         queryCircle : Windows.Devices.Geolocation.IGeocircle;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IOfflineMapPackageStatics : aliased WinRt.IID := (408844578, 43057, 19120, (148, 31, 105, 152, 250, 146, 146, 133 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for OfflineMapPackage

   overriding procedure Initialize (this : in out OfflineMapPackage);
   overriding procedure Finalize (this : in out OfflineMapPackage);

   -----------------------------------------------------------------------------
   -- Static Interfaces for OfflineMapPackage

   function FindPackagesAsync
   (
      queryPoint : Windows.Devices.Geolocation.Geopoint'Class
   )
   return WinRt.Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult;

   function FindPackagesInBoundingBoxAsync
   (
      queryBoundingBox : Windows.Devices.Geolocation.GeoboundingBox'Class
   )
   return WinRt.Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult;

   function FindPackagesInGeocircleAsync
   (
      queryCircle : Windows.Devices.Geolocation.Geocircle'Class
   )
   return WinRt.Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for OfflineMapPackage

   function get_Status
   (
      this : in out OfflineMapPackage
   )
   return WinRt.Windows.Services.Maps.OfflineMaps.OfflineMapPackageStatus;

   function get_DisplayName
   (
      this : in out OfflineMapPackage
   )
   return WinRt.WString;

   function get_EnclosingRegionName
   (
      this : in out OfflineMapPackage
   )
   return WinRt.WString;

   function get_EstimatedSizeInBytes
   (
      this : in out OfflineMapPackage
   )
   return WinRt.UInt64;

   procedure remove_StatusChanged
   (
      this : in out OfflineMapPackage;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_StatusChanged
   (
      this : in out OfflineMapPackage;
      value : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   function RequestStartDownloadAsync
   (
      this : in out OfflineMapPackage
   )
   return WinRt.Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadResult'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for OfflineMapPackageQueryResult

   overriding procedure Initialize (this : in out OfflineMapPackageQueryResult);
   overriding procedure Finalize (this : in out OfflineMapPackageQueryResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for OfflineMapPackageQueryResult

   function get_Status
   (
      this : in out OfflineMapPackageQueryResult
   )
   return WinRt.Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryStatus;

   function get_Packages
   (
      this : in out OfflineMapPackageQueryResult
   )
   return IVectorView_IOfflineMapPackage.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for OfflineMapPackageStartDownloadResult

   overriding procedure Initialize (this : in out OfflineMapPackageStartDownloadResult);
   overriding procedure Finalize (this : in out OfflineMapPackageStartDownloadResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for OfflineMapPackageStartDownloadResult

   function get_Status
   (
      this : in out OfflineMapPackageStartDownloadResult
   )
   return WinRt.Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadStatus;

end;
