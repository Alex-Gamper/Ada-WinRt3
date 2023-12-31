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
limited with WinRt.Windows.Devices.Spi.Provider;
with WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.Spi is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ISpiBusInfo_Interface is interface and WinRt.IInspectable_Interface;
   type ISpiBusInfo is access all ISpiBusInfo_Interface'Class;
   type ISpiBusInfo_Ptr is access all ISpiBusInfo;

   type ISpiConnectionSettings_Interface is interface and WinRt.IInspectable_Interface;
   type ISpiConnectionSettings is access all ISpiConnectionSettings_Interface'Class;
   type ISpiConnectionSettings_Ptr is access all ISpiConnectionSettings;

   type ISpiConnectionSettingsFactory_Interface is interface and WinRt.IInspectable_Interface;
   type ISpiConnectionSettingsFactory is access all ISpiConnectionSettingsFactory_Interface'Class;

   type ISpiController_Interface is interface and WinRt.IInspectable_Interface;
   type ISpiController is access all ISpiController_Interface'Class;
   type ISpiController_Ptr is access all ISpiController;

   type ISpiControllerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ISpiControllerStatics is access all ISpiControllerStatics_Interface'Class;

   type ISpiDevice_Interface is interface and WinRt.IInspectable_Interface;
   type ISpiDevice is access all ISpiDevice_Interface'Class;
   type ISpiDevice_Ptr is access all ISpiDevice;

   type ISpiDeviceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ISpiDeviceStatics is access all ISpiDeviceStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type SpiBusInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_ISpiBusInfo : access Windows.Devices.Spi.ISpiBusInfo;
      end record;
   type SpiBusInfo_Ptr is access all SpiBusInfo;

   type SpiConnectionSettings is new Ada.Finalization.Limited_Controlled with
      record
         m_ISpiConnectionSettings : access Windows.Devices.Spi.ISpiConnectionSettings;
      end record;
   type SpiConnectionSettings_Ptr is access all SpiConnectionSettings;

   type SpiController is new Ada.Finalization.Limited_Controlled with
      record
         m_ISpiController : access Windows.Devices.Spi.ISpiController;
      end record;
   type SpiController_Ptr is access all SpiController;

   type SpiDevice is new Ada.Finalization.Limited_Controlled with
      record
         m_ISpiDevice : access Windows.Devices.Spi.ISpiDevice;
      end record;
   type SpiDevice_Ptr is access all SpiDevice;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type SpiMode is (
      Mode0_e,
      Mode1_e,
      Mode2_e,
      Mode3_e
   );
   for SpiMode use (
      Mode0_e => 0,
      Mode1_e => 1,
      Mode2_e => 2,
      Mode3_e => 3
   );
   type SpiMode_Ptr is access all SpiMode;

   type SpiSharingMode is (
      Exclusive_e,
      Shared_e
   );
   for SpiSharingMode use (
      Exclusive_e => 0,
      Shared_e => 1
   );
   type SpiSharingMode_Ptr is access all SpiSharingMode;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_Int32 is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Int32);
   IID_IVectorView_Int32 : aliased WinRt.IID := (641341619, 1120, 20585, (185, 195, 178, 31, 169, 9, 212, 198 ));
   function QInterface_IVectorView_Int32 is new Generic_QueryInterface (GenericObject_Interface, IVectorView_Int32.Kind, IID_IVectorView_Int32'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ISpiBusInfo is interface and WinRt.IInspectable;

      function get_ChipSelectLineCount
      (
         this : access ISpiBusInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_MinClockFrequency
      (
         this : access ISpiBusInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_MaxClockFrequency
      (
         this : access ISpiBusInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_SupportedDataBitLengths
      (
         this : access ISpiBusInfo_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ISpiBusInfo : aliased WinRt.IID := (2569618506, 21746, 18630, (185, 82, 156, 50, 252, 2, 198, 105 ));

   -----------------------------------------------------------------------------
   -- type ISpiConnectionSettings is interface and WinRt.IInspectable;

      function get_ChipSelectLine
      (
         this : access ISpiConnectionSettings_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function put_ChipSelectLine
      (
         this : access ISpiConnectionSettings_Interface;
         value : WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_Mode
      (
         this : access ISpiConnectionSettings_Interface;
         RetVal : access Windows.Devices.Spi.SpiMode
      )
      return WinRt.Hresult is abstract;

      function put_Mode
      (
         this : access ISpiConnectionSettings_Interface;
         value : Windows.Devices.Spi.SpiMode
      )
      return WinRt.Hresult is abstract;

      function get_DataBitLength
      (
         this : access ISpiConnectionSettings_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function put_DataBitLength
      (
         this : access ISpiConnectionSettings_Interface;
         value : WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_ClockFrequency
      (
         this : access ISpiConnectionSettings_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function put_ClockFrequency
      (
         this : access ISpiConnectionSettings_Interface;
         value : WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_SharingMode
      (
         this : access ISpiConnectionSettings_Interface;
         RetVal : access Windows.Devices.Spi.SpiSharingMode
      )
      return WinRt.Hresult is abstract;

      function put_SharingMode
      (
         this : access ISpiConnectionSettings_Interface;
         value : Windows.Devices.Spi.SpiSharingMode
      )
      return WinRt.Hresult is abstract;

      IID_ISpiConnectionSettings : aliased WinRt.IID := (1384358783, 63797, 19359, (167, 167, 58, 120, 144, 175, 165, 206 ));

   -----------------------------------------------------------------------------
   -- type ISpiConnectionSettingsFactory is interface and WinRt.IInspectable;

      function Create
      (
         this : access ISpiConnectionSettingsFactory_Interface;
         chipSelectLine : WinRt.Int32;
         RetVal : access Windows.Devices.Spi.ISpiConnectionSettings
      )
      return WinRt.Hresult is abstract;

      IID_ISpiConnectionSettingsFactory : aliased WinRt.IID := (4288219166, 4292, 17591, (159, 234, 167, 72, 181, 164, 111, 49 ));

   -----------------------------------------------------------------------------
   -- type ISpiController is interface and WinRt.IInspectable;

      function GetDevice
      (
         this : access ISpiController_Interface;
         settings : Windows.Devices.Spi.ISpiConnectionSettings;
         RetVal : access Windows.Devices.Spi.ISpiDevice
      )
      return WinRt.Hresult is abstract;

      IID_ISpiController : aliased WinRt.IID := (2832451625, 39061, 16729, (169, 52, 135, 65, 241, 238, 109, 39 ));

   -----------------------------------------------------------------------------
   -- type ISpiControllerStatics is interface and WinRt.IInspectable;

      function GetDefaultAsync
      (
         this : access ISpiControllerStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetControllersAsync
      (
         this : access ISpiControllerStatics_Interface;
         provider : Windows.Devices.Spi.Provider.ISpiProvider;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ISpiControllerStatics : aliased WinRt.IID := (223488482, 5003, 20040, (185, 100, 79, 47, 121, 185, 197, 162 ));

   -----------------------------------------------------------------------------
   -- type ISpiDevice is interface and WinRt.IInspectable;

      function get_DeviceId
      (
         this : access ISpiDevice_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ConnectionSettings
      (
         this : access ISpiDevice_Interface;
         RetVal : access Windows.Devices.Spi.ISpiConnectionSettings
      )
      return WinRt.Hresult is abstract;

      function Write
      (
         this : access ISpiDevice_Interface;
         bufferSize : WinRt.UInt32;
         buffer : WinRt.Byte_Ptr
      )
      return WinRt.Hresult is abstract;

      function Read
      (
         this : access ISpiDevice_Interface;
         bufferSize : WinRt.UInt32;
         buffer : WinRt.Byte_Ptr
      )
      return WinRt.Hresult is abstract;

      function TransferSequential
      (
         this : access ISpiDevice_Interface;
         writeBufferSize : WinRt.UInt32;
         writeBuffer : WinRt.Byte_Ptr;
         readBufferSize : WinRt.UInt32;
         readBuffer : WinRt.Byte_Ptr
      )
      return WinRt.Hresult is abstract;

      function TransferFullDuplex
      (
         this : access ISpiDevice_Interface;
         writeBufferSize : WinRt.UInt32;
         writeBuffer : WinRt.Byte_Ptr;
         readBufferSize : WinRt.UInt32;
         readBuffer : WinRt.Byte_Ptr
      )
      return WinRt.Hresult is abstract;

      IID_ISpiDevice : aliased WinRt.IID := (97858925, 4534, 19769, (132, 213, 149, 223, 180, 201, 242, 206 ));

   -----------------------------------------------------------------------------
   -- type ISpiDeviceStatics is interface and WinRt.IInspectable;

      function GetDeviceSelector
      (
         this : access ISpiDeviceStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelector
      (
         this : access ISpiDeviceStatics_Interface;
         friendlyName : WinRt.HString;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetBusInfo
      (
         this : access ISpiDeviceStatics_Interface;
         busId : WinRt.HString;
         RetVal : access Windows.Devices.Spi.ISpiBusInfo
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access ISpiDeviceStatics_Interface;
         busId : WinRt.HString;
         settings : Windows.Devices.Spi.ISpiConnectionSettings;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ISpiDeviceStatics : aliased WinRt.IID := (2725832025, 22304, 19775, (189, 147, 86, 245, 255, 90, 88, 121 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpiBusInfo

   overriding procedure Initialize (this : in out SpiBusInfo);
   overriding procedure Finalize (this : in out SpiBusInfo);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpiBusInfo

   function get_ChipSelectLineCount
   (
      this : in out SpiBusInfo
   )
   return WinRt.Int32;

   function get_MinClockFrequency
   (
      this : in out SpiBusInfo
   )
   return WinRt.Int32;

   function get_MaxClockFrequency
   (
      this : in out SpiBusInfo
   )
   return WinRt.Int32;

   function get_SupportedDataBitLengths
   (
      this : in out SpiBusInfo
   )
   return IVectorView_Int32.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpiConnectionSettings

   overriding procedure Initialize (this : in out SpiConnectionSettings);
   overriding procedure Finalize (this : in out SpiConnectionSettings);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SpiConnectionSettings

   function Constructor
   (
      chipSelectLine : WinRt.Int32
   )
   return SpiConnectionSettings;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpiConnectionSettings

   function get_ChipSelectLine
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Int32;

   procedure put_ChipSelectLine
   (
      this : in out SpiConnectionSettings;
      value : WinRt.Int32
   );

   function get_Mode
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Windows.Devices.Spi.SpiMode;

   procedure put_Mode
   (
      this : in out SpiConnectionSettings;
      value : Windows.Devices.Spi.SpiMode
   );

   function get_DataBitLength
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Int32;

   procedure put_DataBitLength
   (
      this : in out SpiConnectionSettings;
      value : WinRt.Int32
   );

   function get_ClockFrequency
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Int32;

   procedure put_ClockFrequency
   (
      this : in out SpiConnectionSettings;
      value : WinRt.Int32
   );

   function get_SharingMode
   (
      this : in out SpiConnectionSettings
   )
   return WinRt.Windows.Devices.Spi.SpiSharingMode;

   procedure put_SharingMode
   (
      this : in out SpiConnectionSettings;
      value : Windows.Devices.Spi.SpiSharingMode
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpiController

   overriding procedure Initialize (this : in out SpiController);
   overriding procedure Finalize (this : in out SpiController);

   -----------------------------------------------------------------------------
   -- Static Interfaces for SpiController

   function GetDefaultAsync
   return WinRt.Windows.Devices.Spi.SpiController;

   function GetControllersAsync
   (
      provider : Windows.Devices.Spi.Provider.ISpiProvider
   )
   return WinRt.GenericObject;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpiController

   function GetDevice
   (
      this : in out SpiController;
      settings : Windows.Devices.Spi.SpiConnectionSettings'Class
   )
   return WinRt.Windows.Devices.Spi.SpiDevice'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SpiDevice

   overriding procedure Initialize (this : in out SpiDevice);
   overriding procedure Finalize (this : in out SpiDevice);

   -----------------------------------------------------------------------------
   -- Static Interfaces for SpiDevice

   function GetDeviceSelector
   return WinRt.WString;

   function GetDeviceSelector
   (
      friendlyName : WinRt.WString
   )
   return WinRt.WString;

   function GetBusInfo
   (
      busId : WinRt.WString
   )
   return WinRt.Windows.Devices.Spi.SpiBusInfo;

   function FromIdAsync
   (
      busId : WinRt.WString;
      settings : Windows.Devices.Spi.SpiConnectionSettings'Class
   )
   return WinRt.Windows.Devices.Spi.SpiDevice;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SpiDevice

   function get_DeviceId
   (
      this : in out SpiDevice
   )
   return WinRt.WString;

   function get_ConnectionSettings
   (
      this : in out SpiDevice
   )
   return WinRt.Windows.Devices.Spi.SpiConnectionSettings'Class;

   procedure Write
   (
      this : in out SpiDevice;
      buffer : WinRt.Byte_Array
   );

   procedure Read
   (
      this : in out SpiDevice;
      buffer : WinRt.Byte_Array
   );

   procedure TransferSequential
   (
      this : in out SpiDevice;
      writeBuffer : WinRt.Byte_Array;
      readBuffer : WinRt.Byte_Array
   );

   procedure TransferFullDuplex
   (
      this : in out SpiDevice;
      writeBuffer : WinRt.Byte_Array;
      readBuffer : WinRt.Byte_Array
   );

   procedure Close
   (
      this : in out SpiDevice
   );

end;
