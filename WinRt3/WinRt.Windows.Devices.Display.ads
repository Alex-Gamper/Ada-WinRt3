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
limited with WinRt.Windows.Graphics;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.Display is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IDisplayMonitor_Interface is interface and WinRt.IInspectable_Interface;
   type IDisplayMonitor is access IDisplayMonitor_Interface'Class;
   type IDisplayMonitor_Ptr is access all IDisplayMonitor;

   type IDisplayMonitor2_Interface is interface and WinRt.IInspectable_Interface;
   type IDisplayMonitor2 is access IDisplayMonitor2_Interface'Class;

   type IDisplayMonitorStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IDisplayMonitorStatics is access IDisplayMonitorStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type DisplayMonitor is new Ada.Finalization.Limited_Controlled with
      record
         m_IDisplayMonitor : access Windows.Devices.Display.IDisplayMonitor;
      end record;
   type DisplayMonitor_Ptr is access all DisplayMonitor;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type DisplayMonitorConnectionKind is (
      Internal_e,
      Wired_e,
      Wireless_e,
      Virtual_e
   );
   for DisplayMonitorConnectionKind use (
      Internal_e => 0,
      Wired_e => 1,
      Wireless_e => 2,
      Virtual_e => 3
   );
   type DisplayMonitorConnectionKind_Ptr is access DisplayMonitorConnectionKind;

   type DisplayMonitorDescriptorKind is (
      Edid_e,
      DisplayId_e
   );
   for DisplayMonitorDescriptorKind use (
      Edid_e => 0,
      DisplayId_e => 1
   );
   type DisplayMonitorDescriptorKind_Ptr is access DisplayMonitorDescriptorKind;

   type DisplayMonitorPhysicalConnectorKind is (
      Unknown_e,
      HD15_e,
      AnalogTV_e,
      Dvi_e,
      Hdmi_e,
      Lvds_e,
      Sdi_e,
      DisplayPort_e
   );
   for DisplayMonitorPhysicalConnectorKind use (
      Unknown_e => 0,
      HD15_e => 1,
      AnalogTV_e => 2,
      Dvi_e => 3,
      Hdmi_e => 4,
      Lvds_e => 5,
      Sdi_e => 6,
      DisplayPort_e => 7
   );
   type DisplayMonitorPhysicalConnectorKind_Ptr is access DisplayMonitorPhysicalConnectorKind;

   type DisplayMonitorUsageKind is (
      Standard_e,
      HeadMounted_e,
      SpecialPurpose_e
   );
   for DisplayMonitorUsageKind use (
      Standard_e => 0,
      HeadMounted_e => 1,
      SpecialPurpose_e => 2
   );
   type DisplayMonitorUsageKind_Ptr is access DisplayMonitorUsageKind;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IReference_Size is new WinRt.Windows.Foundation.IReference (WinRt.Windows.Foundation.Size);
   IID_IReference_Size : aliased WinRt.IID := (3033432288, 44150, 24156, (169, 229, 86, 175, 22, 251, 156, 67 ));
   function QInterface_IReference_Size is new Generic_QueryInterface (GenericObject_Interface, IReference_Size.Kind, IID_IReference_Size'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IDisplayMonitor is interface and WinRt.IInspectable;

      function get_DeviceId
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_DisplayName
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ConnectionKind
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access Windows.Devices.Display.DisplayMonitorConnectionKind
      )
      return WinRt.Hresult is abstract;

      function get_PhysicalConnector
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access Windows.Devices.Display.DisplayMonitorPhysicalConnectorKind
      )
      return WinRt.Hresult is abstract;

      function get_DisplayAdapterDeviceId
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_DisplayAdapterId
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access Windows.Graphics.DisplayAdapterId
      )
      return WinRt.Hresult is abstract;

      function get_DisplayAdapterTargetId
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_UsageKind
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access Windows.Devices.Display.DisplayMonitorUsageKind
      )
      return WinRt.Hresult is abstract;

      function get_NativeResolutionInRawPixels
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access Windows.Graphics.SizeInt32
      )
      return WinRt.Hresult is abstract;

      function get_PhysicalSizeInInches
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_RawDpiX
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function get_RawDpiY
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function get_RedPrimary
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access Windows.Foundation.Point
      )
      return WinRt.Hresult is abstract;

      function get_GreenPrimary
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access Windows.Foundation.Point
      )
      return WinRt.Hresult is abstract;

      function get_BluePrimary
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access Windows.Foundation.Point
      )
      return WinRt.Hresult is abstract;

      function get_WhitePoint
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access Windows.Foundation.Point
      )
      return WinRt.Hresult is abstract;

      function get_MaxLuminanceInNits
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function get_MinLuminanceInNits
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function get_MaxAverageFullFrameLuminanceInNits
      (
         this : access IDisplayMonitor_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function GetDescriptor
      (
         this : access IDisplayMonitor_Interface;
         descriptorKind : Windows.Devices.Display.DisplayMonitorDescriptorKind;
         RetValSize : access WinRt.UInt32;
         RetVal : access WinRt.Byte_Ptr
      )
      return WinRt.Hresult is abstract;

      IID_IDisplayMonitor : aliased WinRt.IID := (527111636, 7425, 19537, (135, 226, 111, 149, 74, 119, 43, 89 ));

   -----------------------------------------------------------------------------
   -- type IDisplayMonitor2 is interface and WinRt.IInspectable;

      function get_IsDolbyVisionSupportedInHdrMode
      (
         this : access IDisplayMonitor2_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IDisplayMonitor2 : aliased WinRt.IID := (36706534, 52003, 22576, (150, 223, 167, 191, 110, 96, 37, 119 ));

   -----------------------------------------------------------------------------
   -- type IDisplayMonitorStatics is interface and WinRt.IInspectable;

      function GetDeviceSelector
      (
         this : access IDisplayMonitorStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access IDisplayMonitorStatics_Interface;
         deviceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function FromInterfaceIdAsync
      (
         this : access IDisplayMonitorStatics_Interface;
         deviceInterfaceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IDisplayMonitorStatics : aliased WinRt.IID := (1856924047, 41512, 19461, (130, 29, 182, 149, 214, 103, 222, 142 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DisplayMonitor

   overriding procedure Initialize (this : in out DisplayMonitor);
   overriding procedure Finalize (this : in out DisplayMonitor);

   -----------------------------------------------------------------------------
   -- Static Interfaces for DisplayMonitor

   function GetDeviceSelector
   return WinRt.WString;

   function FromIdAsync
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Display.DisplayMonitor;

   function FromInterfaceIdAsync
   (
      deviceInterfaceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Display.DisplayMonitor;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DisplayMonitor

   function get_DeviceId
   (
      this : in out DisplayMonitor
   )
   return WinRt.WString;

   function get_DisplayName
   (
      this : in out DisplayMonitor
   )
   return WinRt.WString;

   function get_ConnectionKind
   (
      this : in out DisplayMonitor
   )
   return WinRt.Windows.Devices.Display.DisplayMonitorConnectionKind;

   function get_PhysicalConnector
   (
      this : in out DisplayMonitor
   )
   return WinRt.Windows.Devices.Display.DisplayMonitorPhysicalConnectorKind;

   function get_DisplayAdapterDeviceId
   (
      this : in out DisplayMonitor
   )
   return WinRt.WString;

   function get_DisplayAdapterId
   (
      this : in out DisplayMonitor
   )
   return WinRt.Windows.Graphics.DisplayAdapterId;

   function get_DisplayAdapterTargetId
   (
      this : in out DisplayMonitor
   )
   return WinRt.UInt32;

   function get_UsageKind
   (
      this : in out DisplayMonitor
   )
   return WinRt.Windows.Devices.Display.DisplayMonitorUsageKind;

   function get_NativeResolutionInRawPixels
   (
      this : in out DisplayMonitor
   )
   return WinRt.Windows.Graphics.SizeInt32;

   function get_PhysicalSizeInInches
   (
      this : in out DisplayMonitor
   )
   return IReference_Size.Kind;

   function get_RawDpiX
   (
      this : in out DisplayMonitor
   )
   return WinRt.Single;

   function get_RawDpiY
   (
      this : in out DisplayMonitor
   )
   return WinRt.Single;

   function get_RedPrimary
   (
      this : in out DisplayMonitor
   )
   return WinRt.Windows.Foundation.Point;

   function get_GreenPrimary
   (
      this : in out DisplayMonitor
   )
   return WinRt.Windows.Foundation.Point;

   function get_BluePrimary
   (
      this : in out DisplayMonitor
   )
   return WinRt.Windows.Foundation.Point;

   function get_WhitePoint
   (
      this : in out DisplayMonitor
   )
   return WinRt.Windows.Foundation.Point;

   function get_MaxLuminanceInNits
   (
      this : in out DisplayMonitor
   )
   return WinRt.Single;

   function get_MinLuminanceInNits
   (
      this : in out DisplayMonitor
   )
   return WinRt.Single;

   function get_MaxAverageFullFrameLuminanceInNits
   (
      this : in out DisplayMonitor
   )
   return WinRt.Single;

   function GetDescriptor
   (
      this : in out DisplayMonitor;
      descriptorKind : Windows.Devices.Display.DisplayMonitorDescriptorKind
   )
   return WinRt.Byte_Array;

   function get_IsDolbyVisionSupportedInHdrMode
   (
      this : in out DisplayMonitor
   )
   return WinRt.Boolean;

end;
