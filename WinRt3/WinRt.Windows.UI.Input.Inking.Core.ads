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
with WinRt.Windows.Foundation.Numerics;
limited with WinRt.Windows.UI.Composition;
limited with WinRt.Windows.UI.Core;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.UI.Input.Inking.Core is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ICoreIncrementalInkStroke_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreIncrementalInkStroke is access all ICoreIncrementalInkStroke_Interface'Class;
   type ICoreIncrementalInkStroke_Ptr is access all ICoreIncrementalInkStroke;

   type ICoreIncrementalInkStrokeFactory_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreIncrementalInkStrokeFactory is access all ICoreIncrementalInkStrokeFactory_Interface'Class;

   type ICoreInkIndependentInputSource_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInkIndependentInputSource is access all ICoreInkIndependentInputSource_Interface'Class;
   type ICoreInkIndependentInputSource_Ptr is access all ICoreInkIndependentInputSource;

   type ICoreInkIndependentInputSourceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInkIndependentInputSourceStatics is access all ICoreInkIndependentInputSourceStatics_Interface'Class;

   type ICoreInkPresenterHost_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreInkPresenterHost is access all ICoreInkPresenterHost_Interface'Class;
   type ICoreInkPresenterHost_Ptr is access all ICoreInkPresenterHost;

   type ICoreWetStrokeUpdateEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreWetStrokeUpdateEventArgs is access all ICoreWetStrokeUpdateEventArgs_Interface'Class;
   type ICoreWetStrokeUpdateEventArgs_Ptr is access all ICoreWetStrokeUpdateEventArgs;

   type ICoreWetStrokeUpdateSource_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreWetStrokeUpdateSource is access all ICoreWetStrokeUpdateSource_Interface'Class;
   type ICoreWetStrokeUpdateSource_Ptr is access all ICoreWetStrokeUpdateSource;

   type ICoreWetStrokeUpdateSourceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ICoreWetStrokeUpdateSourceStatics is access all ICoreWetStrokeUpdateSourceStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type CoreIncrementalInkStroke is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreIncrementalInkStroke : access Windows.UI.Input.Inking.Core.ICoreIncrementalInkStroke;
      end record;
   type CoreIncrementalInkStroke_Ptr is access all CoreIncrementalInkStroke;

   type CoreInkIndependentInputSource is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreInkIndependentInputSource : access Windows.UI.Input.Inking.Core.ICoreInkIndependentInputSource;
      end record;
   type CoreInkIndependentInputSource_Ptr is access all CoreInkIndependentInputSource;

   type CoreInkPresenterHost is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreInkPresenterHost : access Windows.UI.Input.Inking.Core.ICoreInkPresenterHost;
      end record;
   type CoreInkPresenterHost_Ptr is access all CoreInkPresenterHost;

   type CoreWetStrokeUpdateEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreWetStrokeUpdateEventArgs : access Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateEventArgs;
      end record;
   type CoreWetStrokeUpdateEventArgs_Ptr is access all CoreWetStrokeUpdateEventArgs;

   type CoreWetStrokeUpdateSource is new Ada.Finalization.Limited_Controlled with
      record
         m_ICoreWetStrokeUpdateSource : access Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateSource;
      end record;
   type CoreWetStrokeUpdateSource_Ptr is access all CoreWetStrokeUpdateSource;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type CoreWetStrokeDisposition is (
      Inking_e,
      Completed_e,
      Canceled_e
   );
   for CoreWetStrokeDisposition use (
      Inking_e => 0,
      Completed_e => 1,
      Canceled_e => 2
   );
   type CoreWetStrokeDisposition_Ptr is access all CoreWetStrokeDisposition;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVector_IInkPoint is new WinRt.Windows.Foundation.Collections.IVector (WinRt.Windows.UI.Input.Inking.IInkPoint);
   IID_IVector_IInkPoint : aliased WinRt.IID := (392482203, 61951, 23839, (173, 92, 97, 193, 168, 200, 128, 180 ));
   function QInterface_IVector_IInkPoint is new Generic_QueryInterface (GenericObject_Interface, IVector_IInkPoint.Kind, IID_IVector_IInkPoint'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ICoreIncrementalInkStroke is interface and WinRt.IInspectable;

      function AppendInkPoints
      (
         this : access ICoreIncrementalInkStroke_Interface;
         inkPoints : GenericObject;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function CreateInkStroke
      (
         this : access ICoreIncrementalInkStroke_Interface;
         RetVal : access Windows.UI.Input.Inking.IInkStroke
      )
      return WinRt.Hresult is abstract;

      function get_DrawingAttributes
      (
         this : access ICoreIncrementalInkStroke_Interface;
         RetVal : access Windows.UI.Input.Inking.IInkDrawingAttributes
      )
      return WinRt.Hresult is abstract;

      function get_PointTransform
      (
         this : access ICoreIncrementalInkStroke_Interface;
         RetVal : access Windows.Foundation.Numerics.Matrix3x2
      )
      return WinRt.Hresult is abstract;

      function get_BoundingRect
      (
         this : access ICoreIncrementalInkStroke_Interface;
         RetVal : access Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      IID_ICoreIncrementalInkStroke : aliased WinRt.IID := (4255126995, 40294, 20349, (165, 127, 204, 112, 185, 207, 170, 118 ));

   -----------------------------------------------------------------------------
   -- type ICoreIncrementalInkStrokeFactory is interface and WinRt.IInspectable;

      function Create
      (
         this : access ICoreIncrementalInkStrokeFactory_Interface;
         drawingAttributes : Windows.UI.Input.Inking.IInkDrawingAttributes;
         pointTransform : Windows.Foundation.Numerics.Matrix3x2;
         RetVal : access Windows.UI.Input.Inking.Core.ICoreIncrementalInkStroke
      )
      return WinRt.Hresult is abstract;

      IID_ICoreIncrementalInkStrokeFactory : aliased WinRt.IID := (3620052806, 36264, 20336, (151, 81, 229, 59, 182, 223, 69, 150 ));

   -----------------------------------------------------------------------------
   -- type ICoreInkIndependentInputSource is interface and WinRt.IInspectable;

      function add_PointerEntering
      (
         this : access ICoreInkIndependentInputSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PointerEntering
      (
         this : access ICoreInkIndependentInputSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_PointerHovering
      (
         this : access ICoreInkIndependentInputSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PointerHovering
      (
         this : access ICoreInkIndependentInputSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_PointerExiting
      (
         this : access ICoreInkIndependentInputSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PointerExiting
      (
         this : access ICoreInkIndependentInputSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_PointerPressing
      (
         this : access ICoreInkIndependentInputSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PointerPressing
      (
         this : access ICoreInkIndependentInputSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_PointerMoving
      (
         this : access ICoreInkIndependentInputSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PointerMoving
      (
         this : access ICoreInkIndependentInputSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_PointerReleasing
      (
         this : access ICoreInkIndependentInputSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PointerReleasing
      (
         this : access ICoreInkIndependentInputSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_PointerLost
      (
         this : access ICoreInkIndependentInputSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PointerLost
      (
         this : access ICoreInkIndependentInputSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_InkPresenter
      (
         this : access ICoreInkIndependentInputSource_Interface;
         RetVal : access Windows.UI.Input.Inking.IInkPresenter
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInkIndependentInputSource : aliased WinRt.IID := (968068521, 30265, 17561, (165, 181, 25, 29, 0, 227, 91, 22 ));

   -----------------------------------------------------------------------------
   -- type ICoreInkIndependentInputSourceStatics is interface and WinRt.IInspectable;

      function Create
      (
         this : access ICoreInkIndependentInputSourceStatics_Interface;
         inkPresenter : Windows.UI.Input.Inking.IInkPresenter;
         RetVal : access Windows.UI.Input.Inking.Core.ICoreInkIndependentInputSource
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInkIndependentInputSourceStatics : aliased WinRt.IID := (1944453403, 32960, 19963, (155, 102, 16, 186, 127, 63, 156, 132 ));

   -----------------------------------------------------------------------------
   -- type ICoreInkPresenterHost is interface and WinRt.IInspectable;

      function get_InkPresenter
      (
         this : access ICoreInkPresenterHost_Interface;
         RetVal : access Windows.UI.Input.Inking.IInkPresenter
      )
      return WinRt.Hresult is abstract;

      function get_RootVisual
      (
         this : access ICoreInkPresenterHost_Interface;
         RetVal : access Windows.UI.Composition.IContainerVisual
      )
      return WinRt.Hresult is abstract;

      function put_RootVisual
      (
         this : access ICoreInkPresenterHost_Interface;
         value : Windows.UI.Composition.IContainerVisual
      )
      return WinRt.Hresult is abstract;

      IID_ICoreInkPresenterHost : aliased WinRt.IID := (963545574, 32085, 17943, (158, 88, 104, 199, 12, 145, 105, 185 ));

   -----------------------------------------------------------------------------
   -- type ICoreWetStrokeUpdateEventArgs is interface and WinRt.IInspectable;

      function get_NewInkPoints
      (
         this : access ICoreWetStrokeUpdateEventArgs_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_PointerId
      (
         this : access ICoreWetStrokeUpdateEventArgs_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_Disposition
      (
         this : access ICoreWetStrokeUpdateEventArgs_Interface;
         RetVal : access Windows.UI.Input.Inking.Core.CoreWetStrokeDisposition
      )
      return WinRt.Hresult is abstract;

      function put_Disposition
      (
         this : access ICoreWetStrokeUpdateEventArgs_Interface;
         value : Windows.UI.Input.Inking.Core.CoreWetStrokeDisposition
      )
      return WinRt.Hresult is abstract;

      IID_ICoreWetStrokeUpdateEventArgs : aliased WinRt.IID := (4211593548, 13184, 17786, (169, 135, 153, 19, 87, 137, 108, 27 ));

   -----------------------------------------------------------------------------
   -- type ICoreWetStrokeUpdateSource is interface and WinRt.IInspectable;

      function add_WetStrokeStarting
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_WetStrokeStarting
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_WetStrokeContinuing
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_WetStrokeContinuing
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_WetStrokeStopping
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_WetStrokeStopping
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_WetStrokeCompleted
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_WetStrokeCompleted
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_WetStrokeCanceled
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_WetStrokeCanceled
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_InkPresenter
      (
         this : access ICoreWetStrokeUpdateSource_Interface;
         RetVal : access Windows.UI.Input.Inking.IInkPresenter
      )
      return WinRt.Hresult is abstract;

      IID_ICoreWetStrokeUpdateSource : aliased WinRt.IID := (527535650, 61010, 19968, (130, 9, 76, 62, 91, 33, 163, 204 ));

   -----------------------------------------------------------------------------
   -- type ICoreWetStrokeUpdateSourceStatics is interface and WinRt.IInspectable;

      function Create
      (
         this : access ICoreWetStrokeUpdateSourceStatics_Interface;
         inkPresenter : Windows.UI.Input.Inking.IInkPresenter;
         RetVal : access Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateSource
      )
      return WinRt.Hresult is abstract;

      IID_ICoreWetStrokeUpdateSourceStatics : aliased WinRt.IID := (1034788026, 7485, 18094, (171, 157, 134, 71, 72, 108, 111, 144 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreIncrementalInkStroke

   overriding procedure Initialize (this : in out CoreIncrementalInkStroke);
   overriding procedure Finalize (this : in out CoreIncrementalInkStroke);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for CoreIncrementalInkStroke

   function Constructor
   (
      drawingAttributes : Windows.UI.Input.Inking.InkDrawingAttributes'Class;
      pointTransform : Windows.Foundation.Numerics.Matrix3x2
   )
   return CoreIncrementalInkStroke;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreIncrementalInkStroke

   function AppendInkPoints
   (
      this : in out CoreIncrementalInkStroke;
      inkPoints : GenericObject
   )
   return WinRt.Windows.Foundation.Rect;

   function CreateInkStroke
   (
      this : in out CoreIncrementalInkStroke
   )
   return WinRt.Windows.UI.Input.Inking.InkStroke'Class;

   function get_DrawingAttributes
   (
      this : in out CoreIncrementalInkStroke
   )
   return WinRt.Windows.UI.Input.Inking.InkDrawingAttributes'Class;

   function get_PointTransform
   (
      this : in out CoreIncrementalInkStroke
   )
   return WinRt.Windows.Foundation.Numerics.Matrix3x2;

   function get_BoundingRect
   (
      this : in out CoreIncrementalInkStroke
   )
   return WinRt.Windows.Foundation.Rect;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInkIndependentInputSource

   overriding procedure Initialize (this : in out CoreInkIndependentInputSource);
   overriding procedure Finalize (this : in out CoreInkIndependentInputSource);

   -----------------------------------------------------------------------------
   -- Static Interfaces for CoreInkIndependentInputSource

   function Create
   (
      inkPresenter : Windows.UI.Input.Inking.InkPresenter'Class
   )
   return WinRt.Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInkIndependentInputSource

   function add_PointerEntering
   (
      this : in out CoreInkIndependentInputSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PointerEntering
   (
      this : in out CoreInkIndependentInputSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_PointerHovering
   (
      this : in out CoreInkIndependentInputSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PointerHovering
   (
      this : in out CoreInkIndependentInputSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_PointerExiting
   (
      this : in out CoreInkIndependentInputSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PointerExiting
   (
      this : in out CoreInkIndependentInputSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_PointerPressing
   (
      this : in out CoreInkIndependentInputSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PointerPressing
   (
      this : in out CoreInkIndependentInputSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_PointerMoving
   (
      this : in out CoreInkIndependentInputSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PointerMoving
   (
      this : in out CoreInkIndependentInputSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_PointerReleasing
   (
      this : in out CoreInkIndependentInputSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PointerReleasing
   (
      this : in out CoreInkIndependentInputSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_PointerLost
   (
      this : in out CoreInkIndependentInputSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PointerLost
   (
      this : in out CoreInkIndependentInputSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function get_InkPresenter
   (
      this : in out CoreInkIndependentInputSource
   )
   return WinRt.Windows.UI.Input.Inking.InkPresenter'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreInkPresenterHost

   overriding procedure Initialize (this : in out CoreInkPresenterHost);
   overriding procedure Finalize (this : in out CoreInkPresenterHost);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for CoreInkPresenterHost

   function Constructor return CoreInkPresenterHost;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreInkPresenterHost

   function get_InkPresenter
   (
      this : in out CoreInkPresenterHost
   )
   return WinRt.Windows.UI.Input.Inking.InkPresenter'Class;

   function get_RootVisual
   (
      this : in out CoreInkPresenterHost
   )
   return WinRt.Windows.UI.Composition.ContainerVisual'Class;

   procedure put_RootVisual
   (
      this : in out CoreInkPresenterHost;
      value : Windows.UI.Composition.ContainerVisual'Class
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreWetStrokeUpdateEventArgs

   overriding procedure Initialize (this : in out CoreWetStrokeUpdateEventArgs);
   overriding procedure Finalize (this : in out CoreWetStrokeUpdateEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreWetStrokeUpdateEventArgs

   function get_NewInkPoints
   (
      this : in out CoreWetStrokeUpdateEventArgs
   )
   return IVector_IInkPoint.Kind;

   function get_PointerId
   (
      this : in out CoreWetStrokeUpdateEventArgs
   )
   return WinRt.UInt32;

   function get_Disposition
   (
      this : in out CoreWetStrokeUpdateEventArgs
   )
   return WinRt.Windows.UI.Input.Inking.Core.CoreWetStrokeDisposition;

   procedure put_Disposition
   (
      this : in out CoreWetStrokeUpdateEventArgs;
      value : Windows.UI.Input.Inking.Core.CoreWetStrokeDisposition
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CoreWetStrokeUpdateSource

   overriding procedure Initialize (this : in out CoreWetStrokeUpdateSource);
   overriding procedure Finalize (this : in out CoreWetStrokeUpdateSource);

   -----------------------------------------------------------------------------
   -- Static Interfaces for CoreWetStrokeUpdateSource

   function Create
   (
      inkPresenter : Windows.UI.Input.Inking.InkPresenter'Class
   )
   return WinRt.Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CoreWetStrokeUpdateSource

   function add_WetStrokeStarting
   (
      this : in out CoreWetStrokeUpdateSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_WetStrokeStarting
   (
      this : in out CoreWetStrokeUpdateSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_WetStrokeContinuing
   (
      this : in out CoreWetStrokeUpdateSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_WetStrokeContinuing
   (
      this : in out CoreWetStrokeUpdateSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_WetStrokeStopping
   (
      this : in out CoreWetStrokeUpdateSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_WetStrokeStopping
   (
      this : in out CoreWetStrokeUpdateSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_WetStrokeCompleted
   (
      this : in out CoreWetStrokeUpdateSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_WetStrokeCompleted
   (
      this : in out CoreWetStrokeUpdateSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_WetStrokeCanceled
   (
      this : in out CoreWetStrokeUpdateSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_WetStrokeCanceled
   (
      this : in out CoreWetStrokeUpdateSource;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function get_InkPresenter
   (
      this : in out CoreWetStrokeUpdateSource
   )
   return WinRt.Windows.UI.Input.Inking.InkPresenter'Class;

end;
