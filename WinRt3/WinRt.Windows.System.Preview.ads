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
limited with WinRt.Windows.Devices.Sensors;
with WinRt.Windows.Foundation;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.System.Preview is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ITwoPanelHingedDevicePosturePreview_Interface is interface and WinRt.IInspectable_Interface;
   type ITwoPanelHingedDevicePosturePreview is access all ITwoPanelHingedDevicePosturePreview_Interface'Class;
   type ITwoPanelHingedDevicePosturePreview_Ptr is access all ITwoPanelHingedDevicePosturePreview;

   type ITwoPanelHingedDevicePosturePreviewReading_Interface is interface and WinRt.IInspectable_Interface;
   type ITwoPanelHingedDevicePosturePreviewReading is access all ITwoPanelHingedDevicePosturePreviewReading_Interface'Class;
   type ITwoPanelHingedDevicePosturePreviewReading_Ptr is access all ITwoPanelHingedDevicePosturePreviewReading;

   type ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs is access all ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs_Interface'Class;
   type ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs_Ptr is access all ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs;

   type ITwoPanelHingedDevicePosturePreviewStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ITwoPanelHingedDevicePosturePreviewStatics is access all ITwoPanelHingedDevicePosturePreviewStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type TwoPanelHingedDevicePosturePreview is new Ada.Finalization.Limited_Controlled with
      record
         m_ITwoPanelHingedDevicePosturePreview : access Windows.System.Preview.ITwoPanelHingedDevicePosturePreview;
      end record;
   type TwoPanelHingedDevicePosturePreview_Ptr is access all TwoPanelHingedDevicePosturePreview;

   type TwoPanelHingedDevicePosturePreviewReading is new Ada.Finalization.Limited_Controlled with
      record
         m_ITwoPanelHingedDevicePosturePreviewReading : access Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReading;
      end record;
   type TwoPanelHingedDevicePosturePreviewReading_Ptr is access all TwoPanelHingedDevicePosturePreviewReading;

   type TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs : access Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs;
      end record;
   type TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs_Ptr is access all TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type HingeState is (
      Unknown_e,
      Closed_e,
      Concave_e,
      Flat_e,
      Convex_e,
      Full_e
   );
   for HingeState use (
      Unknown_e => 0,
      Closed_e => 1,
      Concave_e => 2,
      Flat_e => 3,
      Convex_e => 4,
      Full_e => 5
   );
   type HingeState_Ptr is access all HingeState;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ITwoPanelHingedDevicePosturePreview is interface and WinRt.IInspectable;

      function GetCurrentPostureAsync
      (
         this : access ITwoPanelHingedDevicePosturePreview_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function add_PostureChanged
      (
         this : access ITwoPanelHingedDevicePosturePreview_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PostureChanged
      (
         this : access ITwoPanelHingedDevicePosturePreview_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_ITwoPanelHingedDevicePosturePreview : aliased WinRt.IID := (1914985521, 19257, 17062, (142, 115, 114, 53, 173, 225, 104, 83 ));

   -----------------------------------------------------------------------------
   -- type ITwoPanelHingedDevicePosturePreviewReading is interface and WinRt.IInspectable;

      function get_Timestamp
      (
         this : access ITwoPanelHingedDevicePosturePreviewReading_Interface;
         RetVal : access Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function get_HingeState
      (
         this : access ITwoPanelHingedDevicePosturePreviewReading_Interface;
         RetVal : access Windows.System.Preview.HingeState
      )
      return WinRt.Hresult is abstract;

      function get_Panel1Orientation
      (
         this : access ITwoPanelHingedDevicePosturePreviewReading_Interface;
         RetVal : access Windows.Devices.Sensors.SimpleOrientation
      )
      return WinRt.Hresult is abstract;

      function get_Panel1Id
      (
         this : access ITwoPanelHingedDevicePosturePreviewReading_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Panel2Orientation
      (
         this : access ITwoPanelHingedDevicePosturePreviewReading_Interface;
         RetVal : access Windows.Devices.Sensors.SimpleOrientation
      )
      return WinRt.Hresult is abstract;

      function get_Panel2Id
      (
         this : access ITwoPanelHingedDevicePosturePreviewReading_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_ITwoPanelHingedDevicePosturePreviewReading : aliased WinRt.IID := (2686784594, 19158, 19256, (132, 38, 197, 154, 21, 73, 58, 125 ));

   -----------------------------------------------------------------------------
   -- type ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs is interface and WinRt.IInspectable;

      function get_Reading
      (
         this : access ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs_Interface;
         RetVal : access Windows.System.Preview.ITwoPanelHingedDevicePosturePreviewReading
      )
      return WinRt.Hresult is abstract;

      IID_ITwoPanelHingedDevicePosturePreviewReadingChangedEventArgs : aliased WinRt.IID := (757930950, 718, 18250, (165, 86, 167, 91, 28, 249, 58, 3 ));

   -----------------------------------------------------------------------------
   -- type ITwoPanelHingedDevicePosturePreviewStatics is interface and WinRt.IInspectable;

      function GetDefaultAsync
      (
         this : access ITwoPanelHingedDevicePosturePreviewStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ITwoPanelHingedDevicePosturePreviewStatics : aliased WinRt.IID := (205992914, 22496, 16768, (189, 94, 243, 26, 33, 56, 66, 62 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for TwoPanelHingedDevicePosturePreview

   overriding procedure Initialize (this : in out TwoPanelHingedDevicePosturePreview);
   overriding procedure Finalize (this : in out TwoPanelHingedDevicePosturePreview);

   -----------------------------------------------------------------------------
   -- Static Interfaces for TwoPanelHingedDevicePosturePreview

   function GetDefaultAsync
   return WinRt.Windows.System.Preview.TwoPanelHingedDevicePosturePreview;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for TwoPanelHingedDevicePosturePreview

   function GetCurrentPostureAsync
   (
      this : in out TwoPanelHingedDevicePosturePreview
   )
   return WinRt.Windows.System.Preview.TwoPanelHingedDevicePosturePreviewReading'Class;

   function add_PostureChanged
   (
      this : in out TwoPanelHingedDevicePosturePreview;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PostureChanged
   (
      this : in out TwoPanelHingedDevicePosturePreview;
      token : Windows.Foundation.EventRegistrationToken
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for TwoPanelHingedDevicePosturePreviewReading

   overriding procedure Initialize (this : in out TwoPanelHingedDevicePosturePreviewReading);
   overriding procedure Finalize (this : in out TwoPanelHingedDevicePosturePreviewReading);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for TwoPanelHingedDevicePosturePreviewReading

   function get_Timestamp
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.Windows.Foundation.DateTime;

   function get_HingeState
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.Windows.System.Preview.HingeState;

   function get_Panel1Orientation
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.Windows.Devices.Sensors.SimpleOrientation;

   function get_Panel1Id
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.WString;

   function get_Panel2Orientation
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.Windows.Devices.Sensors.SimpleOrientation;

   function get_Panel2Id
   (
      this : in out TwoPanelHingedDevicePosturePreviewReading
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs

   overriding procedure Initialize (this : in out TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs);
   overriding procedure Finalize (this : in out TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs

   function get_Reading
   (
      this : in out TwoPanelHingedDevicePosturePreviewReadingChangedEventArgs
   )
   return WinRt.Windows.System.Preview.TwoPanelHingedDevicePosturePreviewReading'Class;

end;
