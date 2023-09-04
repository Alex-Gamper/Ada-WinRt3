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
limited with WinRt.Windows.Storage;
limited with WinRt.Windows.Storage.Streams;
limited with WinRt.Windows.UI;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Data.Pdf is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPdfDocument_Interface is interface and WinRt.IInspectable_Interface;
   type IPdfDocument is access IPdfDocument_Interface'Class;
   type IPdfDocument_Ptr is access all IPdfDocument;

   type IPdfDocumentStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPdfDocumentStatics is access IPdfDocumentStatics_Interface'Class;

   type IPdfPage_Interface is interface and WinRt.IInspectable_Interface;
   type IPdfPage is access IPdfPage_Interface'Class;
   type IPdfPage_Ptr is access all IPdfPage;

   type IPdfPageDimensions_Interface is interface and WinRt.IInspectable_Interface;
   type IPdfPageDimensions is access IPdfPageDimensions_Interface'Class;
   type IPdfPageDimensions_Ptr is access all IPdfPageDimensions;

   type IPdfPageRenderOptions_Interface is interface and WinRt.IInspectable_Interface;
   type IPdfPageRenderOptions is access IPdfPageRenderOptions_Interface'Class;
   type IPdfPageRenderOptions_Ptr is access all IPdfPageRenderOptions;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type PdfDocument is new Ada.Finalization.Limited_Controlled with
      record
         m_IPdfDocument : access Windows.Data.Pdf.IPdfDocument;
      end record;
   type PdfDocument_Ptr is access all PdfDocument;

   type PdfPage is new Ada.Finalization.Limited_Controlled with
      record
         m_IPdfPage : access Windows.Data.Pdf.IPdfPage;
      end record;
   type PdfPage_Ptr is access all PdfPage;

   type PdfPageDimensions is new Ada.Finalization.Limited_Controlled with
      record
         m_IPdfPageDimensions : access Windows.Data.Pdf.IPdfPageDimensions;
      end record;
   type PdfPageDimensions_Ptr is access all PdfPageDimensions;

   type PdfPageRenderOptions is new Ada.Finalization.Limited_Controlled with
      record
         m_IPdfPageRenderOptions : access Windows.Data.Pdf.IPdfPageRenderOptions;
      end record;
   type PdfPageRenderOptions_Ptr is access all PdfPageRenderOptions;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type PdfPageRotation is (
      Normal_e,
      Rotate90_e,
      Rotate180_e,
      Rotate270_e
   );
   for PdfPageRotation use (
      Normal_e => 0,
      Rotate90_e => 1,
      Rotate180_e => 2,
      Rotate270_e => 3
   );
   type PdfPageRotation_Ptr is access PdfPageRotation;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPdfDocument is interface and WinRt.IInspectable;

      function GetPage
      (
         this : access IPdfDocument_Interface;
         pageIndex : WinRt.UInt32;
         RetVal : access Windows.Data.Pdf.IPdfPage
      )
      return WinRt.Hresult is abstract;

      function get_PageCount
      (
         this : access IPdfDocument_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_IsPasswordProtected
      (
         this : access IPdfDocument_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IPdfDocument : aliased WinRt.IID := (2893987549, 33018, 16521, (132, 110, 129, 183, 127, 245, 168, 108 ));

   -----------------------------------------------------------------------------
   -- type IPdfDocumentStatics is interface and WinRt.IInspectable;

      function LoadFromFileAsync
      (
         this : access IPdfDocumentStatics_Interface;
         file : Windows.Storage.IStorageFile;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function LoadFromFileAsync
      (
         this : access IPdfDocumentStatics_Interface;
         file : Windows.Storage.IStorageFile;
         password : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function LoadFromStreamAsync
      (
         this : access IPdfDocumentStatics_Interface;
         inputStream : Windows.Storage.Streams.IRandomAccessStream;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function LoadFromStreamAsync
      (
         this : access IPdfDocumentStatics_Interface;
         inputStream : Windows.Storage.Streams.IRandomAccessStream;
         password : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPdfDocumentStatics : aliased WinRt.IID := (1127877471, 49159, 18312, (144, 242, 8, 20, 61, 146, 37, 153 ));

   -----------------------------------------------------------------------------
   -- type IPdfPage is interface and WinRt.IInspectable;

      function RenderToStreamAsync
      (
         this : access IPdfPage_Interface;
         outputStream : Windows.Storage.Streams.IRandomAccessStream;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function RenderToStreamAsync
      (
         this : access IPdfPage_Interface;
         outputStream : Windows.Storage.Streams.IRandomAccessStream;
         options : Windows.Data.Pdf.IPdfPageRenderOptions;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function PreparePageAsync
      (
         this : access IPdfPage_Interface;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function get_Index
      (
         this : access IPdfPage_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_Size
      (
         this : access IPdfPage_Interface;
         RetVal : access Windows.Foundation.Size
      )
      return WinRt.Hresult is abstract;

      function get_Dimensions
      (
         this : access IPdfPage_Interface;
         RetVal : access Windows.Data.Pdf.IPdfPageDimensions
      )
      return WinRt.Hresult is abstract;

      function get_Rotation
      (
         this : access IPdfPage_Interface;
         RetVal : access Windows.Data.Pdf.PdfPageRotation
      )
      return WinRt.Hresult is abstract;

      function get_PreferredZoom
      (
         this : access IPdfPage_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      IID_IPdfPage : aliased WinRt.IID := (2645864648, 21280, 19708, (173, 118, 73, 63, 218, 208, 229, 148 ));

   -----------------------------------------------------------------------------
   -- type IPdfPageDimensions is interface and WinRt.IInspectable;

      function get_MediaBox
      (
         this : access IPdfPageDimensions_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function get_CropBox
      (
         this : access IPdfPageDimensions_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function get_BleedBox
      (
         this : access IPdfPageDimensions_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function get_TrimBox
      (
         this : access IPdfPageDimensions_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function get_ArtBox
      (
         this : access IPdfPageDimensions_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      IID_IPdfPageDimensions : aliased WinRt.IID := (571933809, 12606, 17640, (131, 93, 99, 163, 231, 98, 74, 16 ));

   -----------------------------------------------------------------------------
   -- type IPdfPageRenderOptions is interface and WinRt.IInspectable;

      function get_SourceRect
      (
         this : access IPdfPageRenderOptions_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function put_SourceRect
      (
         this : access IPdfPageRenderOptions_Interface;
         value : Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function get_DestinationWidth
      (
         this : access IPdfPageRenderOptions_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function put_DestinationWidth
      (
         this : access IPdfPageRenderOptions_Interface;
         value : WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_DestinationHeight
      (
         this : access IPdfPageRenderOptions_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function put_DestinationHeight
      (
         this : access IPdfPageRenderOptions_Interface;
         value : WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_BackgroundColor
      (
         this : access IPdfPageRenderOptions_Interface;
         RetVal : access Windows.UI.Color
      )
      return WinRt.Hresult is abstract;

      function put_BackgroundColor
      (
         this : access IPdfPageRenderOptions_Interface;
         value : Windows.UI.Color
      )
      return WinRt.Hresult is abstract;

      function get_IsIgnoringHighContrast
      (
         this : access IPdfPageRenderOptions_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_IsIgnoringHighContrast
      (
         this : access IPdfPageRenderOptions_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_BitmapEncoderId
      (
         this : access IPdfPageRenderOptions_Interface;
         RetVal : access WinRt.Guid
      )
      return WinRt.Hresult is abstract;

      function put_BitmapEncoderId
      (
         this : access IPdfPageRenderOptions_Interface;
         value : WinRt.Guid
      )
      return WinRt.Hresult is abstract;

      IID_IPdfPageRenderOptions : aliased WinRt.IID := (1016595823, 47055, 19497, (154, 4, 82, 217, 2, 103, 244, 37 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PdfDocument

   overriding procedure Initialize (this : in out PdfDocument);
   overriding procedure Finalize (this : in out PdfDocument);

   -----------------------------------------------------------------------------
   -- Static Interfaces for PdfDocument

   function LoadFromFileAsync
   (
      file : Windows.Storage.IStorageFile
   )
   return WinRt.Windows.Data.Pdf.PdfDocument;

   function LoadFromFileAsync
   (
      file : Windows.Storage.IStorageFile;
      password : WinRt.WString
   )
   return WinRt.Windows.Data.Pdf.PdfDocument;

   function LoadFromStreamAsync
   (
      inputStream : Windows.Storage.Streams.IRandomAccessStream
   )
   return WinRt.Windows.Data.Pdf.PdfDocument;

   function LoadFromStreamAsync
   (
      inputStream : Windows.Storage.Streams.IRandomAccessStream;
      password : WinRt.WString
   )
   return WinRt.Windows.Data.Pdf.PdfDocument;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PdfDocument

   function GetPage
   (
      this : in out PdfDocument;
      pageIndex : WinRt.UInt32
   )
   return WinRt.Windows.Data.Pdf.PdfPage'Class;

   function get_PageCount
   (
      this : in out PdfDocument
   )
   return WinRt.UInt32;

   function get_IsPasswordProtected
   (
      this : in out PdfDocument
   )
   return WinRt.Boolean;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PdfPage

   overriding procedure Initialize (this : in out PdfPage);
   overriding procedure Finalize (this : in out PdfPage);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PdfPage

   procedure RenderToStreamAsync
   (
      this : in out PdfPage;
      outputStream : Windows.Storage.Streams.IRandomAccessStream
   );

   procedure RenderToStreamAsync
   (
      this : in out PdfPage;
      outputStream : Windows.Storage.Streams.IRandomAccessStream;
      options : Windows.Data.Pdf.PdfPageRenderOptions'Class
   );

   procedure PreparePageAsync
   (
      this : in out PdfPage
   );

   function get_Index
   (
      this : in out PdfPage
   )
   return WinRt.UInt32;

   function get_Size
   (
      this : in out PdfPage
   )
   return WinRt.Windows.Foundation.Size;

   function get_Dimensions
   (
      this : in out PdfPage
   )
   return WinRt.Windows.Data.Pdf.PdfPageDimensions'Class;

   function get_Rotation
   (
      this : in out PdfPage
   )
   return WinRt.Windows.Data.Pdf.PdfPageRotation;

   function get_PreferredZoom
   (
      this : in out PdfPage
   )
   return WinRt.Single;

   procedure Close
   (
      this : in out PdfPage
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PdfPageDimensions

   overriding procedure Initialize (this : in out PdfPageDimensions);
   overriding procedure Finalize (this : in out PdfPageDimensions);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PdfPageDimensions

   function get_MediaBox
   (
      this : in out PdfPageDimensions
   )
   return WinRt.Windows.Foundation.Rect;

   function get_CropBox
   (
      this : in out PdfPageDimensions
   )
   return WinRt.Windows.Foundation.Rect;

   function get_BleedBox
   (
      this : in out PdfPageDimensions
   )
   return WinRt.Windows.Foundation.Rect;

   function get_TrimBox
   (
      this : in out PdfPageDimensions
   )
   return WinRt.Windows.Foundation.Rect;

   function get_ArtBox
   (
      this : in out PdfPageDimensions
   )
   return WinRt.Windows.Foundation.Rect;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PdfPageRenderOptions

   overriding procedure Initialize (this : in out PdfPageRenderOptions);
   overriding procedure Finalize (this : in out PdfPageRenderOptions);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PdfPageRenderOptions

   function Constructor return PdfPageRenderOptions;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PdfPageRenderOptions

   function get_SourceRect
   (
      this : in out PdfPageRenderOptions
   )
   return WinRt.Windows.Foundation.Rect;

   procedure put_SourceRect
   (
      this : in out PdfPageRenderOptions;
      value : Windows.Foundation.Rect
   );

   function get_DestinationWidth
   (
      this : in out PdfPageRenderOptions
   )
   return WinRt.UInt32;

   procedure put_DestinationWidth
   (
      this : in out PdfPageRenderOptions;
      value : WinRt.UInt32
   );

   function get_DestinationHeight
   (
      this : in out PdfPageRenderOptions
   )
   return WinRt.UInt32;

   procedure put_DestinationHeight
   (
      this : in out PdfPageRenderOptions;
      value : WinRt.UInt32
   );

   function get_BackgroundColor
   (
      this : in out PdfPageRenderOptions
   )
   return WinRt.Windows.UI.Color;

   procedure put_BackgroundColor
   (
      this : in out PdfPageRenderOptions;
      value : Windows.UI.Color
   );

   function get_IsIgnoringHighContrast
   (
      this : in out PdfPageRenderOptions
   )
   return WinRt.Boolean;

   procedure put_IsIgnoringHighContrast
   (
      this : in out PdfPageRenderOptions;
      value : WinRt.Boolean
   );

   function get_BitmapEncoderId
   (
      this : in out PdfPageRenderOptions
   )
   return WinRt.Guid;

   procedure put_BitmapEncoderId
   (
      this : in out PdfPageRenderOptions;
      value : WinRt.Guid
   );

end;
