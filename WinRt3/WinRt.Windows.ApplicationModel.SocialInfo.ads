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
limited with WinRt.Windows.Graphics.Imaging;
limited with WinRt.Windows.Storage.Streams;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.SocialInfo is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ISocialFeedChildItem_Interface is interface and WinRt.IInspectable_Interface;
   type ISocialFeedChildItem is access all ISocialFeedChildItem_Interface'Class;
   type ISocialFeedChildItem_Ptr is access all ISocialFeedChildItem;

   type ISocialFeedContent_Interface is interface and WinRt.IInspectable_Interface;
   type ISocialFeedContent is access all ISocialFeedContent_Interface'Class;
   type ISocialFeedContent_Ptr is access all ISocialFeedContent;

   type ISocialFeedItem_Interface is interface and WinRt.IInspectable_Interface;
   type ISocialFeedItem is access all ISocialFeedItem_Interface'Class;
   type ISocialFeedItem_Ptr is access all ISocialFeedItem;

   type ISocialFeedSharedItem_Interface is interface and WinRt.IInspectable_Interface;
   type ISocialFeedSharedItem is access all ISocialFeedSharedItem_Interface'Class;
   type ISocialFeedSharedItem_Ptr is access all ISocialFeedSharedItem;

   type ISocialItemThumbnail_Interface is interface and WinRt.IInspectable_Interface;
   type ISocialItemThumbnail is access all ISocialItemThumbnail_Interface'Class;
   type ISocialItemThumbnail_Ptr is access all ISocialItemThumbnail;

   type ISocialUserInfo_Interface is interface and WinRt.IInspectable_Interface;
   type ISocialUserInfo is access all ISocialUserInfo_Interface'Class;
   type ISocialUserInfo_Ptr is access all ISocialUserInfo;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type SocialFeedChildItem is new Ada.Finalization.Limited_Controlled with
      record
         m_ISocialFeedChildItem : access Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem;
      end record;
   type SocialFeedChildItem_Ptr is access all SocialFeedChildItem;

   type SocialFeedContent is new Ada.Finalization.Limited_Controlled with
      record
         m_ISocialFeedContent : access Windows.ApplicationModel.SocialInfo.ISocialFeedContent;
      end record;
   type SocialFeedContent_Ptr is access all SocialFeedContent;

   type SocialFeedItem is new Ada.Finalization.Limited_Controlled with
      record
         m_ISocialFeedItem : access Windows.ApplicationModel.SocialInfo.ISocialFeedItem;
      end record;
   type SocialFeedItem_Ptr is access all SocialFeedItem;

   type SocialFeedSharedItem is new Ada.Finalization.Limited_Controlled with
      record
         m_ISocialFeedSharedItem : access Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem;
      end record;
   type SocialFeedSharedItem_Ptr is access all SocialFeedSharedItem;

   type SocialItemThumbnail is new Ada.Finalization.Limited_Controlled with
      record
         m_ISocialItemThumbnail : access Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail;
      end record;
   type SocialItemThumbnail_Ptr is access all SocialItemThumbnail;

   type SocialUserInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_ISocialUserInfo : access Windows.ApplicationModel.SocialInfo.ISocialUserInfo;
      end record;
   type SocialUserInfo_Ptr is access all SocialUserInfo;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type SocialFeedItemStyle is (
      Default_e,
      Photo_e
   );
   for SocialFeedItemStyle use (
      Default_e => 0,
      Photo_e => 1
   );
   type SocialFeedItemStyle_Ptr is access all SocialFeedItemStyle;

   type SocialFeedKind is (
      HomeFeed_e,
      ContactFeed_e,
      Dashboard_e
   );
   for SocialFeedKind use (
      HomeFeed_e => 0,
      ContactFeed_e => 1,
      Dashboard_e => 2
   );
   type SocialFeedKind_Ptr is access all SocialFeedKind;

   type SocialFeedUpdateMode is (
      Append_e,
      Replace_e
   );
   for SocialFeedUpdateMode use (
      Append_e => 0,
      Replace_e => 1
   );
   type SocialFeedUpdateMode_Ptr is access all SocialFeedUpdateMode;

   type SocialItemBadgeStyle is (
      Hidden_e,
      Visible_e,
      VisibleWithCount_e
   );
   for SocialItemBadgeStyle use (
      Hidden_e => 0,
      Visible_e => 1,
      VisibleWithCount_e => 2
   );
   type SocialItemBadgeStyle_Ptr is access all SocialItemBadgeStyle;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type SocialInfoContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type SocialInfoContract_Ptr is access all SocialInfoContract;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVector_ISocialItemThumbnail is new WinRt.Windows.Foundation.Collections.IVector (WinRt.Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail);
   IID_IVector_ISocialItemThumbnail : aliased WinRt.IID := (285083847, 25774, 20505, (165, 229, 242, 76, 3, 19, 132, 86 ));
   function QInterface_IVector_ISocialItemThumbnail is new Generic_QueryInterface (GenericObject_Interface, IVector_ISocialItemThumbnail.Kind, IID_IVector_ISocialItemThumbnail'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ISocialFeedChildItem is interface and WinRt.IInspectable;

      function get_Author
      (
         this : access ISocialFeedChildItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialUserInfo
      )
      return WinRt.Hresult is abstract;

      function get_PrimaryContent
      (
         this : access ISocialFeedChildItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialFeedContent
      )
      return WinRt.Hresult is abstract;

      function get_SecondaryContent
      (
         this : access ISocialFeedChildItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialFeedContent
      )
      return WinRt.Hresult is abstract;

      function get_Timestamp
      (
         this : access ISocialFeedChildItem_Interface;
         RetVal : access Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function put_Timestamp
      (
         this : access ISocialFeedChildItem_Interface;
         value : Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function get_TargetUri
      (
         this : access ISocialFeedChildItem_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function put_TargetUri
      (
         this : access ISocialFeedChildItem_Interface;
         value : Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function get_Thumbnails
      (
         this : access ISocialFeedChildItem_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_SharedItem
      (
         this : access ISocialFeedChildItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem
      )
      return WinRt.Hresult is abstract;

      function put_SharedItem
      (
         this : access ISocialFeedChildItem_Interface;
         value : Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem
      )
      return WinRt.Hresult is abstract;

      IID_ISocialFeedChildItem : aliased WinRt.IID := (191535194, 54685, 16574, (152, 12, 72, 138, 42, 179, 10, 131 ));

   -----------------------------------------------------------------------------
   -- type ISocialFeedContent is interface and WinRt.IInspectable;

      function get_Title
      (
         this : access ISocialFeedContent_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Title
      (
         this : access ISocialFeedContent_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Message
      (
         this : access ISocialFeedContent_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Message
      (
         this : access ISocialFeedContent_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_TargetUri
      (
         this : access ISocialFeedContent_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function put_TargetUri
      (
         this : access ISocialFeedContent_Interface;
         value : Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      IID_ISocialFeedContent : aliased WinRt.IID := (2721375273, 15929, 18765, (163, 124, 244, 98, 162, 73, 69, 20 ));

   -----------------------------------------------------------------------------
   -- type ISocialFeedItem is interface and WinRt.IInspectable;

      function get_Author
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialUserInfo
      )
      return WinRt.Hresult is abstract;

      function get_PrimaryContent
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialFeedContent
      )
      return WinRt.Hresult is abstract;

      function get_SecondaryContent
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialFeedContent
      )
      return WinRt.Hresult is abstract;

      function get_Timestamp
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function put_Timestamp
      (
         this : access ISocialFeedItem_Interface;
         value : Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function get_TargetUri
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function put_TargetUri
      (
         this : access ISocialFeedItem_Interface;
         value : Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function get_Thumbnails
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_SharedItem
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem
      )
      return WinRt.Hresult is abstract;

      function put_SharedItem
      (
         this : access ISocialFeedItem_Interface;
         value : Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem
      )
      return WinRt.Hresult is abstract;

      function get_BadgeStyle
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.SocialItemBadgeStyle
      )
      return WinRt.Hresult is abstract;

      function put_BadgeStyle
      (
         this : access ISocialFeedItem_Interface;
         value : Windows.ApplicationModel.SocialInfo.SocialItemBadgeStyle
      )
      return WinRt.Hresult is abstract;

      function get_BadgeCountValue
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function put_BadgeCountValue
      (
         this : access ISocialFeedItem_Interface;
         value : WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_RemoteId
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_RemoteId
      (
         this : access ISocialFeedItem_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ChildItem
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem
      )
      return WinRt.Hresult is abstract;

      function put_ChildItem
      (
         this : access ISocialFeedItem_Interface;
         value : Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem
      )
      return WinRt.Hresult is abstract;

      function get_Style
      (
         this : access ISocialFeedItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.SocialFeedItemStyle
      )
      return WinRt.Hresult is abstract;

      function put_Style
      (
         this : access ISocialFeedItem_Interface;
         value : Windows.ApplicationModel.SocialInfo.SocialFeedItemStyle
      )
      return WinRt.Hresult is abstract;

      IID_ISocialFeedItem : aliased WinRt.IID := (1326682795, 8050, 19763, (182, 149, 222, 62, 29, 182, 3, 23 ));

   -----------------------------------------------------------------------------
   -- type ISocialFeedSharedItem is interface and WinRt.IInspectable;

      function get_OriginalSource
      (
         this : access ISocialFeedSharedItem_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function put_OriginalSource
      (
         this : access ISocialFeedSharedItem_Interface;
         value : Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function get_Content
      (
         this : access ISocialFeedSharedItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialFeedContent
      )
      return WinRt.Hresult is abstract;

      function get_Timestamp
      (
         this : access ISocialFeedSharedItem_Interface;
         RetVal : access Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function put_Timestamp
      (
         this : access ISocialFeedSharedItem_Interface;
         value : Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function get_TargetUri
      (
         this : access ISocialFeedSharedItem_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function put_TargetUri
      (
         this : access ISocialFeedSharedItem_Interface;
         value : Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function put_Thumbnail
      (
         this : access ISocialFeedSharedItem_Interface;
         value : Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail
      )
      return WinRt.Hresult is abstract;

      function get_Thumbnail
      (
         this : access ISocialFeedSharedItem_Interface;
         RetVal : access Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail
      )
      return WinRt.Hresult is abstract;

      IID_ISocialFeedSharedItem : aliased WinRt.IID := (2080087616, 42666, 17831, (159, 246, 84, 196, 33, 5, 221, 31 ));

   -----------------------------------------------------------------------------
   -- type ISocialItemThumbnail is interface and WinRt.IInspectable;

      function get_TargetUri
      (
         this : access ISocialItemThumbnail_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function put_TargetUri
      (
         this : access ISocialItemThumbnail_Interface;
         value : Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function get_ImageUri
      (
         this : access ISocialItemThumbnail_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function put_ImageUri
      (
         this : access ISocialItemThumbnail_Interface;
         value : Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function get_BitmapSize
      (
         this : access ISocialItemThumbnail_Interface;
         RetVal : access Windows.Graphics.Imaging.BitmapSize
      )
      return WinRt.Hresult is abstract;

      function put_BitmapSize
      (
         this : access ISocialItemThumbnail_Interface;
         value : Windows.Graphics.Imaging.BitmapSize
      )
      return WinRt.Hresult is abstract;

      function SetImageAsync
      (
         this : access ISocialItemThumbnail_Interface;
         image : Windows.Storage.Streams.IInputStream;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_ISocialItemThumbnail : aliased WinRt.IID := (1556054810, 16136, 18815, (145, 127, 87, 224, 157, 132, 177, 65 ));

   -----------------------------------------------------------------------------
   -- type ISocialUserInfo is interface and WinRt.IInspectable;

      function get_DisplayName
      (
         this : access ISocialUserInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_DisplayName
      (
         this : access ISocialUserInfo_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_UserName
      (
         this : access ISocialUserInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_UserName
      (
         this : access ISocialUserInfo_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_RemoteId
      (
         this : access ISocialUserInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_RemoteId
      (
         this : access ISocialUserInfo_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_TargetUri
      (
         this : access ISocialUserInfo_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function put_TargetUri
      (
         this : access ISocialUserInfo_Interface;
         value : Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      IID_ISocialUserInfo : aliased WinRt.IID := (2656967633, 37072, 19997, (149, 84, 132, 77, 70, 96, 127, 97 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SocialFeedChildItem

   overriding procedure Initialize (this : in out SocialFeedChildItem);
   overriding procedure Finalize (this : in out SocialFeedChildItem);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SocialFeedChildItem

   function Constructor return SocialFeedChildItem;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SocialFeedChildItem

   function get_Author
   (
      this : in out SocialFeedChildItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialUserInfo'Class;

   function get_PrimaryContent
   (
      this : in out SocialFeedChildItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialFeedContent'Class;

   function get_SecondaryContent
   (
      this : in out SocialFeedChildItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialFeedContent'Class;

   function get_Timestamp
   (
      this : in out SocialFeedChildItem
   )
   return WinRt.Windows.Foundation.DateTime;

   procedure put_Timestamp
   (
      this : in out SocialFeedChildItem;
      value : Windows.Foundation.DateTime
   );

   function get_TargetUri
   (
      this : in out SocialFeedChildItem
   )
   return WinRt.Windows.Foundation.Uri'Class;

   procedure put_TargetUri
   (
      this : in out SocialFeedChildItem;
      value : Windows.Foundation.Uri'Class
   );

   function get_Thumbnails
   (
      this : in out SocialFeedChildItem
   )
   return IVector_ISocialItemThumbnail.Kind;

   function get_SharedItem
   (
      this : in out SocialFeedChildItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem'Class;

   procedure put_SharedItem
   (
      this : in out SocialFeedChildItem;
      value : Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem'Class
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SocialFeedContent

   overriding procedure Initialize (this : in out SocialFeedContent);
   overriding procedure Finalize (this : in out SocialFeedContent);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SocialFeedContent

   function get_Title
   (
      this : in out SocialFeedContent
   )
   return WinRt.WString;

   procedure put_Title
   (
      this : in out SocialFeedContent;
      value : WinRt.WString
   );

   function get_Message
   (
      this : in out SocialFeedContent
   )
   return WinRt.WString;

   procedure put_Message
   (
      this : in out SocialFeedContent;
      value : WinRt.WString
   );

   function get_TargetUri
   (
      this : in out SocialFeedContent
   )
   return WinRt.Windows.Foundation.Uri'Class;

   procedure put_TargetUri
   (
      this : in out SocialFeedContent;
      value : Windows.Foundation.Uri'Class
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SocialFeedItem

   overriding procedure Initialize (this : in out SocialFeedItem);
   overriding procedure Finalize (this : in out SocialFeedItem);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SocialFeedItem

   function Constructor return SocialFeedItem;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SocialFeedItem

   function get_Author
   (
      this : in out SocialFeedItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialUserInfo'Class;

   function get_PrimaryContent
   (
      this : in out SocialFeedItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialFeedContent'Class;

   function get_SecondaryContent
   (
      this : in out SocialFeedItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialFeedContent'Class;

   function get_Timestamp
   (
      this : in out SocialFeedItem
   )
   return WinRt.Windows.Foundation.DateTime;

   procedure put_Timestamp
   (
      this : in out SocialFeedItem;
      value : Windows.Foundation.DateTime
   );

   function get_TargetUri
   (
      this : in out SocialFeedItem
   )
   return WinRt.Windows.Foundation.Uri'Class;

   procedure put_TargetUri
   (
      this : in out SocialFeedItem;
      value : Windows.Foundation.Uri'Class
   );

   function get_Thumbnails
   (
      this : in out SocialFeedItem
   )
   return IVector_ISocialItemThumbnail.Kind;

   function get_SharedItem
   (
      this : in out SocialFeedItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem'Class;

   procedure put_SharedItem
   (
      this : in out SocialFeedItem;
      value : Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem'Class
   );

   function get_BadgeStyle
   (
      this : in out SocialFeedItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialItemBadgeStyle;

   procedure put_BadgeStyle
   (
      this : in out SocialFeedItem;
      value : Windows.ApplicationModel.SocialInfo.SocialItemBadgeStyle
   );

   function get_BadgeCountValue
   (
      this : in out SocialFeedItem
   )
   return WinRt.Int32;

   procedure put_BadgeCountValue
   (
      this : in out SocialFeedItem;
      value : WinRt.Int32
   );

   function get_RemoteId
   (
      this : in out SocialFeedItem
   )
   return WinRt.WString;

   procedure put_RemoteId
   (
      this : in out SocialFeedItem;
      value : WinRt.WString
   );

   function get_ChildItem
   (
      this : in out SocialFeedItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialFeedChildItem'Class;

   procedure put_ChildItem
   (
      this : in out SocialFeedItem;
      value : Windows.ApplicationModel.SocialInfo.SocialFeedChildItem'Class
   );

   function get_Style
   (
      this : in out SocialFeedItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialFeedItemStyle;

   procedure put_Style
   (
      this : in out SocialFeedItem;
      value : Windows.ApplicationModel.SocialInfo.SocialFeedItemStyle
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SocialFeedSharedItem

   overriding procedure Initialize (this : in out SocialFeedSharedItem);
   overriding procedure Finalize (this : in out SocialFeedSharedItem);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SocialFeedSharedItem

   function Constructor return SocialFeedSharedItem;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SocialFeedSharedItem

   function get_OriginalSource
   (
      this : in out SocialFeedSharedItem
   )
   return WinRt.Windows.Foundation.Uri'Class;

   procedure put_OriginalSource
   (
      this : in out SocialFeedSharedItem;
      value : Windows.Foundation.Uri'Class
   );

   function get_Content
   (
      this : in out SocialFeedSharedItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialFeedContent'Class;

   function get_Timestamp
   (
      this : in out SocialFeedSharedItem
   )
   return WinRt.Windows.Foundation.DateTime;

   procedure put_Timestamp
   (
      this : in out SocialFeedSharedItem;
      value : Windows.Foundation.DateTime
   );

   function get_TargetUri
   (
      this : in out SocialFeedSharedItem
   )
   return WinRt.Windows.Foundation.Uri'Class;

   procedure put_TargetUri
   (
      this : in out SocialFeedSharedItem;
      value : Windows.Foundation.Uri'Class
   );

   procedure put_Thumbnail
   (
      this : in out SocialFeedSharedItem;
      value : Windows.ApplicationModel.SocialInfo.SocialItemThumbnail'Class
   );

   function get_Thumbnail
   (
      this : in out SocialFeedSharedItem
   )
   return WinRt.Windows.ApplicationModel.SocialInfo.SocialItemThumbnail'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SocialItemThumbnail

   overriding procedure Initialize (this : in out SocialItemThumbnail);
   overriding procedure Finalize (this : in out SocialItemThumbnail);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SocialItemThumbnail

   function Constructor return SocialItemThumbnail;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SocialItemThumbnail

   function get_TargetUri
   (
      this : in out SocialItemThumbnail
   )
   return WinRt.Windows.Foundation.Uri'Class;

   procedure put_TargetUri
   (
      this : in out SocialItemThumbnail;
      value : Windows.Foundation.Uri'Class
   );

   function get_ImageUri
   (
      this : in out SocialItemThumbnail
   )
   return WinRt.Windows.Foundation.Uri'Class;

   procedure put_ImageUri
   (
      this : in out SocialItemThumbnail;
      value : Windows.Foundation.Uri'Class
   );

   function get_BitmapSize
   (
      this : in out SocialItemThumbnail
   )
   return WinRt.Windows.Graphics.Imaging.BitmapSize;

   procedure put_BitmapSize
   (
      this : in out SocialItemThumbnail;
      value : Windows.Graphics.Imaging.BitmapSize
   );

   procedure SetImageAsync
   (
      this : in out SocialItemThumbnail;
      image : Windows.Storage.Streams.IInputStream
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SocialUserInfo

   overriding procedure Initialize (this : in out SocialUserInfo);
   overriding procedure Finalize (this : in out SocialUserInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SocialUserInfo

   function get_DisplayName
   (
      this : in out SocialUserInfo
   )
   return WinRt.WString;

   procedure put_DisplayName
   (
      this : in out SocialUserInfo;
      value : WinRt.WString
   );

   function get_UserName
   (
      this : in out SocialUserInfo
   )
   return WinRt.WString;

   procedure put_UserName
   (
      this : in out SocialUserInfo;
      value : WinRt.WString
   );

   function get_RemoteId
   (
      this : in out SocialUserInfo
   )
   return WinRt.WString;

   procedure put_RemoteId
   (
      this : in out SocialUserInfo;
      value : WinRt.WString
   );

   function get_TargetUri
   (
      this : in out SocialUserInfo
   )
   return WinRt.Windows.Foundation.Uri'Class;

   procedure put_TargetUri
   (
      this : in out SocialUserInfo;
      value : Windows.Foundation.Uri'Class
   );

end;
