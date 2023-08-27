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
limited with WinRt.Windows.Graphics.Printing;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.UI.Xaml.Printing is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Delegates declarations
   -----------------------------------------------------------------------------

   type AddPagesEventHandler_Delegate;
   type AddPagesEventHandler is access all AddPagesEventHandler_Delegate;

   type GetPreviewPageEventHandler_Delegate;
   type GetPreviewPageEventHandler is access all GetPreviewPageEventHandler_Delegate;

   type PaginateEventHandler_Delegate;
   type PaginateEventHandler is access all PaginateEventHandler_Delegate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IAddPagesEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IAddPagesEventArgs is access all IAddPagesEventArgs_Interface'Class;
   type IAddPagesEventArgs_Ptr is access all IAddPagesEventArgs;

   type IGetPreviewPageEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IGetPreviewPageEventArgs is access all IGetPreviewPageEventArgs_Interface'Class;
   type IGetPreviewPageEventArgs_Ptr is access all IGetPreviewPageEventArgs;

   type IPaginateEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IPaginateEventArgs is access all IPaginateEventArgs_Interface'Class;
   type IPaginateEventArgs_Ptr is access all IPaginateEventArgs;

   type IPrintDocument_Interface is interface and WinRt.IInspectable_Interface;
   type IPrintDocument is access all IPrintDocument_Interface'Class;
   type IPrintDocument_Ptr is access all IPrintDocument;

   type IPrintDocumentFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IPrintDocumentFactory is access all IPrintDocumentFactory_Interface'Class;

   type IPrintDocumentStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPrintDocumentStatics is access all IPrintDocumentStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type AddPagesEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IAddPagesEventArgs : access Windows.UI.Xaml.Printing.IAddPagesEventArgs;
      end record;
   type AddPagesEventArgs_Ptr is access all AddPagesEventArgs;

   type GetPreviewPageEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IGetPreviewPageEventArgs : access Windows.UI.Xaml.Printing.IGetPreviewPageEventArgs;
      end record;
   type GetPreviewPageEventArgs_Ptr is access all GetPreviewPageEventArgs;

   type PaginateEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IPaginateEventArgs : access Windows.UI.Xaml.Printing.IPaginateEventArgs;
      end record;
   type PaginateEventArgs_Ptr is access all PaginateEventArgs;

   type PrintDocument is new Ada.Finalization.Limited_Controlled with
      record
         m_IPrintDocument : access Windows.UI.Xaml.Printing.IPrintDocument;
      end record;
   type PrintDocument_Ptr is access all PrintDocument;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type PreviewPageCountType is (
      Final_e,
      Intermediate_e
   );
   for PreviewPageCountType use (
      Final_e => 0,
      Intermediate_e => 1
   );
   type PreviewPageCountType_Ptr is access all PreviewPageCountType;

   -----------------------------------------------------------------------------
   -- Delegate declarations
   -----------------------------------------------------------------------------

   IID_AddPagesEventHandler : aliased WinRt.IID := (3568662896, 22432, 16905, (132, 124, 192, 147, 181, 75, 199, 41 ));
   type AddPagesEventHandler_Delegate (Callback : access procedure  (sender : WinRt.IInspectable;e : Windows.UI.Xaml.Printing.IAddPagesEventArgs)) is new WinRt.IMulticastDelegate_Interface (IID_AddPagesEventHandler'Access) with null record;
      function Invoke
      (
         this : access AddPagesEventHandler_Delegate;
         sender : WinRt.IInspectable;
         e : Windows.UI.Xaml.Printing.IAddPagesEventArgs
      )
      return WinRt.Hresult;

   IID_GetPreviewPageEventHandler : aliased WinRt.IID := (3434342893, 39953, 20048, (171, 73, 233, 128, 134, 187, 253, 239 ));
   type GetPreviewPageEventHandler_Delegate (Callback : access procedure  (sender : WinRt.IInspectable;e : Windows.UI.Xaml.Printing.IGetPreviewPageEventArgs)) is new WinRt.IMulticastDelegate_Interface (IID_GetPreviewPageEventHandler'Access) with null record;
      function Invoke
      (
         this : access GetPreviewPageEventHandler_Delegate;
         sender : WinRt.IInspectable;
         e : Windows.UI.Xaml.Printing.IGetPreviewPageEventArgs
      )
      return WinRt.Hresult;

   IID_PaginateEventHandler : aliased WinRt.IID := (213932897, 33051, 18994, (153, 101, 19, 235, 120, 219, 176, 27 ));
   type PaginateEventHandler_Delegate (Callback : access procedure  (sender : WinRt.IInspectable;e : Windows.UI.Xaml.Printing.IPaginateEventArgs)) is new WinRt.IMulticastDelegate_Interface (IID_PaginateEventHandler'Access) with null record;
      function Invoke
      (
         this : access PaginateEventHandler_Delegate;
         sender : WinRt.IInspectable;
         e : Windows.UI.Xaml.Printing.IPaginateEventArgs
      )
      return WinRt.Hresult;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IAddPagesEventArgs is interface and WinRt.IInspectable;

      function get_PrintTaskOptions
      (
         this : access IAddPagesEventArgs_Interface;
         RetVal : access Windows.Graphics.Printing.IPrintTaskOptionsCore
      )
      return WinRt.Hresult is abstract;

      IID_IAddPagesEventArgs : aliased WinRt.IID := (3806669797, 1388, 17440, (151, 149, 203, 53, 38, 206, 12, 32 ));

   -----------------------------------------------------------------------------
   -- type IGetPreviewPageEventArgs is interface and WinRt.IInspectable;

      function get_PageNumber
      (
         this : access IGetPreviewPageEventArgs_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      IID_IGetPreviewPageEventArgs : aliased WinRt.IID := (2755489853, 57001, 19958, (167, 237, 53, 4, 156, 212, 133, 199 ));

   -----------------------------------------------------------------------------
   -- type IPaginateEventArgs is interface and WinRt.IInspectable;

      function get_PrintTaskOptions
      (
         this : access IPaginateEventArgs_Interface;
         RetVal : access Windows.Graphics.Printing.IPrintTaskOptionsCore
      )
      return WinRt.Hresult is abstract;

      function get_CurrentPreviewPageNumber
      (
         this : access IPaginateEventArgs_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      IID_IPaginateEventArgs : aliased WinRt.IID := (3985924054, 31147, 17079, (147, 10, 61, 110, 9, 1, 29, 33 ));

   -----------------------------------------------------------------------------
   -- type IPrintDocument is interface and WinRt.IInspectable;

      function get_DocumentSource
      (
         this : access IPrintDocument_Interface;
         RetVal : access Windows.Graphics.Printing.IPrintDocumentSource
      )
      return WinRt.Hresult is abstract;

      function add_Paginate
      (
         this : access IPrintDocument_Interface;
         handler : Windows.UI.Xaml.Printing.PaginateEventHandler;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_Paginate
      (
         this : access IPrintDocument_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_GetPreviewPage
      (
         this : access IPrintDocument_Interface;
         handler : Windows.UI.Xaml.Printing.GetPreviewPageEventHandler;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_GetPreviewPage
      (
         this : access IPrintDocument_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_AddPages
      (
         this : access IPrintDocument_Interface;
         handler : Windows.UI.Xaml.Printing.AddPagesEventHandler;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_AddPages
      (
         this : access IPrintDocument_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function AddPage
      (
         this : access IPrintDocument_Interface;
         pageVisual : Windows.UI.Xaml.IUIElement
      )
      return WinRt.Hresult is abstract;

      function AddPagesComplete
      (
         this : access IPrintDocument_Interface
      )
      return WinRt.Hresult is abstract;

      function SetPreviewPageCount
      (
         this : access IPrintDocument_Interface;
         count : WinRt.Int32;
         type_x : Windows.UI.Xaml.Printing.PreviewPageCountType
      )
      return WinRt.Hresult is abstract;

      function SetPreviewPage
      (
         this : access IPrintDocument_Interface;
         pageNumber : WinRt.Int32;
         pageVisual : Windows.UI.Xaml.IUIElement
      )
      return WinRt.Hresult is abstract;

      function InvalidatePreview
      (
         this : access IPrintDocument_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IPrintDocument : aliased WinRt.IID := (3829606339, 43417, 18523, (177, 216, 114, 220, 81, 120, 33, 230 ));

   -----------------------------------------------------------------------------
   -- type IPrintDocumentFactory is interface and WinRt.IInspectable;

      function CreateInstance
      (
         this : access IPrintDocumentFactory_Interface;
         baseInterface : WinRt.IInspectable;
         innerInterface : access WinRt.IInspectable;
         RetVal : access Windows.UI.Xaml.Printing.IPrintDocument
      )
      return WinRt.Hresult is abstract;

      IID_IPrintDocumentFactory : aliased WinRt.IID := (4219974031, 9734, 18991, (153, 212, 167, 205, 188, 53, 215, 199 ));

   -----------------------------------------------------------------------------
   -- type IPrintDocumentStatics is interface and WinRt.IInspectable;

      function get_DocumentSourceProperty
      (
         this : access IPrintDocumentStatics_Interface;
         RetVal : access Windows.UI.Xaml.IDependencyProperty
      )
      return WinRt.Hresult is abstract;

      IID_IPrintDocumentStatics : aliased WinRt.IID := (4254534204, 45394, 18912, (166, 189, 106, 166, 71, 126, 67, 199 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AddPagesEventArgs

   overriding procedure Initialize (this : in out AddPagesEventArgs);
   overriding procedure Finalize (this : in out AddPagesEventArgs);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for AddPagesEventArgs

   function Constructor return AddPagesEventArgs;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AddPagesEventArgs

   function get_PrintTaskOptions
   (
      this : in out AddPagesEventArgs
   )
   return WinRt.Windows.Graphics.Printing.PrintTaskOptions'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GetPreviewPageEventArgs

   overriding procedure Initialize (this : in out GetPreviewPageEventArgs);
   overriding procedure Finalize (this : in out GetPreviewPageEventArgs);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for GetPreviewPageEventArgs

   function Constructor return GetPreviewPageEventArgs;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GetPreviewPageEventArgs

   function get_PageNumber
   (
      this : in out GetPreviewPageEventArgs
   )
   return WinRt.Int32;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PaginateEventArgs

   overriding procedure Initialize (this : in out PaginateEventArgs);
   overriding procedure Finalize (this : in out PaginateEventArgs);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PaginateEventArgs

   function Constructor return PaginateEventArgs;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PaginateEventArgs

   function get_PrintTaskOptions
   (
      this : in out PaginateEventArgs
   )
   return WinRt.Windows.Graphics.Printing.PrintTaskOptions'Class;

   function get_CurrentPreviewPageNumber
   (
      this : in out PaginateEventArgs
   )
   return WinRt.Int32;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PrintDocument

   overriding procedure Initialize (this : in out PrintDocument);
   overriding procedure Finalize (this : in out PrintDocument);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PrintDocument

   function Constructor
   (
      baseInterface : WinRt.IInspectable;
      innerInterface : access WinRt.IInspectable
   )
   return PrintDocument;

   -----------------------------------------------------------------------------
   -- Static Interfaces for PrintDocument

   function get_DocumentSourceProperty
   return WinRt.Windows.UI.Xaml.DependencyProperty;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PrintDocument

   function get_DocumentSource
   (
      this : in out PrintDocument
   )
   return WinRt.Windows.Graphics.Printing.IPrintDocumentSource;

   function add_Paginate
   (
      this : in out PrintDocument;
      handler : Windows.UI.Xaml.Printing.PaginateEventHandler
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_Paginate
   (
      this : in out PrintDocument;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_GetPreviewPage
   (
      this : in out PrintDocument;
      handler : Windows.UI.Xaml.Printing.GetPreviewPageEventHandler
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_GetPreviewPage
   (
      this : in out PrintDocument;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_AddPages
   (
      this : in out PrintDocument;
      handler : Windows.UI.Xaml.Printing.AddPagesEventHandler
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_AddPages
   (
      this : in out PrintDocument;
      token : Windows.Foundation.EventRegistrationToken
   );

   procedure AddPage
   (
      this : in out PrintDocument;
      pageVisual : Windows.UI.Xaml.UIElement'Class
   );

   procedure AddPagesComplete
   (
      this : in out PrintDocument
   );

   procedure SetPreviewPageCount
   (
      this : in out PrintDocument;
      count : WinRt.Int32;
      type_x : Windows.UI.Xaml.Printing.PreviewPageCountType
   );

   procedure SetPreviewPage
   (
      this : in out PrintDocument;
      pageNumber : WinRt.Int32;
      pageVisual : Windows.UI.Xaml.UIElement'Class
   );

   procedure InvalidatePreview
   (
      this : in out PrintDocument
   );

end;