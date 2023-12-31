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
limited with WinRt.Windows.Graphics.DirectX;
limited with WinRt.Windows.Storage.Streams;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Perception.Spatial.Surfaces is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ISpatialSurfaceInfo_Interface is interface and WinRt.IInspectable_Interface;
   type ISpatialSurfaceInfo is access all ISpatialSurfaceInfo_Interface'Class;
   type ISpatialSurfaceInfo_Ptr is access all ISpatialSurfaceInfo;

   type ISpatialSurfaceMesh_Interface is interface and WinRt.IInspectable_Interface;
   type ISpatialSurfaceMesh is access all ISpatialSurfaceMesh_Interface'Class;
   type ISpatialSurfaceMesh_Ptr is access all ISpatialSurfaceMesh;

   type ISpatialSurfaceMeshBuffer_Interface is interface and WinRt.IInspectable_Interface;
   type ISpatialSurfaceMeshBuffer is access all ISpatialSurfaceMeshBuffer_Interface'Class;
   type ISpatialSurfaceMeshBuffer_Ptr is access all ISpatialSurfaceMeshBuffer;

   type ISpatialSurfaceMeshOptions_Interface is interface and WinRt.IInspectable_Interface;
   type ISpatialSurfaceMeshOptions is access all ISpatialSurfaceMeshOptions_Interface'Class;
   type ISpatialSurfaceMeshOptions_Ptr is access all ISpatialSurfaceMeshOptions;

   type ISpatialSurfaceMeshOptionsStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ISpatialSurfaceMeshOptionsStatics is access all ISpatialSurfaceMeshOptionsStatics_Interface'Class;

   type ISpatialSurfaceObserver_Interface is interface and WinRt.IInspectable_Interface;
   type ISpatialSurfaceObserver is access all ISpatialSurfaceObserver_Interface'Class;
   type ISpatialSurfaceObserver_Ptr is access all ISpatialSurfaceObserver;

   type ISpatialSurfaceObserverStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ISpatialSurfaceObserverStatics is access all ISpatialSurfaceObserverStatics_Interface'Class;

   type ISpatialSurfaceObserverStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type ISpatialSurfaceObserverStatics2 is access all ISpatialSurfaceObserverStatics2_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type SpatialSurfaceInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_ISpatialSurfaceInfo : access Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo;
      end record;
   type SpatialSurfaceInfo_Ptr is access all SpatialSurfaceInfo;

   type SpatialSurfaceMesh is new Ada.Finalization.Limited_Controlled with
      record
         m_ISpatialSurfaceMesh : access Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh;
      end record;
   type SpatialSurfaceMesh_Ptr is access all SpatialSurfaceMesh;

   type SpatialSurfaceMeshBuffer is new Ada.Finalization.Limited_Controlled with
      record
         m_ISpatialSurfaceMeshBuffer : access Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer;
      end record;
   type SpatialSurfaceMeshBuffer_Ptr is access all SpatialSurfaceMeshBuffer;

   type SpatialSurfaceMeshOptions is new Ada.Finalization.Limited_Controlled with
      record
         m_ISpatialSurfaceMeshOptions : access Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions;
      end record;
   type SpatialSurfaceMeshOptions_Ptr is access all SpatialSurfaceMeshOptions;

   type SpatialSurfaceObserver is new Ada.Finalization.Limited_Controlled with
      record
         m_ISpatialSurfaceObserver : access Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver;
      end record;
   type SpatialSurfaceObserver_Ptr is access all SpatialSurfaceObserver;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IReference_SpatialBoundingOrientedBox is new WinRt.Windows.Foundation.IReference (WinRt.Windows.Perception.Spatial.SpatialBoundingOrientedBox);
   IID_IReference_SpatialBoundingOrientedBox : aliased WinRt.IID := (1121620688, 38197, 20782, (158, 31, 104, 65, 187, 187, 116, 30 ));
   function QInterface_IReference_SpatialBoundingOrientedBox is new Generic_QueryInterface (GenericObject_Interface, IReference_SpatialBoundingOrientedBox.Kind, IID_IReference_SpatialBoundingOrientedBox'Access);

   package IMapView_Guid_ISpatialSurfaceInfo is new WinRt.Windows.Foundation.Collections.IMapView (WinRt.Guid, WinRt.Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo);
   IID_IMapView_Guid_ISpatialSurfaceInfo : aliased WinRt.IID := (1455980789, 29517, 23759, (179, 228, 130, 51, 164, 22, 168, 9 ));
   function QInterface_IMapView_Guid_ISpatialSurfaceInfo is new Generic_QueryInterface (GenericObject_Interface, IMapView_Guid_ISpatialSurfaceInfo.Kind, IID_IMapView_Guid_ISpatialSurfaceInfo'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ISpatialSurfaceInfo is interface and WinRt.IInspectable;

      function get_Id
      (
         this : access ISpatialSurfaceInfo_Interface;
         RetVal : access WinRt.Guid
      )
      return WinRt.Hresult is abstract;

      function get_UpdateTime
      (
         this : access ISpatialSurfaceInfo_Interface;
         RetVal : access Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function TryGetBounds
      (
         this : access ISpatialSurfaceInfo_Interface;
         coordinateSystem : Windows.Perception.Spatial.ISpatialCoordinateSystem;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function TryComputeLatestMeshAsync
      (
         this : access ISpatialSurfaceInfo_Interface;
         maxTrianglesPerCubicMeter : WinRt.Double;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function TryComputeLatestMeshAsync
      (
         this : access ISpatialSurfaceInfo_Interface;
         maxTrianglesPerCubicMeter : WinRt.Double;
         options : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ISpatialSurfaceInfo : aliased WinRt.IID := (4176079847, 14775, 14690, (187, 3, 87, 245, 110, 31, 176, 161 ));

   -----------------------------------------------------------------------------
   -- type ISpatialSurfaceMesh is interface and WinRt.IInspectable;

      function get_SurfaceInfo
      (
         this : access ISpatialSurfaceMesh_Interface;
         RetVal : access Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo
      )
      return WinRt.Hresult is abstract;

      function get_CoordinateSystem
      (
         this : access ISpatialSurfaceMesh_Interface;
         RetVal : access Windows.Perception.Spatial.ISpatialCoordinateSystem
      )
      return WinRt.Hresult is abstract;

      function get_TriangleIndices
      (
         this : access ISpatialSurfaceMesh_Interface;
         RetVal : access Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer
      )
      return WinRt.Hresult is abstract;

      function get_VertexPositions
      (
         this : access ISpatialSurfaceMesh_Interface;
         RetVal : access Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer
      )
      return WinRt.Hresult is abstract;

      function get_VertexPositionScale
      (
         this : access ISpatialSurfaceMesh_Interface;
         RetVal : access Windows.Foundation.Numerics.Vector3
      )
      return WinRt.Hresult is abstract;

      function get_VertexNormals
      (
         this : access ISpatialSurfaceMesh_Interface;
         RetVal : access Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer
      )
      return WinRt.Hresult is abstract;

      IID_ISpatialSurfaceMesh : aliased WinRt.IID := (277829593, 57101, 14672, (160, 253, 249, 114, 199, 124, 39, 180 ));

   -----------------------------------------------------------------------------
   -- type ISpatialSurfaceMeshBuffer is interface and WinRt.IInspectable;

      function get_Format
      (
         this : access ISpatialSurfaceMeshBuffer_Interface;
         RetVal : access Windows.Graphics.DirectX.DirectXPixelFormat
      )
      return WinRt.Hresult is abstract;

      function get_Stride
      (
         this : access ISpatialSurfaceMeshBuffer_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_ElementCount
      (
         this : access ISpatialSurfaceMeshBuffer_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_Data
      (
         this : access ISpatialSurfaceMeshBuffer_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      IID_ISpatialSurfaceMeshBuffer : aliased WinRt.IID := (2479839712, 34591, 13304, (152, 178, 3, 209, 1, 69, 143, 111 ));

   -----------------------------------------------------------------------------
   -- type ISpatialSurfaceMeshOptions is interface and WinRt.IInspectable;

      function get_VertexPositionFormat
      (
         this : access ISpatialSurfaceMeshOptions_Interface;
         RetVal : access Windows.Graphics.DirectX.DirectXPixelFormat
      )
      return WinRt.Hresult is abstract;

      function put_VertexPositionFormat
      (
         this : access ISpatialSurfaceMeshOptions_Interface;
         value : Windows.Graphics.DirectX.DirectXPixelFormat
      )
      return WinRt.Hresult is abstract;

      function get_TriangleIndexFormat
      (
         this : access ISpatialSurfaceMeshOptions_Interface;
         RetVal : access Windows.Graphics.DirectX.DirectXPixelFormat
      )
      return WinRt.Hresult is abstract;

      function put_TriangleIndexFormat
      (
         this : access ISpatialSurfaceMeshOptions_Interface;
         value : Windows.Graphics.DirectX.DirectXPixelFormat
      )
      return WinRt.Hresult is abstract;

      function get_VertexNormalFormat
      (
         this : access ISpatialSurfaceMeshOptions_Interface;
         RetVal : access Windows.Graphics.DirectX.DirectXPixelFormat
      )
      return WinRt.Hresult is abstract;

      function put_VertexNormalFormat
      (
         this : access ISpatialSurfaceMeshOptions_Interface;
         value : Windows.Graphics.DirectX.DirectXPixelFormat
      )
      return WinRt.Hresult is abstract;

      function get_IncludeVertexNormals
      (
         this : access ISpatialSurfaceMeshOptions_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_IncludeVertexNormals
      (
         this : access ISpatialSurfaceMeshOptions_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ISpatialSurfaceMeshOptions : aliased WinRt.IID := (3530923913, 13682, 15661, (161, 13, 95, 238, 147, 148, 170, 55 ));

   -----------------------------------------------------------------------------
   -- type ISpatialSurfaceMeshOptionsStatics is interface and WinRt.IInspectable;

      function get_SupportedVertexPositionFormats
      (
         this : access ISpatialSurfaceMeshOptionsStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_SupportedTriangleIndexFormats
      (
         this : access ISpatialSurfaceMeshOptionsStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_SupportedVertexNormalFormats
      (
         this : access ISpatialSurfaceMeshOptionsStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ISpatialSurfaceMeshOptionsStatics : aliased WinRt.IID := (2603879103, 38785, 17669, (137, 53, 1, 53, 117, 202, 174, 94 ));

   -----------------------------------------------------------------------------
   -- type ISpatialSurfaceObserver is interface and WinRt.IInspectable;

      function GetObservedSurfaces
      (
         this : access ISpatialSurfaceObserver_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SetBoundingVolume
      (
         this : access ISpatialSurfaceObserver_Interface;
         bounds : Windows.Perception.Spatial.ISpatialBoundingVolume
      )
      return WinRt.Hresult is abstract;

      function SetBoundingVolumes
      (
         this : access ISpatialSurfaceObserver_Interface;
         bounds : GenericObject
      )
      return WinRt.Hresult is abstract;

      function add_ObservedSurfacesChanged
      (
         this : access ISpatialSurfaceObserver_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ObservedSurfacesChanged
      (
         this : access ISpatialSurfaceObserver_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_ISpatialSurfaceObserver : aliased WinRt.IID := (280401945, 56778, 13443, (172, 58, 116, 143, 232, 200, 109, 245 ));

   -----------------------------------------------------------------------------
   -- type ISpatialSurfaceObserverStatics is interface and WinRt.IInspectable;

      function RequestAccessAsync
      (
         this : access ISpatialSurfaceObserverStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ISpatialSurfaceObserverStatics : aliased WinRt.IID := (374952429, 8456, 16744, (145, 117, 135, 224, 39, 188, 146, 133 ));

   -----------------------------------------------------------------------------
   -- type ISpatialSurfaceObserverStatics2 is interface and WinRt.IInspectable;

      function IsSupported
      (
         this : access ISpatialSurfaceObserverStatics2_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ISpatialSurfaceObserverStatics2 : aliased WinRt.IID := (257114721, 50525, 20075, (168, 149, 161, 157, 230, 154, 66, 227 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpatialSurfaceInfo

   overriding procedure Initialize (this : in out SpatialSurfaceInfo);
   overriding procedure Finalize (this : in out SpatialSurfaceInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpatialSurfaceInfo

   function get_Id
   (
      this : in out SpatialSurfaceInfo
   )
   return WinRt.Guid;

   function get_UpdateTime
   (
      this : in out SpatialSurfaceInfo
   )
   return WinRt.Windows.Foundation.DateTime;

   function TryGetBounds
   (
      this : in out SpatialSurfaceInfo;
      coordinateSystem : Windows.Perception.Spatial.SpatialCoordinateSystem'Class
   )
   return IReference_SpatialBoundingOrientedBox.Kind;

   function TryComputeLatestMeshAsync
   (
      this : in out SpatialSurfaceInfo;
      maxTrianglesPerCubicMeter : WinRt.Double
   )
   return WinRt.Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh'Class;

   function TryComputeLatestMeshAsync
   (
      this : in out SpatialSurfaceInfo;
      maxTrianglesPerCubicMeter : WinRt.Double;
      options : Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshOptions'Class
   )
   return WinRt.Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpatialSurfaceMesh

   overriding procedure Initialize (this : in out SpatialSurfaceMesh);
   overriding procedure Finalize (this : in out SpatialSurfaceMesh);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpatialSurfaceMesh

   function get_SurfaceInfo
   (
      this : in out SpatialSurfaceMesh
   )
   return WinRt.Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo'Class;

   function get_CoordinateSystem
   (
      this : in out SpatialSurfaceMesh
   )
   return WinRt.Windows.Perception.Spatial.SpatialCoordinateSystem'Class;

   function get_TriangleIndices
   (
      this : in out SpatialSurfaceMesh
   )
   return WinRt.Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer'Class;

   function get_VertexPositions
   (
      this : in out SpatialSurfaceMesh
   )
   return WinRt.Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer'Class;

   function get_VertexPositionScale
   (
      this : in out SpatialSurfaceMesh
   )
   return WinRt.Windows.Foundation.Numerics.Vector3;

   function get_VertexNormals
   (
      this : in out SpatialSurfaceMesh
   )
   return WinRt.Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpatialSurfaceMeshBuffer

   overriding procedure Initialize (this : in out SpatialSurfaceMeshBuffer);
   overriding procedure Finalize (this : in out SpatialSurfaceMeshBuffer);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpatialSurfaceMeshBuffer

   function get_Format
   (
      this : in out SpatialSurfaceMeshBuffer
   )
   return WinRt.Windows.Graphics.DirectX.DirectXPixelFormat;

   function get_Stride
   (
      this : in out SpatialSurfaceMeshBuffer
   )
   return WinRt.UInt32;

   function get_ElementCount
   (
      this : in out SpatialSurfaceMeshBuffer
   )
   return WinRt.UInt32;

   function get_Data
   (
      this : in out SpatialSurfaceMeshBuffer
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpatialSurfaceMeshOptions

   overriding procedure Initialize (this : in out SpatialSurfaceMeshOptions);
   overriding procedure Finalize (this : in out SpatialSurfaceMeshOptions);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SpatialSurfaceMeshOptions

   function Constructor return SpatialSurfaceMeshOptions;

   -----------------------------------------------------------------------------
   -- Static Interfaces for SpatialSurfaceMeshOptions

   function get_SupportedVertexPositionFormats
   return WinRt.GenericObject;

   function get_SupportedTriangleIndexFormats
   return WinRt.GenericObject;

   function get_SupportedVertexNormalFormats
   return WinRt.GenericObject;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpatialSurfaceMeshOptions

   function get_VertexPositionFormat
   (
      this : in out SpatialSurfaceMeshOptions
   )
   return WinRt.Windows.Graphics.DirectX.DirectXPixelFormat;

   procedure put_VertexPositionFormat
   (
      this : in out SpatialSurfaceMeshOptions;
      value : Windows.Graphics.DirectX.DirectXPixelFormat
   );

   function get_TriangleIndexFormat
   (
      this : in out SpatialSurfaceMeshOptions
   )
   return WinRt.Windows.Graphics.DirectX.DirectXPixelFormat;

   procedure put_TriangleIndexFormat
   (
      this : in out SpatialSurfaceMeshOptions;
      value : Windows.Graphics.DirectX.DirectXPixelFormat
   );

   function get_VertexNormalFormat
   (
      this : in out SpatialSurfaceMeshOptions
   )
   return WinRt.Windows.Graphics.DirectX.DirectXPixelFormat;

   procedure put_VertexNormalFormat
   (
      this : in out SpatialSurfaceMeshOptions;
      value : Windows.Graphics.DirectX.DirectXPixelFormat
   );

   function get_IncludeVertexNormals
   (
      this : in out SpatialSurfaceMeshOptions
   )
   return WinRt.Boolean;

   procedure put_IncludeVertexNormals
   (
      this : in out SpatialSurfaceMeshOptions;
      value : WinRt.Boolean
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpatialSurfaceObserver

   overriding procedure Initialize (this : in out SpatialSurfaceObserver);
   overriding procedure Finalize (this : in out SpatialSurfaceObserver);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SpatialSurfaceObserver

   function Constructor return SpatialSurfaceObserver;

   -----------------------------------------------------------------------------
   -- Static Interfaces for SpatialSurfaceObserver

   function RequestAccessAsync
   return WinRt.Windows.Perception.Spatial.SpatialPerceptionAccessStatus;

   function IsSupported
   return WinRt.Boolean;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpatialSurfaceObserver

   function GetObservedSurfaces
   (
      this : in out SpatialSurfaceObserver
   )
   return IMapView_Guid_ISpatialSurfaceInfo.Kind;

   procedure SetBoundingVolume
   (
      this : in out SpatialSurfaceObserver;
      bounds : Windows.Perception.Spatial.SpatialBoundingVolume'Class
   );

   procedure SetBoundingVolumes
   (
      this : in out SpatialSurfaceObserver;
      bounds : GenericObject
   );

   function add_ObservedSurfacesChanged
   (
      this : in out SpatialSurfaceObserver;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ObservedSurfacesChanged
   (
      this : in out SpatialSurfaceObserver;
      token : Windows.Foundation.EventRegistrationToken
   );

end;
