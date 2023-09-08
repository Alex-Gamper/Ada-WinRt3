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
limited with WinRt.Windows.ApplicationModel.Contacts;
with WinRt.Windows.Foundation.Collections;
limited with WinRt.Windows.Storage.Streams;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IQuickLink_Interface is interface and WinRt.IInspectable_Interface;
   type IQuickLink is access all IQuickLink_Interface'Class;
   type IQuickLink_Ptr is access all IQuickLink;

   type IShareOperation_Interface is interface and WinRt.IInspectable_Interface;
   type IShareOperation is access all IShareOperation_Interface'Class;
   type IShareOperation_Ptr is access all IShareOperation;

   type IShareOperation2_Interface is interface and WinRt.IInspectable_Interface;
   type IShareOperation2 is access all IShareOperation2_Interface'Class;

   type IShareOperation3_Interface is interface and WinRt.IInspectable_Interface;
   type IShareOperation3 is access all IShareOperation3_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type QuickLink is new Ada.Finalization.Limited_Controlled with
      record
         m_IQuickLink : access Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink;
      end record;
   type QuickLink_Ptr is access all QuickLink;

   type ShareOperation is new Ada.Finalization.Limited_Controlled with
      record
         m_IShareOperation : access Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation;
      end record;
   type ShareOperation_Ptr is access all ShareOperation;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVector_HString is new WinRt.Windows.Foundation.Collections.IVector (WinRt.HString);
   IID_IVector_HString : aliased WinRt.IID := (3418906382, 49975, 21831, (140, 134, 135, 251, 191, 137, 166, 104 ));
   function QInterface_IVector_HString is new Generic_QueryInterface (GenericObject_Interface, IVector_HString.Kind, IID_IVector_HString'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IQuickLink is interface and WinRt.IInspectable;

      function get_Title
      (
         this : access IQuickLink_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Title
      (
         this : access IQuickLink_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Thumbnail
      (
         this : access IQuickLink_Interface;
         RetVal : access Windows.Storage.Streams.IRandomAccessStreamReference
      )
      return WinRt.Hresult is abstract;

      function put_Thumbnail
      (
         this : access IQuickLink_Interface;
         value : Windows.Storage.Streams.IRandomAccessStreamReference
      )
      return WinRt.Hresult is abstract;

      function get_Id
      (
         this : access IQuickLink_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Id
      (
         this : access IQuickLink_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_SupportedDataFormats
      (
         this : access IQuickLink_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_SupportedFileTypes
      (
         this : access IQuickLink_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IQuickLink : aliased WinRt.IID := (1614693128, 61630, 19164, (172, 201, 139, 39, 171, 156, 245, 86 ));

   -----------------------------------------------------------------------------
   -- type IShareOperation is interface and WinRt.IInspectable;

      function get_Data
      (
         this : access IShareOperation_Interface;
         RetVal : access Windows.ApplicationModel.DataTransfer.IDataPackageView
      )
      return WinRt.Hresult is abstract;

      function get_QuickLinkId
      (
         this : access IShareOperation_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function RemoveThisQuickLink
      (
         this : access IShareOperation_Interface
      )
      return WinRt.Hresult is abstract;

      function ReportStarted
      (
         this : access IShareOperation_Interface
      )
      return WinRt.Hresult is abstract;

      function ReportDataRetrieved
      (
         this : access IShareOperation_Interface
      )
      return WinRt.Hresult is abstract;

      function ReportSubmittedBackgroundTask
      (
         this : access IShareOperation_Interface
      )
      return WinRt.Hresult is abstract;

      function ReportCompleted
      (
         this : access IShareOperation_Interface;
         quicklink_p : Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink
      )
      return WinRt.Hresult is abstract;

      function ReportCompleted
      (
         this : access IShareOperation_Interface
      )
      return WinRt.Hresult is abstract;

      function ReportError
      (
         this : access IShareOperation_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IShareOperation : aliased WinRt.IID := (575060664, 53496, 16833, (168, 42, 65, 55, 219, 101, 4, 251 ));

   -----------------------------------------------------------------------------
   -- type IShareOperation2 is interface and WinRt.IInspectable;

      function DismissUI
      (
         this : access IShareOperation2_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IShareOperation2 : aliased WinRt.IID := (268146625, 38776, 18953, (142, 91, 203, 94, 72, 45, 5, 85 ));

   -----------------------------------------------------------------------------
   -- type IShareOperation3 is interface and WinRt.IInspectable;

      function get_Contacts
      (
         this : access IShareOperation3_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IShareOperation3 : aliased WinRt.IID := (1593226114, 47015, 17777, (162, 166, 153, 74, 3, 73, 136, 178 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for QuickLink

   overriding procedure Initialize (this : in out QuickLink);
   overriding procedure Finalize (this : in out QuickLink);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for QuickLink

   function Constructor return QuickLink;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for QuickLink

   function get_Title
   (
      this : in out QuickLink
   )
   return WinRt.WString;

   procedure put_Title
   (
      this : in out QuickLink;
      value : WinRt.WString
   );

   function get_Thumbnail
   (
      this : in out QuickLink
   )
   return WinRt.Windows.Storage.Streams.RandomAccessStreamReference'Class;

   procedure put_Thumbnail
   (
      this : in out QuickLink;
      value : Windows.Storage.Streams.RandomAccessStreamReference'Class
   );

   function get_Id
   (
      this : in out QuickLink
   )
   return WinRt.WString;

   procedure put_Id
   (
      this : in out QuickLink;
      value : WinRt.WString
   );

   function get_SupportedDataFormats
   (
      this : in out QuickLink
   )
   return IVector_HString.Kind;

   function get_SupportedFileTypes
   (
      this : in out QuickLink
   )
   return IVector_HString.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ShareOperation

   overriding procedure Initialize (this : in out ShareOperation);
   overriding procedure Finalize (this : in out ShareOperation);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ShareOperation

   function get_Data
   (
      this : in out ShareOperation
   )
   return WinRt.Windows.ApplicationModel.DataTransfer.DataPackageView'Class;

   function get_QuickLinkId
   (
      this : in out ShareOperation
   )
   return WinRt.WString;

   procedure RemoveThisQuickLink
   (
      this : in out ShareOperation
   );

   procedure ReportStarted
   (
      this : in out ShareOperation
   );

   procedure ReportDataRetrieved
   (
      this : in out ShareOperation
   );

   procedure ReportSubmittedBackgroundTask
   (
      this : in out ShareOperation
   );

   procedure ReportCompleted
   (
      this : in out ShareOperation;
      quicklink_p : Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink'Class
   );

   procedure ReportCompleted
   (
      this : in out ShareOperation
   );

   procedure ReportError
   (
      this : in out ShareOperation;
      value : WinRt.WString
   );

   procedure DismissUI
   (
      this : in out ShareOperation
   );

   function get_Contacts
   (
      this : in out ShareOperation
   )
   return WinRt.GenericObject;

end;
