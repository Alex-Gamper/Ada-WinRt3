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
package WinRt.Windows.Graphics.Display.Core is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IHdmiDisplayInformation_Interface is interface and WinRt.IInspectable_Interface;
   type IHdmiDisplayInformation is access all IHdmiDisplayInformation_Interface'Class;
   type IHdmiDisplayInformation_Ptr is access all IHdmiDisplayInformation;

   type IHdmiDisplayInformationStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IHdmiDisplayInformationStatics is access all IHdmiDisplayInformationStatics_Interface'Class;

   type IHdmiDisplayMode_Interface is interface and WinRt.IInspectable_Interface;
   type IHdmiDisplayMode is access all IHdmiDisplayMode_Interface'Class;
   type IHdmiDisplayMode_Ptr is access all IHdmiDisplayMode;

   type IHdmiDisplayMode2_Interface is interface and WinRt.IInspectable_Interface;
   type IHdmiDisplayMode2 is access all IHdmiDisplayMode2_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type HdmiDisplayInformation is new Ada.Finalization.Limited_Controlled with
      record
         m_IHdmiDisplayInformation : access Windows.Graphics.Display.Core.IHdmiDisplayInformation;
      end record;
   type HdmiDisplayInformation_Ptr is access all HdmiDisplayInformation;

   type HdmiDisplayMode is new Ada.Finalization.Limited_Controlled with
      record
         m_IHdmiDisplayMode : access Windows.Graphics.Display.Core.IHdmiDisplayMode;
      end record;
   type HdmiDisplayMode_Ptr is access all HdmiDisplayMode;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type HdmiDisplayColorSpace is (
      RgbLimited_e,
      RgbFull_e,
      BT2020_e,
      BT709_e
   );
   for HdmiDisplayColorSpace use (
      RgbLimited_e => 0,
      RgbFull_e => 1,
      BT2020_e => 2,
      BT709_e => 3
   );
   type HdmiDisplayColorSpace_Ptr is access all HdmiDisplayColorSpace;

   type HdmiDisplayHdrOption is (
      None_e,
      EotfSdr_e,
      Eotf2084_e,
      DolbyVisionLowLatency_e
   );
   for HdmiDisplayHdrOption use (
      None_e => 0,
      EotfSdr_e => 1,
      Eotf2084_e => 2,
      DolbyVisionLowLatency_e => 3
   );
   type HdmiDisplayHdrOption_Ptr is access all HdmiDisplayHdrOption;

   type HdmiDisplayPixelEncoding is (
      Rgb444_e,
      Ycc444_e,
      Ycc422_e,
      Ycc420_e
   );
   for HdmiDisplayPixelEncoding use (
      Rgb444_e => 0,
      Ycc444_e => 1,
      Ycc422_e => 2,
      Ycc420_e => 3
   );
   type HdmiDisplayPixelEncoding_Ptr is access all HdmiDisplayPixelEncoding;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type HdmiDisplayHdr2086Metadata is record
      RedPrimaryX : WinRt.UInt16;
      RedPrimaryY : WinRt.UInt16;
      GreenPrimaryX : WinRt.UInt16;
      GreenPrimaryY : WinRt.UInt16;
      BluePrimaryX : WinRt.UInt16;
      BluePrimaryY : WinRt.UInt16;
      WhitePointX : WinRt.UInt16;
      WhitePointY : WinRt.UInt16;
      MaxMasteringLuminance : WinRt.UInt16;
      MinMasteringLuminance : WinRt.UInt16;
      MaxContentLightLevel : WinRt.UInt16;
      MaxFrameAverageLightLevel : WinRt.UInt16;
   end record with Convention => C_Pass_By_Copy;
   type HdmiDisplayHdr2086Metadata_Ptr is access all HdmiDisplayHdr2086Metadata;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_IHdmiDisplayMode is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.Graphics.Display.Core.IHdmiDisplayMode);
   IID_IVectorView_IHdmiDisplayMode : aliased WinRt.IID := (3094977450, 37932, 22507, (188, 62, 107, 26, 168, 47, 195, 177 ));
   function QInterface_IVectorView_IHdmiDisplayMode is new Generic_QueryInterface (GenericObject_Interface, IVectorView_IHdmiDisplayMode.Kind, IID_IVectorView_IHdmiDisplayMode'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IHdmiDisplayInformation is interface and WinRt.IInspectable;

      function GetSupportedDisplayModes
      (
         this : access IHdmiDisplayInformation_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetCurrentDisplayMode
      (
         this : access IHdmiDisplayInformation_Interface;
         RetVal : access Windows.Graphics.Display.Core.IHdmiDisplayMode
      )
      return WinRt.Hresult is abstract;

      function SetDefaultDisplayModeAsync
      (
         this : access IHdmiDisplayInformation_Interface;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function RequestSetCurrentDisplayModeAsync
      (
         this : access IHdmiDisplayInformation_Interface;
         mode : Windows.Graphics.Display.Core.IHdmiDisplayMode;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RequestSetCurrentDisplayModeAsync
      (
         this : access IHdmiDisplayInformation_Interface;
         mode : Windows.Graphics.Display.Core.IHdmiDisplayMode;
         hdrOption : Windows.Graphics.Display.Core.HdmiDisplayHdrOption;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RequestSetCurrentDisplayModeAsync
      (
         this : access IHdmiDisplayInformation_Interface;
         mode : Windows.Graphics.Display.Core.IHdmiDisplayMode;
         hdrOption : Windows.Graphics.Display.Core.HdmiDisplayHdrOption;
         hdrMetadata : Windows.Graphics.Display.Core.HdmiDisplayHdr2086Metadata;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function add_DisplayModesChanged
      (
         this : access IHdmiDisplayInformation_Interface;
         value : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_DisplayModesChanged
      (
         this : access IHdmiDisplayInformation_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IHdmiDisplayInformation : aliased WinRt.IID := (319503370, 62821, 18286, (171, 213, 234, 5, 174, 231, 76, 105 ));

   -----------------------------------------------------------------------------
   -- type IHdmiDisplayInformationStatics is interface and WinRt.IInspectable;

      function GetForCurrentView
      (
         this : access IHdmiDisplayInformationStatics_Interface;
         RetVal : access Windows.Graphics.Display.Core.IHdmiDisplayInformation
      )
      return WinRt.Hresult is abstract;

      IID_IHdmiDisplayInformationStatics : aliased WinRt.IID := (1827058272, 62506, 18965, (145, 76, 123, 142, 42, 90, 101, 223 ));

   -----------------------------------------------------------------------------
   -- type IHdmiDisplayMode is interface and WinRt.IInspectable;

      function get_ResolutionWidthInRawPixels
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_ResolutionHeightInRawPixels
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_RefreshRate
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function get_StereoEnabled
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_BitsPerPixel
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function IsEqual
      (
         this : access IHdmiDisplayMode_Interface;
         mode : Windows.Graphics.Display.Core.IHdmiDisplayMode;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_ColorSpace
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access Windows.Graphics.Display.Core.HdmiDisplayColorSpace
      )
      return WinRt.Hresult is abstract;

      function get_PixelEncoding
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access Windows.Graphics.Display.Core.HdmiDisplayPixelEncoding
      )
      return WinRt.Hresult is abstract;

      function get_IsSdrLuminanceSupported
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsSmpte2084Supported
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_Is2086MetadataSupported
      (
         this : access IHdmiDisplayMode_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IHdmiDisplayMode : aliased WinRt.IID := (201774509, 7056, 20305, (153, 129, 239, 90, 28, 13, 223, 102 ));

   -----------------------------------------------------------------------------
   -- type IHdmiDisplayMode2 is interface and WinRt.IInspectable;

      function get_IsDolbyVisionLowLatencySupported
      (
         this : access IHdmiDisplayMode2_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IHdmiDisplayMode2 : aliased WinRt.IID := (130895519, 19260, 17080, (132, 231, 137, 83, 104, 113, 138, 242 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for HdmiDisplayInformation

   overriding procedure Initialize (this : in out HdmiDisplayInformation);
   overriding procedure Finalize (this : in out HdmiDisplayInformation);

   -----------------------------------------------------------------------------
   -- Static Interfaces for HdmiDisplayInformation

   function GetForCurrentView
   return WinRt.Windows.Graphics.Display.Core.HdmiDisplayInformation;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for HdmiDisplayInformation

   function GetSupportedDisplayModes
   (
      this : in out HdmiDisplayInformation
   )
   return IVectorView_IHdmiDisplayMode.Kind;

   function GetCurrentDisplayMode
   (
      this : in out HdmiDisplayInformation
   )
   return WinRt.Windows.Graphics.Display.Core.HdmiDisplayMode'Class;

   procedure SetDefaultDisplayModeAsync
   (
      this : in out HdmiDisplayInformation
   );

   function RequestSetCurrentDisplayModeAsync
   (
      this : in out HdmiDisplayInformation;
      mode : Windows.Graphics.Display.Core.HdmiDisplayMode'Class
   )
   return WinRt.Boolean;

   function RequestSetCurrentDisplayModeAsync
   (
      this : in out HdmiDisplayInformation;
      mode : Windows.Graphics.Display.Core.HdmiDisplayMode'Class;
      hdrOption : Windows.Graphics.Display.Core.HdmiDisplayHdrOption
   )
   return WinRt.Boolean;

   function RequestSetCurrentDisplayModeAsync
   (
      this : in out HdmiDisplayInformation;
      mode : Windows.Graphics.Display.Core.HdmiDisplayMode'Class;
      hdrOption : Windows.Graphics.Display.Core.HdmiDisplayHdrOption;
      hdrMetadata : Windows.Graphics.Display.Core.HdmiDisplayHdr2086Metadata
   )
   return WinRt.Boolean;

   function add_DisplayModesChanged
   (
      this : in out HdmiDisplayInformation;
      value : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_DisplayModesChanged
   (
      this : in out HdmiDisplayInformation;
      token : Windows.Foundation.EventRegistrationToken
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for HdmiDisplayMode

   overriding procedure Initialize (this : in out HdmiDisplayMode);
   overriding procedure Finalize (this : in out HdmiDisplayMode);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for HdmiDisplayMode

   function get_ResolutionWidthInRawPixels
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.UInt32;

   function get_ResolutionHeightInRawPixels
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.UInt32;

   function get_RefreshRate
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.Double;

   function get_StereoEnabled
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.Boolean;

   function get_BitsPerPixel
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.UInt16;

   function IsEqual
   (
      this : in out HdmiDisplayMode;
      mode : Windows.Graphics.Display.Core.HdmiDisplayMode'Class
   )
   return WinRt.Boolean;

   function get_ColorSpace
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.Windows.Graphics.Display.Core.HdmiDisplayColorSpace;

   function get_PixelEncoding
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.Windows.Graphics.Display.Core.HdmiDisplayPixelEncoding;

   function get_IsSdrLuminanceSupported
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.Boolean;

   function get_IsSmpte2084Supported
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.Boolean;

   function get_Is2086MetadataSupported
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.Boolean;

   function get_IsDolbyVisionLowLatencySupported
   (
      this : in out HdmiDisplayMode
   )
   return WinRt.Boolean;

end;
