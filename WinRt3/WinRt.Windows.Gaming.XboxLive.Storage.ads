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
limited with WinRt.Windows.Storage.Streams;
limited with WinRt.Windows.System;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Gaming.XboxLive.Storage is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IGameSaveBlobGetResult_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveBlobGetResult is access IGameSaveBlobGetResult_Interface'Class;
   type IGameSaveBlobGetResult_Ptr is access all IGameSaveBlobGetResult;

   type IGameSaveBlobInfo_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveBlobInfo is access IGameSaveBlobInfo_Interface'Class;
   type IGameSaveBlobInfo_Ptr is access all IGameSaveBlobInfo;

   type IGameSaveBlobInfoGetResult_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveBlobInfoGetResult is access IGameSaveBlobInfoGetResult_Interface'Class;
   type IGameSaveBlobInfoGetResult_Ptr is access all IGameSaveBlobInfoGetResult;

   type IGameSaveBlobInfoQuery_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveBlobInfoQuery is access IGameSaveBlobInfoQuery_Interface'Class;
   type IGameSaveBlobInfoQuery_Ptr is access all IGameSaveBlobInfoQuery;

   type IGameSaveContainer_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveContainer is access IGameSaveContainer_Interface'Class;
   type IGameSaveContainer_Ptr is access all IGameSaveContainer;

   type IGameSaveContainerInfo_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveContainerInfo is access IGameSaveContainerInfo_Interface'Class;
   type IGameSaveContainerInfo_Ptr is access all IGameSaveContainerInfo;

   type IGameSaveContainerInfoGetResult_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveContainerInfoGetResult is access IGameSaveContainerInfoGetResult_Interface'Class;
   type IGameSaveContainerInfoGetResult_Ptr is access all IGameSaveContainerInfoGetResult;

   type IGameSaveContainerInfoQuery_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveContainerInfoQuery is access IGameSaveContainerInfoQuery_Interface'Class;
   type IGameSaveContainerInfoQuery_Ptr is access all IGameSaveContainerInfoQuery;

   type IGameSaveOperationResult_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveOperationResult is access IGameSaveOperationResult_Interface'Class;
   type IGameSaveOperationResult_Ptr is access all IGameSaveOperationResult;

   type IGameSaveProvider_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveProvider is access IGameSaveProvider_Interface'Class;
   type IGameSaveProvider_Ptr is access all IGameSaveProvider;

   type IGameSaveProviderGetResult_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveProviderGetResult is access IGameSaveProviderGetResult_Interface'Class;
   type IGameSaveProviderGetResult_Ptr is access all IGameSaveProviderGetResult;

   type IGameSaveProviderStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IGameSaveProviderStatics is access IGameSaveProviderStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type GameSaveBlobGetResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveBlobGetResult : access Windows.Gaming.XboxLive.Storage.IGameSaveBlobGetResult;
      end record;
   type GameSaveBlobGetResult_Ptr is access all GameSaveBlobGetResult;

   type GameSaveBlobInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveBlobInfo : access Windows.Gaming.XboxLive.Storage.IGameSaveBlobInfo;
      end record;
   type GameSaveBlobInfo_Ptr is access all GameSaveBlobInfo;

   type GameSaveBlobInfoGetResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveBlobInfoGetResult : access Windows.Gaming.XboxLive.Storage.IGameSaveBlobInfoGetResult;
      end record;
   type GameSaveBlobInfoGetResult_Ptr is access all GameSaveBlobInfoGetResult;

   type GameSaveBlobInfoQuery is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveBlobInfoQuery : access Windows.Gaming.XboxLive.Storage.IGameSaveBlobInfoQuery;
      end record;
   type GameSaveBlobInfoQuery_Ptr is access all GameSaveBlobInfoQuery;

   type GameSaveContainer is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveContainer : access Windows.Gaming.XboxLive.Storage.IGameSaveContainer;
      end record;
   type GameSaveContainer_Ptr is access all GameSaveContainer;

   type GameSaveContainerInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveContainerInfo : access Windows.Gaming.XboxLive.Storage.IGameSaveContainerInfo;
      end record;
   type GameSaveContainerInfo_Ptr is access all GameSaveContainerInfo;

   type GameSaveContainerInfoGetResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveContainerInfoGetResult : access Windows.Gaming.XboxLive.Storage.IGameSaveContainerInfoGetResult;
      end record;
   type GameSaveContainerInfoGetResult_Ptr is access all GameSaveContainerInfoGetResult;

   type GameSaveContainerInfoQuery is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveContainerInfoQuery : access Windows.Gaming.XboxLive.Storage.IGameSaveContainerInfoQuery;
      end record;
   type GameSaveContainerInfoQuery_Ptr is access all GameSaveContainerInfoQuery;

   type GameSaveOperationResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveOperationResult : access Windows.Gaming.XboxLive.Storage.IGameSaveOperationResult;
      end record;
   type GameSaveOperationResult_Ptr is access all GameSaveOperationResult;

   type GameSaveProvider is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveProvider : access Windows.Gaming.XboxLive.Storage.IGameSaveProvider;
      end record;
   type GameSaveProvider_Ptr is access all GameSaveProvider;

   type GameSaveProviderGetResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameSaveProviderGetResult : access Windows.Gaming.XboxLive.Storage.IGameSaveProviderGetResult;
      end record;
   type GameSaveProviderGetResult_Ptr is access all GameSaveProviderGetResult;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type GameSaveErrorStatus is (
      Abort_e,
      InvalidContainerName_e,
      NoAccess_e,
      OutOfLocalStorage_e,
      UserCanceled_e,
      UpdateTooBig_e,
      QuotaExceeded_e,
      ProvidedBufferTooSmall_e,
      BlobNotFound_e,
      NoXboxLiveInfo_e,
      ContainerNotInSync_e,
      ContainerSyncFailed_e,
      UserHasNoXboxLiveInfo_e,
      ObjectExpired_e,
      Ok_e
   );
   for GameSaveErrorStatus use (
      Abort_e => -2147467260,
      InvalidContainerName_e => -2138898431,
      NoAccess_e => -2138898430,
      OutOfLocalStorage_e => -2138898429,
      UserCanceled_e => -2138898428,
      UpdateTooBig_e => -2138898427,
      QuotaExceeded_e => -2138898426,
      ProvidedBufferTooSmall_e => -2138898425,
      BlobNotFound_e => -2138898424,
      NoXboxLiveInfo_e => -2138898423,
      ContainerNotInSync_e => -2138898422,
      ContainerSyncFailed_e => -2138898421,
      UserHasNoXboxLiveInfo_e => -2138898420,
      ObjectExpired_e => -2138898419,
      Ok_e => 0
   );
   type GameSaveErrorStatus_Ptr is access GameSaveErrorStatus;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_IGameSaveBlobInfo is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.Gaming.XboxLive.Storage.IGameSaveBlobInfo);
   IID_IVectorView_IGameSaveBlobInfo : aliased WinRt.IID := (1053217412, 1212, 23805, (167, 69, 68, 8, 158, 168, 99, 30 ));
   function QInterface_IVectorView_IGameSaveBlobInfo is new Generic_QueryInterface (GenericObject_Interface, IVectorView_IGameSaveBlobInfo.Kind, IID_IVectorView_IGameSaveBlobInfo'Access);

   package IVectorView_IGameSaveContainerInfo is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.Gaming.XboxLive.Storage.IGameSaveContainerInfo);
   IID_IVectorView_IGameSaveContainerInfo : aliased WinRt.IID := (2070529991, 55518, 21434, (145, 109, 180, 216, 44, 232, 19, 232 ));
   function QInterface_IVectorView_IGameSaveContainerInfo is new Generic_QueryInterface (GenericObject_Interface, IVectorView_IGameSaveContainerInfo.Kind, IID_IVectorView_IGameSaveContainerInfo'Access);

   package IVectorView_HString is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.HString);
   IID_IVectorView_HString : aliased WinRt.IID := (3765078006, 5215, 24477, (177, 177, 50, 39, 103, 191, 133, 169 ));
   function QInterface_IVectorView_HString is new Generic_QueryInterface (GenericObject_Interface, IVectorView_HString.Kind, IID_IVectorView_HString'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IGameSaveBlobGetResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IGameSaveBlobGetResult_Interface;
         RetVal : access Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus
      )
      return WinRt.Hresult is abstract;

      function get_Value
      (
         this : access IGameSaveBlobGetResult_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveBlobGetResult : aliased WinRt.IID := (2440200672, 29185, 18771, (170, 44, 64, 8, 240, 58, 239, 69 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveBlobInfo is interface and WinRt.IInspectable;

      function get_Name
      (
         this : access IGameSaveBlobInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Size
      (
         this : access IGameSaveBlobInfo_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveBlobInfo : aliased WinRt.IID := (2916319284, 47856, 17989, (182, 208, 70, 237, 175, 251, 60, 43 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveBlobInfoGetResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IGameSaveBlobInfoGetResult_Interface;
         RetVal : access Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus
      )
      return WinRt.Hresult is abstract;

      function get_Value
      (
         this : access IGameSaveBlobInfoGetResult_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveBlobInfoGetResult : aliased WinRt.IID := (3344401794, 13975, 17087, (152, 156, 102, 93, 146, 59, 82, 49 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveBlobInfoQuery is interface and WinRt.IInspectable;

      function GetBlobInfoAsync
      (
         this : access IGameSaveBlobInfoQuery_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetBlobInfoAsync
      (
         this : access IGameSaveBlobInfoQuery_Interface;
         startIndex : WinRt.UInt32;
         maxNumberOfItems : WinRt.UInt32;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetItemCountAsync
      (
         this : access IGameSaveBlobInfoQuery_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveBlobInfoQuery : aliased WinRt.IID := (2682090674, 61166, 17531, (169, 210, 127, 150, 192, 248, 50, 8 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveContainer is interface and WinRt.IInspectable;

      function get_Name
      (
         this : access IGameSaveContainer_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Provider
      (
         this : access IGameSaveContainer_Interface;
         RetVal : access Windows.Gaming.XboxLive.Storage.IGameSaveProvider
      )
      return WinRt.Hresult is abstract;

      function SubmitUpdatesAsync
      (
         this : access IGameSaveContainer_Interface;
         blobsToWrite : GenericObject;
         blobsToDelete : GenericObject;
         displayName : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function ReadAsync
      (
         this : access IGameSaveContainer_Interface;
         blobsToRead : GenericObject;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetAsync
      (
         this : access IGameSaveContainer_Interface;
         blobsToRead : GenericObject;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SubmitPropertySetUpdatesAsync
      (
         this : access IGameSaveContainer_Interface;
         blobsToWrite : Windows.Foundation.Collections.IPropertySet;
         blobsToDelete : GenericObject;
         displayName : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function CreateBlobInfoQuery
      (
         this : access IGameSaveContainer_Interface;
         blobNamePrefix : WinRt.HString;
         RetVal : access Windows.Gaming.XboxLive.Storage.IGameSaveBlobInfoQuery
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveContainer : aliased WinRt.IID := (3284176777, 22079, 20173, (156, 111, 51, 253, 14, 50, 61, 16 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveContainerInfo is interface and WinRt.IInspectable;

      function get_Name
      (
         this : access IGameSaveContainerInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_TotalSize
      (
         this : access IGameSaveContainerInfo_Interface;
         RetVal : access WinRt.UInt64
      )
      return WinRt.Hresult is abstract;

      function get_DisplayName
      (
         this : access IGameSaveContainerInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_LastModifiedTime
      (
         this : access IGameSaveContainerInfo_Interface;
         RetVal : access Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function get_NeedsSync
      (
         this : access IGameSaveContainerInfo_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveContainerInfo : aliased WinRt.IID := (3085071104, 5469, 19380, (178, 186, 147, 3, 6, 243, 145, 181 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveContainerInfoGetResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IGameSaveContainerInfoGetResult_Interface;
         RetVal : access Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus
      )
      return WinRt.Hresult is abstract;

      function get_Value
      (
         this : access IGameSaveContainerInfoGetResult_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveContainerInfoGetResult : aliased WinRt.IID := (4291104116, 50561, 20381, (158, 57, 48, 161, 12, 30, 76, 80 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveContainerInfoQuery is interface and WinRt.IInspectable;

      function GetContainerInfoAsync
      (
         this : access IGameSaveContainerInfoQuery_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetContainerInfoAsync
      (
         this : access IGameSaveContainerInfoQuery_Interface;
         startIndex : WinRt.UInt32;
         maxNumberOfItems : WinRt.UInt32;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetItemCountAsync
      (
         this : access IGameSaveContainerInfoQuery_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveContainerInfoQuery : aliased WinRt.IID := (1016391779, 28544, 17191, (147, 39, 255, 193, 26, 253, 66, 179 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveOperationResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IGameSaveOperationResult_Interface;
         RetVal : access Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveOperationResult : aliased WinRt.IID := (3473873413, 9376, 17794, (154, 85, 177, 187, 187, 147, 136, 216 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveProvider is interface and WinRt.IInspectable;

      function get_User
      (
         this : access IGameSaveProvider_Interface;
         RetVal : access Windows.System.IUser
      )
      return WinRt.Hresult is abstract;

      function CreateContainer
      (
         this : access IGameSaveProvider_Interface;
         name : WinRt.HString;
         RetVal : access Windows.Gaming.XboxLive.Storage.IGameSaveContainer
      )
      return WinRt.Hresult is abstract;

      function DeleteContainerAsync
      (
         this : access IGameSaveProvider_Interface;
         name : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function CreateContainerInfoQuery
      (
         this : access IGameSaveProvider_Interface;
         RetVal : access Windows.Gaming.XboxLive.Storage.IGameSaveContainerInfoQuery
      )
      return WinRt.Hresult is abstract;

      function CreateContainerInfoQuery
      (
         this : access IGameSaveProvider_Interface;
         containerNamePrefix : WinRt.HString;
         RetVal : access Windows.Gaming.XboxLive.Storage.IGameSaveContainerInfoQuery
      )
      return WinRt.Hresult is abstract;

      function GetRemainingBytesInQuotaAsync
      (
         this : access IGameSaveProvider_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_ContainersChangedSinceLastSync
      (
         this : access IGameSaveProvider_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveProvider : aliased WinRt.IID := (2426798996, 33022, 16913, (151, 248, 165, 222, 20, 221, 149, 210 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveProviderGetResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IGameSaveProviderGetResult_Interface;
         RetVal : access Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus
      )
      return WinRt.Hresult is abstract;

      function get_Value
      (
         this : access IGameSaveProviderGetResult_Interface;
         RetVal : access Windows.Gaming.XboxLive.Storage.IGameSaveProvider
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveProviderGetResult : aliased WinRt.IID := (985204758, 54163, 19813, (172, 22, 65, 195, 230, 122, 185, 69 ));

   -----------------------------------------------------------------------------
   -- type IGameSaveProviderStatics is interface and WinRt.IInspectable;

      function GetForUserAsync
      (
         this : access IGameSaveProviderStatics_Interface;
         user : Windows.System.IUser;
         serviceConfigId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetSyncOnDemandForUserAsync
      (
         this : access IGameSaveProviderStatics_Interface;
         user : Windows.System.IUser;
         serviceConfigId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IGameSaveProviderStatics : aliased WinRt.IID := (3491577552, 31491, 17565, (140, 189, 52, 2, 132, 42, 16, 72 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveBlobGetResult

   overriding procedure Initialize (this : in out GameSaveBlobGetResult);
   overriding procedure Finalize (this : in out GameSaveBlobGetResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveBlobGetResult

   function get_Status
   (
      this : in out GameSaveBlobGetResult
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus;

   function get_Value
   (
      this : in out GameSaveBlobGetResult
   )
   return WinRt.GenericObject;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveBlobInfo

   overriding procedure Initialize (this : in out GameSaveBlobInfo);
   overriding procedure Finalize (this : in out GameSaveBlobInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveBlobInfo

   function get_Name
   (
      this : in out GameSaveBlobInfo
   )
   return WinRt.WString;

   function get_Size
   (
      this : in out GameSaveBlobInfo
   )
   return WinRt.UInt32;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveBlobInfoGetResult

   overriding procedure Initialize (this : in out GameSaveBlobInfoGetResult);
   overriding procedure Finalize (this : in out GameSaveBlobInfoGetResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveBlobInfoGetResult

   function get_Status
   (
      this : in out GameSaveBlobInfoGetResult
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus;

   function get_Value
   (
      this : in out GameSaveBlobInfoGetResult
   )
   return IVectorView_IGameSaveBlobInfo.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveBlobInfoQuery

   overriding procedure Initialize (this : in out GameSaveBlobInfoQuery);
   overriding procedure Finalize (this : in out GameSaveBlobInfoQuery);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveBlobInfoQuery

   function GetBlobInfoAsync
   (
      this : in out GameSaveBlobInfoQuery
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveBlobInfoGetResult'Class;

   function GetBlobInfoAsync
   (
      this : in out GameSaveBlobInfoQuery;
      startIndex : WinRt.UInt32;
      maxNumberOfItems : WinRt.UInt32
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveBlobInfoGetResult'Class;

   function GetItemCountAsync
   (
      this : in out GameSaveBlobInfoQuery
   )
   return WinRt.UInt32;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveContainer

   overriding procedure Initialize (this : in out GameSaveContainer);
   overriding procedure Finalize (this : in out GameSaveContainer);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveContainer

   function get_Name
   (
      this : in out GameSaveContainer
   )
   return WinRt.WString;

   function get_Provider
   (
      this : in out GameSaveContainer
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveProvider'Class;

   function SubmitUpdatesAsync
   (
      this : in out GameSaveContainer;
      blobsToWrite : GenericObject;
      blobsToDelete : GenericObject;
      displayName : WinRt.WString
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveOperationResult'Class;

   function ReadAsync
   (
      this : in out GameSaveContainer;
      blobsToRead : GenericObject
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveOperationResult'Class;

   function GetAsync
   (
      this : in out GameSaveContainer;
      blobsToRead : GenericObject
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveBlobGetResult'Class;

   function SubmitPropertySetUpdatesAsync
   (
      this : in out GameSaveContainer;
      blobsToWrite : Windows.Foundation.Collections.IPropertySet;
      blobsToDelete : GenericObject;
      displayName : WinRt.WString
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveOperationResult'Class;

   function CreateBlobInfoQuery
   (
      this : in out GameSaveContainer;
      blobNamePrefix : WinRt.WString
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveBlobInfoQuery'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveContainerInfo

   overriding procedure Initialize (this : in out GameSaveContainerInfo);
   overriding procedure Finalize (this : in out GameSaveContainerInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveContainerInfo

   function get_Name
   (
      this : in out GameSaveContainerInfo
   )
   return WinRt.WString;

   function get_TotalSize
   (
      this : in out GameSaveContainerInfo
   )
   return WinRt.UInt64;

   function get_DisplayName
   (
      this : in out GameSaveContainerInfo
   )
   return WinRt.WString;

   function get_LastModifiedTime
   (
      this : in out GameSaveContainerInfo
   )
   return WinRt.Windows.Foundation.DateTime;

   function get_NeedsSync
   (
      this : in out GameSaveContainerInfo
   )
   return WinRt.Boolean;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveContainerInfoGetResult

   overriding procedure Initialize (this : in out GameSaveContainerInfoGetResult);
   overriding procedure Finalize (this : in out GameSaveContainerInfoGetResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveContainerInfoGetResult

   function get_Status
   (
      this : in out GameSaveContainerInfoGetResult
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus;

   function get_Value
   (
      this : in out GameSaveContainerInfoGetResult
   )
   return IVectorView_IGameSaveContainerInfo.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveContainerInfoQuery

   overriding procedure Initialize (this : in out GameSaveContainerInfoQuery);
   overriding procedure Finalize (this : in out GameSaveContainerInfoQuery);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveContainerInfoQuery

   function GetContainerInfoAsync
   (
      this : in out GameSaveContainerInfoQuery
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveContainerInfoGetResult'Class;

   function GetContainerInfoAsync
   (
      this : in out GameSaveContainerInfoQuery;
      startIndex : WinRt.UInt32;
      maxNumberOfItems : WinRt.UInt32
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveContainerInfoGetResult'Class;

   function GetItemCountAsync
   (
      this : in out GameSaveContainerInfoQuery
   )
   return WinRt.UInt32;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveOperationResult

   overriding procedure Initialize (this : in out GameSaveOperationResult);
   overriding procedure Finalize (this : in out GameSaveOperationResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveOperationResult

   function get_Status
   (
      this : in out GameSaveOperationResult
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveProvider

   overriding procedure Initialize (this : in out GameSaveProvider);
   overriding procedure Finalize (this : in out GameSaveProvider);

   -----------------------------------------------------------------------------
   -- Static Interfaces for GameSaveProvider

   function GetForUserAsync
   (
      user : Windows.System.User'Class;
      serviceConfigId : WinRt.WString
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveProviderGetResult;

   function GetSyncOnDemandForUserAsync
   (
      user : Windows.System.User'Class;
      serviceConfigId : WinRt.WString
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveProviderGetResult;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveProvider

   function get_User
   (
      this : in out GameSaveProvider
   )
   return WinRt.Windows.System.User'Class;

   function CreateContainer
   (
      this : in out GameSaveProvider;
      name : WinRt.WString
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveContainer'Class;

   function DeleteContainerAsync
   (
      this : in out GameSaveProvider;
      name : WinRt.WString
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveOperationResult'Class;

   function CreateContainerInfoQuery
   (
      this : in out GameSaveProvider
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveContainerInfoQuery'Class;

   function CreateContainerInfoQuery
   (
      this : in out GameSaveProvider;
      containerNamePrefix : WinRt.WString
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveContainerInfoQuery'Class;

   function GetRemainingBytesInQuotaAsync
   (
      this : in out GameSaveProvider
   )
   return WinRt.Int64;

   function get_ContainersChangedSinceLastSync
   (
      this : in out GameSaveProvider
   )
   return IVectorView_HString.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameSaveProviderGetResult

   overriding procedure Initialize (this : in out GameSaveProviderGetResult);
   overriding procedure Finalize (this : in out GameSaveProviderGetResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameSaveProviderGetResult

   function get_Status
   (
      this : in out GameSaveProviderGetResult
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveErrorStatus;

   function get_Value
   (
      this : in out GameSaveProviderGetResult
   )
   return WinRt.Windows.Gaming.XboxLive.Storage.GameSaveProvider'Class;

end;
