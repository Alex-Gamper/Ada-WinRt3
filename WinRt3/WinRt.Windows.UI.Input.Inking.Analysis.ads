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
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.UI.Input.Inking.Analysis is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IInkAnalysisInkBullet_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisInkBullet is access all IInkAnalysisInkBullet_Interface'Class;
   type IInkAnalysisInkBullet_Ptr is access all IInkAnalysisInkBullet;

   type IInkAnalysisInkDrawing_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisInkDrawing is access all IInkAnalysisInkDrawing_Interface'Class;
   type IInkAnalysisInkDrawing_Ptr is access all IInkAnalysisInkDrawing;

   type IInkAnalysisInkWord_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisInkWord is access all IInkAnalysisInkWord_Interface'Class;
   type IInkAnalysisInkWord_Ptr is access all IInkAnalysisInkWord;

   type IInkAnalysisLine_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisLine is access all IInkAnalysisLine_Interface'Class;
   type IInkAnalysisLine_Ptr is access all IInkAnalysisLine;

   type IInkAnalysisListItem_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisListItem is access all IInkAnalysisListItem_Interface'Class;
   type IInkAnalysisListItem_Ptr is access all IInkAnalysisListItem;

   type IInkAnalysisNode_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisNode is access all IInkAnalysisNode_Interface'Class;
   type IInkAnalysisNode_Ptr is access all IInkAnalysisNode;

   type IInkAnalysisParagraph_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisParagraph is access all IInkAnalysisParagraph_Interface'Class;
   type IInkAnalysisParagraph_Ptr is access all IInkAnalysisParagraph;

   type IInkAnalysisResult_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisResult is access all IInkAnalysisResult_Interface'Class;
   type IInkAnalysisResult_Ptr is access all IInkAnalysisResult;

   type IInkAnalysisRoot_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisRoot is access all IInkAnalysisRoot_Interface'Class;
   type IInkAnalysisRoot_Ptr is access all IInkAnalysisRoot;

   type IInkAnalysisWritingRegion_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalysisWritingRegion is access all IInkAnalysisWritingRegion_Interface'Class;
   type IInkAnalysisWritingRegion_Ptr is access all IInkAnalysisWritingRegion;

   type IInkAnalyzer_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalyzer is access all IInkAnalyzer_Interface'Class;
   type IInkAnalyzer_Ptr is access all IInkAnalyzer;

   type IInkAnalyzerFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IInkAnalyzerFactory is access all IInkAnalyzerFactory_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type InkAnalysisInkBullet is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisInkBullet : access Windows.UI.Input.Inking.Analysis.IInkAnalysisInkBullet;
      end record;
   type InkAnalysisInkBullet_Ptr is access all InkAnalysisInkBullet;

   type InkAnalysisInkDrawing is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisInkDrawing : access Windows.UI.Input.Inking.Analysis.IInkAnalysisInkDrawing;
      end record;
   type InkAnalysisInkDrawing_Ptr is access all InkAnalysisInkDrawing;

   type InkAnalysisInkWord is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisInkWord : access Windows.UI.Input.Inking.Analysis.IInkAnalysisInkWord;
      end record;
   type InkAnalysisInkWord_Ptr is access all InkAnalysisInkWord;

   type InkAnalysisLine is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisLine : access Windows.UI.Input.Inking.Analysis.IInkAnalysisLine;
      end record;
   type InkAnalysisLine_Ptr is access all InkAnalysisLine;

   type InkAnalysisListItem is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisListItem : access Windows.UI.Input.Inking.Analysis.IInkAnalysisListItem;
      end record;
   type InkAnalysisListItem_Ptr is access all InkAnalysisListItem;

   type InkAnalysisNode is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisNode : access Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;
      end record;
   type InkAnalysisNode_Ptr is access all InkAnalysisNode;

   type InkAnalysisParagraph is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisParagraph : access Windows.UI.Input.Inking.Analysis.IInkAnalysisParagraph;
      end record;
   type InkAnalysisParagraph_Ptr is access all InkAnalysisParagraph;

   type InkAnalysisResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisResult : access Windows.UI.Input.Inking.Analysis.IInkAnalysisResult;
      end record;
   type InkAnalysisResult_Ptr is access all InkAnalysisResult;

   type InkAnalysisRoot is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisRoot : access Windows.UI.Input.Inking.Analysis.IInkAnalysisRoot;
      end record;
   type InkAnalysisRoot_Ptr is access all InkAnalysisRoot;

   type InkAnalysisWritingRegion is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalysisWritingRegion : access Windows.UI.Input.Inking.Analysis.IInkAnalysisWritingRegion;
      end record;
   type InkAnalysisWritingRegion_Ptr is access all InkAnalysisWritingRegion;

   type InkAnalyzer is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkAnalyzer : access Windows.UI.Input.Inking.Analysis.IInkAnalyzer;
      end record;
   type InkAnalyzer_Ptr is access all InkAnalyzer;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type InkAnalysisDrawingKind is (
      Drawing_e,
      Circle_e,
      Ellipse_e,
      Triangle_e,
      IsoscelesTriangle_e,
      EquilateralTriangle_e,
      RightTriangle_e,
      Quadrilateral_e,
      Rectangle_e,
      Square_e,
      Diamond_e,
      Trapezoid_e,
      Parallelogram_e,
      Pentagon_e,
      Hexagon_e
   );
   for InkAnalysisDrawingKind use (
      Drawing_e => 0,
      Circle_e => 1,
      Ellipse_e => 2,
      Triangle_e => 3,
      IsoscelesTriangle_e => 4,
      EquilateralTriangle_e => 5,
      RightTriangle_e => 6,
      Quadrilateral_e => 7,
      Rectangle_e => 8,
      Square_e => 9,
      Diamond_e => 10,
      Trapezoid_e => 11,
      Parallelogram_e => 12,
      Pentagon_e => 13,
      Hexagon_e => 14
   );
   type InkAnalysisDrawingKind_Ptr is access all InkAnalysisDrawingKind;

   type InkAnalysisNodeKind is (
      UnclassifiedInk_e,
      Root_e,
      WritingRegion_e,
      Paragraph_e,
      Line_e,
      InkWord_e,
      InkBullet_e,
      InkDrawing_e,
      ListItem_e
   );
   for InkAnalysisNodeKind use (
      UnclassifiedInk_e => 0,
      Root_e => 1,
      WritingRegion_e => 2,
      Paragraph_e => 3,
      Line_e => 4,
      InkWord_e => 5,
      InkBullet_e => 6,
      InkDrawing_e => 7,
      ListItem_e => 8
   );
   type InkAnalysisNodeKind_Ptr is access all InkAnalysisNodeKind;

   type InkAnalysisStatus is (
      Updated_e,
      Unchanged_e
   );
   for InkAnalysisStatus use (
      Updated_e => 0,
      Unchanged_e => 1
   );
   type InkAnalysisStatus_Ptr is access all InkAnalysisStatus;

   type InkAnalysisStrokeKind is (
      Auto_e,
      Writing_e,
      Drawing_e
   );
   for InkAnalysisStrokeKind use (
      Auto_e => 0,
      Writing_e => 1,
      Drawing_e => 2
   );
   type InkAnalysisStrokeKind_Ptr is access all InkAnalysisStrokeKind;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_Point is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.Foundation.Point);
   IID_IVectorView_Point : aliased WinRt.IID := (3968031459, 27708, 22487, (142, 177, 194, 230, 161, 10, 168, 114 ));
   function QInterface_IVectorView_Point is new Generic_QueryInterface (GenericObject_Interface, IVectorView_Point.Kind, IID_IVectorView_Point'Access);

   package IVectorView_IInkAnalysisNode is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode);
   IID_IVectorView_IInkAnalysisNode : aliased WinRt.IID := (3968031459, 27708, 22487, (142, 177, 194, 230, 161, 10, 168, 114 ));
   function QInterface_IVectorView_IInkAnalysisNode is new Generic_QueryInterface (GenericObject_Interface, IVectorView_IInkAnalysisNode.Kind, IID_IVectorView_IInkAnalysisNode'Access);

   package IVectorView_UInt32 is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.UInt32);
   IID_IVectorView_UInt32 : aliased WinRt.IID := (3968031459, 27708, 22487, (142, 177, 194, 230, 161, 10, 168, 114 ));
   function QInterface_IVectorView_UInt32 is new Generic_QueryInterface (GenericObject_Interface, IVectorView_UInt32.Kind, IID_IVectorView_UInt32'Access);

   package IVectorView_HString is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.HString);
   IID_IVectorView_HString : aliased WinRt.IID := (2667110209, 3986, 20570, (168, 109, 101, 204, 215, 219, 54, 71 ));
   function QInterface_IVectorView_HString is new Generic_QueryInterface (GenericObject_Interface, IVectorView_HString.Kind, IID_IVectorView_HString'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IInkAnalysisInkBullet is interface and WinRt.IInspectable;

      function get_RecognizedText
      (
         this : access IInkAnalysisInkBullet_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisInkBullet : aliased WinRt.IID := (3993277288, 24848, 16694, (149, 249, 238, 128, 159, 194, 0, 48 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalysisInkDrawing is interface and WinRt.IInspectable;

      function get_DrawingKind
      (
         this : access IInkAnalysisInkDrawing_Interface;
         RetVal : access Windows.UI.Input.Inking.Analysis.InkAnalysisDrawingKind
      )
      return WinRt.Hresult is abstract;

      function get_Center
      (
         this : access IInkAnalysisInkDrawing_Interface;
         RetVal : access Windows.Foundation.Point
      )
      return WinRt.Hresult is abstract;

      function get_Points
      (
         this : access IInkAnalysisInkDrawing_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisInkDrawing : aliased WinRt.IID := (1787161887, 8164, 19989, (137, 140, 142, 17, 35, 119, 224, 33 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalysisInkWord is interface and WinRt.IInspectable;

      function get_RecognizedText
      (
         this : access IInkAnalysisInkWord_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_TextAlternates
      (
         this : access IInkAnalysisInkWord_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisInkWord : aliased WinRt.IID := (1272064173, 33711, 16436, (143, 59, 248, 104, 125, 255, 244, 54 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalysisLine is interface and WinRt.IInspectable;

      function get_RecognizedText
      (
         this : access IInkAnalysisLine_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_IndentLevel
      (
         this : access IInkAnalysisLine_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisLine : aliased WinRt.IID := (2691499149, 11149, 18260, (173, 90, 208, 135, 17, 147, 169, 86 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalysisListItem is interface and WinRt.IInspectable;

      function get_RecognizedText
      (
         this : access IInkAnalysisListItem_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisListItem : aliased WinRt.IID := (3034825279, 50371, 19514, (161, 166, 157, 133, 84, 126, 229, 134 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalysisNode is interface and WinRt.IInspectable;

      function get_Id
      (
         this : access IInkAnalysisNode_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_Kind
      (
         this : access IInkAnalysisNode_Interface;
         RetVal : access Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind
      )
      return WinRt.Hresult is abstract;

      function get_BoundingRect
      (
         this : access IInkAnalysisNode_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function get_RotatedBoundingRect
      (
         this : access IInkAnalysisNode_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Children
      (
         this : access IInkAnalysisNode_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Parent
      (
         this : access IInkAnalysisNode_Interface;
         RetVal : access Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
      )
      return WinRt.Hresult is abstract;

      function GetStrokeIds
      (
         this : access IInkAnalysisNode_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisNode : aliased WinRt.IID := (813899525, 24420, 18988, (186, 55, 79, 72, 135, 135, 149, 116 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalysisParagraph is interface and WinRt.IInspectable;

      function get_RecognizedText
      (
         this : access IInkAnalysisParagraph_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisParagraph : aliased WinRt.IID := (3651994716, 3281, 19924, (166, 139, 235, 31, 18, 179, 215, 39 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalysisResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IInkAnalysisResult_Interface;
         RetVal : access Windows.UI.Input.Inking.Analysis.InkAnalysisStatus
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisResult : aliased WinRt.IID := (2303244921, 41539, 19107, (162, 148, 31, 152, 189, 15, 245, 128 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalysisRoot is interface and WinRt.IInspectable;

      function get_RecognizedText
      (
         this : access IInkAnalysisRoot_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FindNodes
      (
         this : access IInkAnalysisRoot_Interface;
         nodeKind : Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisRoot : aliased WinRt.IID := (1068934084, 12254, 16481, (133, 2, 169, 15, 50, 84, 91, 132 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalysisWritingRegion is interface and WinRt.IInspectable;

      function get_RecognizedText
      (
         this : access IInkAnalysisWritingRegion_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalysisWritingRegion : aliased WinRt.IID := (3714933297, 48406, 18019, (181, 174, 148, 29, 48, 67, 239, 91 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalyzer is interface and WinRt.IInspectable;

      function get_AnalysisRoot
      (
         this : access IInkAnalyzer_Interface;
         RetVal : access Windows.UI.Input.Inking.Analysis.IInkAnalysisRoot
      )
      return WinRt.Hresult is abstract;

      function get_IsAnalyzing
      (
         this : access IInkAnalyzer_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function AddDataForStroke
      (
         this : access IInkAnalyzer_Interface;
         stroke : Windows.UI.Input.Inking.IInkStroke
      )
      return WinRt.Hresult is abstract;

      function AddDataForStrokes
      (
         this : access IInkAnalyzer_Interface;
         strokes : GenericObject
      )
      return WinRt.Hresult is abstract;

      function ClearDataForAllStrokes
      (
         this : access IInkAnalyzer_Interface
      )
      return WinRt.Hresult is abstract;

      function RemoveDataForStroke
      (
         this : access IInkAnalyzer_Interface;
         strokeId : WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function RemoveDataForStrokes
      (
         this : access IInkAnalyzer_Interface;
         strokeIds : GenericObject
      )
      return WinRt.Hresult is abstract;

      function ReplaceDataForStroke
      (
         this : access IInkAnalyzer_Interface;
         stroke : Windows.UI.Input.Inking.IInkStroke
      )
      return WinRt.Hresult is abstract;

      function SetStrokeDataKind
      (
         this : access IInkAnalyzer_Interface;
         strokeId : WinRt.UInt32;
         strokeKind : Windows.UI.Input.Inking.Analysis.InkAnalysisStrokeKind
      )
      return WinRt.Hresult is abstract;

      function AnalyzeAsync
      (
         this : access IInkAnalyzer_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalyzer : aliased WinRt.IID := (4046163861, 2150, 19909, (140, 119, 248, 134, 20, 223, 227, 140 ));

   -----------------------------------------------------------------------------
   -- type IInkAnalyzerFactory is interface and WinRt.IInspectable;

      function CreateAnalyzer
      (
         this : access IInkAnalyzerFactory_Interface;
         RetVal : access Windows.UI.Input.Inking.Analysis.IInkAnalyzer
      )
      return WinRt.Hresult is abstract;

      IID_IInkAnalyzerFactory : aliased WinRt.IID := (689145478, 6499, 18904, (149, 137, 225, 67, 132, 199, 105, 227 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisInkBullet

   overriding procedure Initialize (this : in out InkAnalysisInkBullet);
   overriding procedure Finalize (this : in out InkAnalysisInkBullet);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisInkBullet

   function get_RecognizedText
   (
      this : in out InkAnalysisInkBullet
   )
   return WinRt.WString;

   function get_Id
   (
      this : in out InkAnalysisInkBullet
   )
   return WinRt.UInt32;

   function get_Kind
   (
      this : in out InkAnalysisInkBullet
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;

   function get_BoundingRect
   (
      this : in out InkAnalysisInkBullet
   )
   return WinRt.Windows.Foundation.Rect;

   function get_RotatedBoundingRect
   (
      this : in out InkAnalysisInkBullet
   )
   return IVectorView_Point.Kind;

   function get_Children
   (
      this : in out InkAnalysisInkBullet
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Parent
   (
      this : in out InkAnalysisInkBullet
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;

   function GetStrokeIds
   (
      this : in out InkAnalysisInkBullet
   )
   return IVectorView_UInt32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisInkDrawing

   overriding procedure Initialize (this : in out InkAnalysisInkDrawing);
   overriding procedure Finalize (this : in out InkAnalysisInkDrawing);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisInkDrawing

   function get_DrawingKind
   (
      this : in out InkAnalysisInkDrawing
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisDrawingKind;

   function get_Center
   (
      this : in out InkAnalysisInkDrawing
   )
   return WinRt.Windows.Foundation.Point;

   function get_Points
   (
      this : in out InkAnalysisInkDrawing
   )
   return IVectorView_Point.Kind;

   function get_Id
   (
      this : in out InkAnalysisInkDrawing
   )
   return WinRt.UInt32;

   function get_Kind
   (
      this : in out InkAnalysisInkDrawing
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;

   function get_BoundingRect
   (
      this : in out InkAnalysisInkDrawing
   )
   return WinRt.Windows.Foundation.Rect;

   function get_RotatedBoundingRect
   (
      this : in out InkAnalysisInkDrawing
   )
   return IVectorView_Point.Kind;

   function get_Children
   (
      this : in out InkAnalysisInkDrawing
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Parent
   (
      this : in out InkAnalysisInkDrawing
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;

   function GetStrokeIds
   (
      this : in out InkAnalysisInkDrawing
   )
   return IVectorView_UInt32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisInkWord

   overriding procedure Initialize (this : in out InkAnalysisInkWord);
   overriding procedure Finalize (this : in out InkAnalysisInkWord);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisInkWord

   function get_RecognizedText
   (
      this : in out InkAnalysisInkWord
   )
   return WinRt.WString;

   function get_TextAlternates
   (
      this : in out InkAnalysisInkWord
   )
   return IVectorView_HString.Kind;

   function get_Id
   (
      this : in out InkAnalysisInkWord
   )
   return WinRt.UInt32;

   function get_Kind
   (
      this : in out InkAnalysisInkWord
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;

   function get_BoundingRect
   (
      this : in out InkAnalysisInkWord
   )
   return WinRt.Windows.Foundation.Rect;

   function get_RotatedBoundingRect
   (
      this : in out InkAnalysisInkWord
   )
   return IVectorView_Point.Kind;

   function get_Children
   (
      this : in out InkAnalysisInkWord
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Parent
   (
      this : in out InkAnalysisInkWord
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;

   function GetStrokeIds
   (
      this : in out InkAnalysisInkWord
   )
   return IVectorView_UInt32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisLine

   overriding procedure Initialize (this : in out InkAnalysisLine);
   overriding procedure Finalize (this : in out InkAnalysisLine);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisLine

   function get_RecognizedText
   (
      this : in out InkAnalysisLine
   )
   return WinRt.WString;

   function get_IndentLevel
   (
      this : in out InkAnalysisLine
   )
   return WinRt.Int32;

   function get_Id
   (
      this : in out InkAnalysisLine
   )
   return WinRt.UInt32;

   function get_Kind
   (
      this : in out InkAnalysisLine
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;

   function get_BoundingRect
   (
      this : in out InkAnalysisLine
   )
   return WinRt.Windows.Foundation.Rect;

   function get_RotatedBoundingRect
   (
      this : in out InkAnalysisLine
   )
   return IVectorView_Point.Kind;

   function get_Children
   (
      this : in out InkAnalysisLine
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Parent
   (
      this : in out InkAnalysisLine
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;

   function GetStrokeIds
   (
      this : in out InkAnalysisLine
   )
   return IVectorView_UInt32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisListItem

   overriding procedure Initialize (this : in out InkAnalysisListItem);
   overriding procedure Finalize (this : in out InkAnalysisListItem);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisListItem

   function get_RecognizedText
   (
      this : in out InkAnalysisListItem
   )
   return WinRt.WString;

   function get_Id
   (
      this : in out InkAnalysisListItem
   )
   return WinRt.UInt32;

   function get_Kind
   (
      this : in out InkAnalysisListItem
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;

   function get_BoundingRect
   (
      this : in out InkAnalysisListItem
   )
   return WinRt.Windows.Foundation.Rect;

   function get_RotatedBoundingRect
   (
      this : in out InkAnalysisListItem
   )
   return IVectorView_Point.Kind;

   function get_Children
   (
      this : in out InkAnalysisListItem
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Parent
   (
      this : in out InkAnalysisListItem
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;

   function GetStrokeIds
   (
      this : in out InkAnalysisListItem
   )
   return IVectorView_UInt32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisNode

   overriding procedure Initialize (this : in out InkAnalysisNode);
   overriding procedure Finalize (this : in out InkAnalysisNode);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisNode

   function get_Id
   (
      this : in out InkAnalysisNode
   )
   return WinRt.UInt32;

   function get_Kind
   (
      this : in out InkAnalysisNode
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;

   function get_BoundingRect
   (
      this : in out InkAnalysisNode
   )
   return WinRt.Windows.Foundation.Rect;

   function get_RotatedBoundingRect
   (
      this : in out InkAnalysisNode
   )
   return IVectorView_Point.Kind;

   function get_Children
   (
      this : in out InkAnalysisNode
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Parent
   (
      this : in out InkAnalysisNode
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;

   function GetStrokeIds
   (
      this : in out InkAnalysisNode
   )
   return IVectorView_UInt32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisParagraph

   overriding procedure Initialize (this : in out InkAnalysisParagraph);
   overriding procedure Finalize (this : in out InkAnalysisParagraph);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisParagraph

   function get_RecognizedText
   (
      this : in out InkAnalysisParagraph
   )
   return WinRt.WString;

   function get_Id
   (
      this : in out InkAnalysisParagraph
   )
   return WinRt.UInt32;

   function get_Kind
   (
      this : in out InkAnalysisParagraph
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;

   function get_BoundingRect
   (
      this : in out InkAnalysisParagraph
   )
   return WinRt.Windows.Foundation.Rect;

   function get_RotatedBoundingRect
   (
      this : in out InkAnalysisParagraph
   )
   return IVectorView_Point.Kind;

   function get_Children
   (
      this : in out InkAnalysisParagraph
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Parent
   (
      this : in out InkAnalysisParagraph
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;

   function GetStrokeIds
   (
      this : in out InkAnalysisParagraph
   )
   return IVectorView_UInt32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisResult

   overriding procedure Initialize (this : in out InkAnalysisResult);
   overriding procedure Finalize (this : in out InkAnalysisResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisResult

   function get_Status
   (
      this : in out InkAnalysisResult
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisStatus;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisRoot

   overriding procedure Initialize (this : in out InkAnalysisRoot);
   overriding procedure Finalize (this : in out InkAnalysisRoot);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisRoot

   function get_RecognizedText
   (
      this : in out InkAnalysisRoot
   )
   return WinRt.WString;

   function FindNodes
   (
      this : in out InkAnalysisRoot;
      nodeKind : Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Id
   (
      this : in out InkAnalysisRoot
   )
   return WinRt.UInt32;

   function get_Kind
   (
      this : in out InkAnalysisRoot
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;

   function get_BoundingRect
   (
      this : in out InkAnalysisRoot
   )
   return WinRt.Windows.Foundation.Rect;

   function get_RotatedBoundingRect
   (
      this : in out InkAnalysisRoot
   )
   return IVectorView_Point.Kind;

   function get_Children
   (
      this : in out InkAnalysisRoot
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Parent
   (
      this : in out InkAnalysisRoot
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;

   function GetStrokeIds
   (
      this : in out InkAnalysisRoot
   )
   return IVectorView_UInt32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalysisWritingRegion

   overriding procedure Initialize (this : in out InkAnalysisWritingRegion);
   overriding procedure Finalize (this : in out InkAnalysisWritingRegion);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalysisWritingRegion

   function get_RecognizedText
   (
      this : in out InkAnalysisWritingRegion
   )
   return WinRt.WString;

   function get_Id
   (
      this : in out InkAnalysisWritingRegion
   )
   return WinRt.UInt32;

   function get_Kind
   (
      this : in out InkAnalysisWritingRegion
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind;

   function get_BoundingRect
   (
      this : in out InkAnalysisWritingRegion
   )
   return WinRt.Windows.Foundation.Rect;

   function get_RotatedBoundingRect
   (
      this : in out InkAnalysisWritingRegion
   )
   return IVectorView_Point.Kind;

   function get_Children
   (
      this : in out InkAnalysisWritingRegion
   )
   return IVectorView_IInkAnalysisNode.Kind;

   function get_Parent
   (
      this : in out InkAnalysisWritingRegion
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.IInkAnalysisNode;

   function GetStrokeIds
   (
      this : in out InkAnalysisWritingRegion
   )
   return IVectorView_UInt32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkAnalyzer

   overriding procedure Initialize (this : in out InkAnalyzer);
   overriding procedure Finalize (this : in out InkAnalyzer);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for InkAnalyzer

   function Constructor return InkAnalyzer;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkAnalyzer

   function get_AnalysisRoot
   (
      this : in out InkAnalyzer
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisRoot'Class;

   function get_IsAnalyzing
   (
      this : in out InkAnalyzer
   )
   return WinRt.Boolean;

   procedure AddDataForStroke
   (
      this : in out InkAnalyzer;
      stroke : Windows.UI.Input.Inking.InkStroke'Class
   );

   procedure AddDataForStrokes
   (
      this : in out InkAnalyzer;
      strokes : GenericObject
   );

   procedure ClearDataForAllStrokes
   (
      this : in out InkAnalyzer
   );

   procedure RemoveDataForStroke
   (
      this : in out InkAnalyzer;
      strokeId : WinRt.UInt32
   );

   procedure RemoveDataForStrokes
   (
      this : in out InkAnalyzer;
      strokeIds : GenericObject
   );

   procedure ReplaceDataForStroke
   (
      this : in out InkAnalyzer;
      stroke : Windows.UI.Input.Inking.InkStroke'Class
   );

   procedure SetStrokeDataKind
   (
      this : in out InkAnalyzer;
      strokeId : WinRt.UInt32;
      strokeKind : Windows.UI.Input.Inking.Analysis.InkAnalysisStrokeKind
   );

   function AnalyzeAsync
   (
      this : in out InkAnalyzer
   )
   return WinRt.Windows.UI.Input.Inking.Analysis.InkAnalysisResult'Class;

end;
