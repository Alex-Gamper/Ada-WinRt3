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
limited with WinRt.Windows.Storage.FileProperties;
limited with WinRt.Windows.Storage.Search;
limited with WinRt.Windows.Storage.Streams;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Storage.BulkAccess is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IFileInformationFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IFileInformationFactory is access IFileInformationFactory_Interface'Class;
   type IFileInformationFactory_Ptr is access all IFileInformationFactory;

   type IFileInformationFactoryFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IFileInformationFactoryFactory is access IFileInformationFactoryFactory_Interface'Class;

   type IStorageItemInformation_Interface is interface and WinRt.IInspectable_Interface;
   type IStorageItemInformation is access IStorageItemInformation_Interface'Class;
   type IStorageItemInformation_Ptr is access all IStorageItemInformation;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type FileInformation is new Ada.Finalization.Limited_Controlled with
      record
         m_IStorageItemInformation : access Windows.Storage.BulkAccess.IStorageItemInformation;
      end record;
   type FileInformation_Ptr is access all FileInformation;

   type FileInformationFactory is new Ada.Finalization.Limited_Controlled with
      record
         m_IFileInformationFactory : access Windows.Storage.BulkAccess.IFileInformationFactory;
      end record;
   type FileInformationFactory_Ptr is access all FileInformationFactory;

   type FolderInformation is new Ada.Finalization.Limited_Controlled with
      record
         m_IStorageItemInformation : access Windows.Storage.BulkAccess.IStorageItemInformation;
      end record;
   type FolderInformation_Ptr is access all FolderInformation;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IFileInformationFactory is interface and WinRt.IInspectable;

      function GetItemsAsync
      (
         this : access IFileInformationFactory_Interface;
         startIndex : WinRt.UInt32;
         maxItemsToRetrieve : WinRt.UInt32;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetItemsAsync
      (
         this : access IFileInformationFactory_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetFilesAsync
      (
         this : access IFileInformationFactory_Interface;
         startIndex : WinRt.UInt32;
         maxItemsToRetrieve : WinRt.UInt32;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetFilesAsync
      (
         this : access IFileInformationFactory_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetFoldersAsync
      (
         this : access IFileInformationFactory_Interface;
         startIndex : WinRt.UInt32;
         maxItemsToRetrieve : WinRt.UInt32;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetFoldersAsync
      (
         this : access IFileInformationFactory_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetVirtualizedItemsVector
      (
         this : access IFileInformationFactory_Interface;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      function GetVirtualizedFilesVector
      (
         this : access IFileInformationFactory_Interface;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      function GetVirtualizedFoldersVector
      (
         this : access IFileInformationFactory_Interface;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      IID_IFileInformationFactory : aliased WinRt.IID := (1075677374, 38415, 19821, (167, 208, 26, 56, 97, 231, 108, 131 ));

   -----------------------------------------------------------------------------
   -- type IFileInformationFactoryFactory is interface and WinRt.IInspectable;

      function CreateWithMode
      (
         this : access IFileInformationFactoryFactory_Interface;
         queryResult : Windows.Storage.Search.IStorageQueryResultBase;
         mode : Windows.Storage.FileProperties.ThumbnailMode;
         RetVal : access Windows.Storage.BulkAccess.IFileInformationFactory
      )
      return WinRt.Hresult is abstract;

      function CreateWithModeAndSize
      (
         this : access IFileInformationFactoryFactory_Interface;
         queryResult : Windows.Storage.Search.IStorageQueryResultBase;
         mode : Windows.Storage.FileProperties.ThumbnailMode;
         requestedThumbnailSize : WinRt.UInt32;
         RetVal : access Windows.Storage.BulkAccess.IFileInformationFactory
      )
      return WinRt.Hresult is abstract;

      function CreateWithModeAndSizeAndOptions
      (
         this : access IFileInformationFactoryFactory_Interface;
         queryResult : Windows.Storage.Search.IStorageQueryResultBase;
         mode : Windows.Storage.FileProperties.ThumbnailMode;
         requestedThumbnailSize : WinRt.UInt32;
         thumbnailOptions : Windows.Storage.FileProperties.ThumbnailOptions;
         RetVal : access Windows.Storage.BulkAccess.IFileInformationFactory
      )
      return WinRt.Hresult is abstract;

      function CreateWithModeAndSizeAndOptionsAndFlags
      (
         this : access IFileInformationFactoryFactory_Interface;
         queryResult : Windows.Storage.Search.IStorageQueryResultBase;
         mode : Windows.Storage.FileProperties.ThumbnailMode;
         requestedThumbnailSize : WinRt.UInt32;
         thumbnailOptions : Windows.Storage.FileProperties.ThumbnailOptions;
         delayLoad : WinRt.Boolean;
         RetVal : access Windows.Storage.BulkAccess.IFileInformationFactory
      )
      return WinRt.Hresult is abstract;

      IID_IFileInformationFactoryFactory : aliased WinRt.IID := (2229931645, 58530, 20224, (138, 250, 175, 94, 15, 130, 107, 213 ));

   -----------------------------------------------------------------------------
   -- type IStorageItemInformation is interface and WinRt.IInspectable;

      function get_MusicProperties
      (
         this : access IStorageItemInformation_Interface;
         RetVal : access Windows.Storage.FileProperties.IMusicProperties
      )
      return WinRt.Hresult is abstract;

      function get_VideoProperties
      (
         this : access IStorageItemInformation_Interface;
         RetVal : access Windows.Storage.FileProperties.IVideoProperties
      )
      return WinRt.Hresult is abstract;

      function get_ImageProperties
      (
         this : access IStorageItemInformation_Interface;
         RetVal : access Windows.Storage.FileProperties.IImageProperties
      )
      return WinRt.Hresult is abstract;

      function get_DocumentProperties
      (
         this : access IStorageItemInformation_Interface;
         RetVal : access Windows.Storage.FileProperties.IDocumentProperties
      )
      return WinRt.Hresult is abstract;

      function get_BasicProperties
      (
         this : access IStorageItemInformation_Interface;
         RetVal : access Windows.Storage.FileProperties.IBasicProperties
      )
      return WinRt.Hresult is abstract;

      function get_Thumbnail
      (
         this : access IStorageItemInformation_Interface;
         RetVal : access Windows.Storage.Streams.IRandomAccessStreamWithContentType
      )
      return WinRt.Hresult is abstract;

      function add_ThumbnailUpdated
      (
         this : access IStorageItemInformation_Interface;
         changedHandler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ThumbnailUpdated
      (
         this : access IStorageItemInformation_Interface;
         eventCookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_PropertiesUpdated
      (
         this : access IStorageItemInformation_Interface;
         changedHandler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PropertiesUpdated
      (
         this : access IStorageItemInformation_Interface;
         eventCookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IStorageItemInformation : aliased WinRt.IID := (2275789707, 35186, 20288, (141, 224, 216, 111, 177, 121, 216, 250 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for FileInformation

   overriding procedure Initialize (this : in out FileInformation);
   overriding procedure Finalize (this : in out FileInformation);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for FileInformation

   function get_MusicProperties
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.FileProperties.MusicProperties'Class;

   function get_VideoProperties
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.FileProperties.VideoProperties'Class;

   function get_ImageProperties
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.FileProperties.ImageProperties'Class;

   function get_DocumentProperties
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.FileProperties.DocumentProperties'Class;

   function get_BasicProperties
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.FileProperties.BasicProperties'Class;

   function get_Thumbnail
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemThumbnail'Class;

   function add_ThumbnailUpdated
   (
      this : in out FileInformation;
      changedHandler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ThumbnailUpdated
   (
      this : in out FileInformation;
      eventCookie : Windows.Foundation.EventRegistrationToken
   );

   function add_PropertiesUpdated
   (
      this : in out FileInformation;
      changedHandler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PropertiesUpdated
   (
      this : in out FileInformation;
      eventCookie : Windows.Foundation.EventRegistrationToken
   );

   function get_FileType
   (
      this : in out FileInformation
   )
   return WinRt.WString;

   function get_ContentType
   (
      this : in out FileInformation
   )
   return WinRt.WString;

   function OpenAsync
   (
      this : in out FileInformation;
      accessMode : Windows.Storage.FileAccessMode
   )
   return WinRt.Windows.Storage.Streams.IRandomAccessStream;

   function OpenTransactedWriteAsync
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.StorageStreamTransaction'Class;

   function CopyAsync
   (
      this : in out FileInformation;
      destinationFolder : Windows.Storage.IStorageFolder
   )
   return WinRt.Windows.Storage.StorageFile'Class;

   function CopyAsync
   (
      this : in out FileInformation;
      destinationFolder : Windows.Storage.IStorageFolder;
      desiredNewName : WinRt.WString
   )
   return WinRt.Windows.Storage.StorageFile'Class;

   function CopyAsync
   (
      this : in out FileInformation;
      destinationFolder : Windows.Storage.IStorageFolder;
      desiredNewName : WinRt.WString;
      option : Windows.Storage.NameCollisionOption
   )
   return WinRt.Windows.Storage.StorageFile'Class;

   procedure CopyAndReplaceAsync
   (
      this : in out FileInformation;
      fileToReplace : Windows.Storage.IStorageFile
   );

   procedure MoveAsync
   (
      this : in out FileInformation;
      destinationFolder : Windows.Storage.IStorageFolder
   );

   procedure MoveAsync
   (
      this : in out FileInformation;
      destinationFolder : Windows.Storage.IStorageFolder;
      desiredNewName : WinRt.WString
   );

   procedure MoveAsync
   (
      this : in out FileInformation;
      destinationFolder : Windows.Storage.IStorageFolder;
      desiredNewName : WinRt.WString;
      option : Windows.Storage.NameCollisionOption
   );

   procedure MoveAndReplaceAsync
   (
      this : in out FileInformation;
      fileToReplace : Windows.Storage.IStorageFile
   );

   function OpenSequentialReadAsync
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.Streams.IInputStream;

   function OpenReadAsync
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.Streams.IRandomAccessStreamWithContentType;

   procedure RenameAsync
   (
      this : in out FileInformation;
      desiredName : WinRt.WString
   );

   procedure RenameAsync
   (
      this : in out FileInformation;
      desiredName : WinRt.WString;
      option : Windows.Storage.NameCollisionOption
   );

   procedure DeleteAsync
   (
      this : in out FileInformation
   );

   procedure DeleteAsync
   (
      this : in out FileInformation;
      option : Windows.Storage.StorageDeleteOption
   );

   function GetBasicPropertiesAsync
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.FileProperties.BasicProperties'Class;

   function get_Name
   (
      this : in out FileInformation
   )
   return WinRt.WString;

   function get_Path
   (
      this : in out FileInformation
   )
   return WinRt.WString;

   function get_Attributes
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.FileAttributes;

   function get_DateCreated
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Foundation.DateTime;

   function IsOfType
   (
      this : in out FileInformation;
      type_x : Windows.Storage.StorageItemTypes
   )
   return WinRt.Boolean;

   function GetThumbnailAsync
   (
      this : in out FileInformation;
      mode : Windows.Storage.FileProperties.ThumbnailMode
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemThumbnail'Class;

   function GetThumbnailAsync
   (
      this : in out FileInformation;
      mode : Windows.Storage.FileProperties.ThumbnailMode;
      requestedSize : WinRt.UInt32
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemThumbnail'Class;

   function GetThumbnailAsync
   (
      this : in out FileInformation;
      mode : Windows.Storage.FileProperties.ThumbnailMode;
      requestedSize : WinRt.UInt32;
      options : Windows.Storage.FileProperties.ThumbnailOptions
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemThumbnail'Class;

   function get_DisplayName
   (
      this : in out FileInformation
   )
   return WinRt.WString;

   function get_DisplayType
   (
      this : in out FileInformation
   )
   return WinRt.WString;

   function get_FolderRelativeId
   (
      this : in out FileInformation
   )
   return WinRt.WString;

   function get_Properties
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemContentProperties'Class;

   function GetParentAsync
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.StorageFolder'Class;

   function IsEqual
   (
      this : in out FileInformation;
      item : Windows.Storage.IStorageItem
   )
   return WinRt.Boolean;

   function get_Provider
   (
      this : in out FileInformation
   )
   return WinRt.Windows.Storage.StorageProvider'Class;

   function get_IsAvailable
   (
      this : in out FileInformation
   )
   return WinRt.Boolean;

   function OpenAsync
   (
      this : in out FileInformation;
      accessMode : Windows.Storage.FileAccessMode;
      options : Windows.Storage.StorageOpenOptions
   )
   return WinRt.Windows.Storage.Streams.IRandomAccessStream;

   function OpenTransactedWriteAsync
   (
      this : in out FileInformation;
      options : Windows.Storage.StorageOpenOptions
   )
   return WinRt.Windows.Storage.StorageStreamTransaction'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for FileInformationFactory

   overriding procedure Initialize (this : in out FileInformationFactory);
   overriding procedure Finalize (this : in out FileInformationFactory);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for FileInformationFactory

   function Constructor
   (
      queryResult : Windows.Storage.Search.IStorageQueryResultBase;
      mode : Windows.Storage.FileProperties.ThumbnailMode
   )
   return FileInformationFactory;

   function Constructor
   (
      queryResult : Windows.Storage.Search.IStorageQueryResultBase;
      mode : Windows.Storage.FileProperties.ThumbnailMode;
      requestedThumbnailSize : WinRt.UInt32
   )
   return FileInformationFactory;

   function Constructor
   (
      queryResult : Windows.Storage.Search.IStorageQueryResultBase;
      mode : Windows.Storage.FileProperties.ThumbnailMode;
      requestedThumbnailSize : WinRt.UInt32;
      thumbnailOptions : Windows.Storage.FileProperties.ThumbnailOptions
   )
   return FileInformationFactory;

   function Constructor
   (
      queryResult : Windows.Storage.Search.IStorageQueryResultBase;
      mode : Windows.Storage.FileProperties.ThumbnailMode;
      requestedThumbnailSize : WinRt.UInt32;
      thumbnailOptions : Windows.Storage.FileProperties.ThumbnailOptions;
      delayLoad : WinRt.Boolean
   )
   return FileInformationFactory;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for FileInformationFactory

   function GetItemsAsync
   (
      this : in out FileInformationFactory;
      startIndex : WinRt.UInt32;
      maxItemsToRetrieve : WinRt.UInt32
   )
   return WinRt.GenericObject;

   function GetItemsAsync
   (
      this : in out FileInformationFactory
   )
   return WinRt.GenericObject;

   function GetFilesAsync
   (
      this : in out FileInformationFactory;
      startIndex : WinRt.UInt32;
      maxItemsToRetrieve : WinRt.UInt32
   )
   return WinRt.GenericObject;

   function GetFilesAsync
   (
      this : in out FileInformationFactory
   )
   return WinRt.GenericObject;

   function GetFoldersAsync
   (
      this : in out FileInformationFactory;
      startIndex : WinRt.UInt32;
      maxItemsToRetrieve : WinRt.UInt32
   )
   return WinRt.GenericObject;

   function GetFoldersAsync
   (
      this : in out FileInformationFactory
   )
   return WinRt.GenericObject;

   function GetVirtualizedItemsVector
   (
      this : in out FileInformationFactory
   )
   return WinRt.IInspectable;

   function GetVirtualizedFilesVector
   (
      this : in out FileInformationFactory
   )
   return WinRt.IInspectable;

   function GetVirtualizedFoldersVector
   (
      this : in out FileInformationFactory
   )
   return WinRt.IInspectable;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for FolderInformation

   overriding procedure Initialize (this : in out FolderInformation);
   overriding procedure Finalize (this : in out FolderInformation);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for FolderInformation

   function get_MusicProperties
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.FileProperties.MusicProperties'Class;

   function get_VideoProperties
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.FileProperties.VideoProperties'Class;

   function get_ImageProperties
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.FileProperties.ImageProperties'Class;

   function get_DocumentProperties
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.FileProperties.DocumentProperties'Class;

   function get_BasicProperties
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.FileProperties.BasicProperties'Class;

   function get_Thumbnail
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemThumbnail'Class;

   function add_ThumbnailUpdated
   (
      this : in out FolderInformation;
      changedHandler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ThumbnailUpdated
   (
      this : in out FolderInformation;
      eventCookie : Windows.Foundation.EventRegistrationToken
   );

   function add_PropertiesUpdated
   (
      this : in out FolderInformation;
      changedHandler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PropertiesUpdated
   (
      this : in out FolderInformation;
      eventCookie : Windows.Foundation.EventRegistrationToken
   );

   function CreateFileAsync
   (
      this : in out FolderInformation;
      desiredName : WinRt.WString
   )
   return WinRt.Windows.Storage.StorageFile'Class;

   function CreateFileAsync
   (
      this : in out FolderInformation;
      desiredName : WinRt.WString;
      options : Windows.Storage.CreationCollisionOption
   )
   return WinRt.Windows.Storage.StorageFile'Class;

   function CreateFolderAsync
   (
      this : in out FolderInformation;
      desiredName : WinRt.WString
   )
   return WinRt.Windows.Storage.StorageFolder'Class;

   function CreateFolderAsync
   (
      this : in out FolderInformation;
      desiredName : WinRt.WString;
      options : Windows.Storage.CreationCollisionOption
   )
   return WinRt.Windows.Storage.StorageFolder'Class;

   function GetFileAsync
   (
      this : in out FolderInformation;
      name : WinRt.WString
   )
   return WinRt.Windows.Storage.StorageFile'Class;

   function GetFolderAsync
   (
      this : in out FolderInformation;
      name : WinRt.WString
   )
   return WinRt.Windows.Storage.StorageFolder'Class;

   function GetItemAsync
   (
      this : in out FolderInformation;
      name : WinRt.WString
   )
   return WinRt.Windows.Storage.IStorageItem;

   function GetFilesAsync
   (
      this : in out FolderInformation
   )
   return WinRt.GenericObject;

   function GetFoldersAsync
   (
      this : in out FolderInformation
   )
   return WinRt.GenericObject;

   function GetItemsAsync
   (
      this : in out FolderInformation
   )
   return WinRt.GenericObject;

   procedure RenameAsync
   (
      this : in out FolderInformation;
      desiredName : WinRt.WString
   );

   procedure RenameAsync
   (
      this : in out FolderInformation;
      desiredName : WinRt.WString;
      option : Windows.Storage.NameCollisionOption
   );

   procedure DeleteAsync
   (
      this : in out FolderInformation
   );

   procedure DeleteAsync
   (
      this : in out FolderInformation;
      option : Windows.Storage.StorageDeleteOption
   );

   function GetBasicPropertiesAsync
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.FileProperties.BasicProperties'Class;

   function get_Name
   (
      this : in out FolderInformation
   )
   return WinRt.WString;

   function get_Path
   (
      this : in out FolderInformation
   )
   return WinRt.WString;

   function get_Attributes
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.FileAttributes;

   function get_DateCreated
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Foundation.DateTime;

   function IsOfType
   (
      this : in out FolderInformation;
      type_x : Windows.Storage.StorageItemTypes
   )
   return WinRt.Boolean;

   function GetThumbnailAsync
   (
      this : in out FolderInformation;
      mode : Windows.Storage.FileProperties.ThumbnailMode
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemThumbnail'Class;

   function GetThumbnailAsync
   (
      this : in out FolderInformation;
      mode : Windows.Storage.FileProperties.ThumbnailMode;
      requestedSize : WinRt.UInt32
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemThumbnail'Class;

   function GetThumbnailAsync
   (
      this : in out FolderInformation;
      mode : Windows.Storage.FileProperties.ThumbnailMode;
      requestedSize : WinRt.UInt32;
      options : Windows.Storage.FileProperties.ThumbnailOptions
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemThumbnail'Class;

   function get_DisplayName
   (
      this : in out FolderInformation
   )
   return WinRt.WString;

   function get_DisplayType
   (
      this : in out FolderInformation
   )
   return WinRt.WString;

   function get_FolderRelativeId
   (
      this : in out FolderInformation
   )
   return WinRt.WString;

   function get_Properties
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.FileProperties.StorageItemContentProperties'Class;

   function GetIndexedStateAsync
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.Search.IndexedState;

   function CreateFileQuery
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.Search.StorageFileQueryResult'Class;

   function CreateFileQuery
   (
      this : in out FolderInformation;
      query : Windows.Storage.Search.CommonFileQuery
   )
   return WinRt.Windows.Storage.Search.StorageFileQueryResult'Class;

   function CreateFileQueryWithOptions
   (
      this : in out FolderInformation;
      queryOptions : Windows.Storage.Search.QueryOptions'Class
   )
   return WinRt.Windows.Storage.Search.StorageFileQueryResult'Class;

   function CreateFolderQuery
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.Search.StorageFolderQueryResult'Class;

   function CreateFolderQuery
   (
      this : in out FolderInformation;
      query : Windows.Storage.Search.CommonFolderQuery
   )
   return WinRt.Windows.Storage.Search.StorageFolderQueryResult'Class;

   function CreateFolderQueryWithOptions
   (
      this : in out FolderInformation;
      queryOptions : Windows.Storage.Search.QueryOptions'Class
   )
   return WinRt.Windows.Storage.Search.StorageFolderQueryResult'Class;

   function CreateItemQuery
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.Search.StorageItemQueryResult'Class;

   function CreateItemQueryWithOptions
   (
      this : in out FolderInformation;
      queryOptions : Windows.Storage.Search.QueryOptions'Class
   )
   return WinRt.Windows.Storage.Search.StorageItemQueryResult'Class;

   function GetFilesAsync
   (
      this : in out FolderInformation;
      query : Windows.Storage.Search.CommonFileQuery;
      startIndex : WinRt.UInt32;
      maxItemsToRetrieve : WinRt.UInt32
   )
   return WinRt.GenericObject;

   function GetFilesAsync
   (
      this : in out FolderInformation;
      query : Windows.Storage.Search.CommonFileQuery
   )
   return WinRt.GenericObject;

   function GetFoldersAsync
   (
      this : in out FolderInformation;
      query : Windows.Storage.Search.CommonFolderQuery;
      startIndex : WinRt.UInt32;
      maxItemsToRetrieve : WinRt.UInt32
   )
   return WinRt.GenericObject;

   function GetFoldersAsync
   (
      this : in out FolderInformation;
      query : Windows.Storage.Search.CommonFolderQuery
   )
   return WinRt.GenericObject;

   function GetItemsAsync
   (
      this : in out FolderInformation;
      startIndex : WinRt.UInt32;
      maxItemsToRetrieve : WinRt.UInt32
   )
   return WinRt.GenericObject;

   function AreQueryOptionsSupported
   (
      this : in out FolderInformation;
      queryOptions : Windows.Storage.Search.QueryOptions'Class
   )
   return WinRt.Boolean;

   function IsCommonFolderQuerySupported
   (
      this : in out FolderInformation;
      query : Windows.Storage.Search.CommonFolderQuery
   )
   return WinRt.Boolean;

   function IsCommonFileQuerySupported
   (
      this : in out FolderInformation;
      query : Windows.Storage.Search.CommonFileQuery
   )
   return WinRt.Boolean;

   function GetParentAsync
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.StorageFolder'Class;

   function IsEqual
   (
      this : in out FolderInformation;
      item : Windows.Storage.IStorageItem
   )
   return WinRt.Boolean;

   function TryGetItemAsync
   (
      this : in out FolderInformation;
      name : WinRt.WString
   )
   return WinRt.Windows.Storage.IStorageItem;

   function get_Provider
   (
      this : in out FolderInformation
   )
   return WinRt.Windows.Storage.StorageProvider'Class;

end;
