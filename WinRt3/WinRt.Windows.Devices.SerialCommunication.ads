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
limited with WinRt.Windows.Storage.Streams;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.SerialCommunication is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IErrorReceivedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IErrorReceivedEventArgs is access IErrorReceivedEventArgs_Interface'Class;
   type IErrorReceivedEventArgs_Ptr is access all IErrorReceivedEventArgs;

   type IPinChangedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IPinChangedEventArgs is access IPinChangedEventArgs_Interface'Class;
   type IPinChangedEventArgs_Ptr is access all IPinChangedEventArgs;

   type ISerialDevice_Interface is interface and WinRt.IInspectable_Interface;
   type ISerialDevice is access ISerialDevice_Interface'Class;
   type ISerialDevice_Ptr is access all ISerialDevice;

   type ISerialDeviceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ISerialDeviceStatics is access ISerialDeviceStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type ErrorReceivedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IErrorReceivedEventArgs : access Windows.Devices.SerialCommunication.IErrorReceivedEventArgs;
      end record;
   type ErrorReceivedEventArgs_Ptr is access all ErrorReceivedEventArgs;

   type PinChangedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IPinChangedEventArgs : access Windows.Devices.SerialCommunication.IPinChangedEventArgs;
      end record;
   type PinChangedEventArgs_Ptr is access all PinChangedEventArgs;

   type SerialDevice is new Ada.Finalization.Limited_Controlled with
      record
         m_ISerialDevice : access Windows.Devices.SerialCommunication.ISerialDevice;
      end record;
   type SerialDevice_Ptr is access all SerialDevice;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type SerialError is (
      Frame_e,
      BufferOverrun_e,
      ReceiveFull_e,
      ReceiveParity_e,
      TransmitFull_e
   );
   for SerialError use (
      Frame_e => 0,
      BufferOverrun_e => 1,
      ReceiveFull_e => 2,
      ReceiveParity_e => 3,
      TransmitFull_e => 4
   );
   type SerialError_Ptr is access all SerialError;

   type SerialHandshake is (
      None_e,
      RequestToSend_e,
      XOnXOff_e,
      RequestToSendXOnXOff_e
   );
   for SerialHandshake use (
      None_e => 0,
      RequestToSend_e => 1,
      XOnXOff_e => 2,
      RequestToSendXOnXOff_e => 3
   );
   type SerialHandshake_Ptr is access all SerialHandshake;

   type SerialParity is (
      None_e,
      Odd_e,
      Even_e,
      Mark_e,
      Space_e
   );
   for SerialParity use (
      None_e => 0,
      Odd_e => 1,
      Even_e => 2,
      Mark_e => 3,
      Space_e => 4
   );
   type SerialParity_Ptr is access all SerialParity;

   type SerialPinChange is (
      BreakSignal_e,
      CarrierDetect_e,
      ClearToSend_e,
      DataSetReady_e,
      RingIndicator_e
   );
   for SerialPinChange use (
      BreakSignal_e => 0,
      CarrierDetect_e => 1,
      ClearToSend_e => 2,
      DataSetReady_e => 3,
      RingIndicator_e => 4
   );
   type SerialPinChange_Ptr is access all SerialPinChange;

   type SerialStopBitCount is (
      One_e,
      OnePointFive_e,
      Two_e
   );
   for SerialStopBitCount use (
      One_e => 0,
      OnePointFive_e => 1,
      Two_e => 2
   );
   type SerialStopBitCount_Ptr is access all SerialStopBitCount;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IErrorReceivedEventArgs is interface and WinRt.IInspectable;

      function get_Error
      (
         this : access IErrorReceivedEventArgs_Interface;
         RetVal : access Windows.Devices.SerialCommunication.SerialError
      )
      return WinRt.Hresult is abstract;

      IID_IErrorReceivedEventArgs : aliased WinRt.IID := (4240883545, 4739, 19850, (191, 223, 86, 107, 51, 221, 178, 143 ));

   -----------------------------------------------------------------------------
   -- type IPinChangedEventArgs is interface and WinRt.IInspectable;

      function get_PinChange
      (
         this : access IPinChangedEventArgs_Interface;
         RetVal : access Windows.Devices.SerialCommunication.SerialPinChange
      )
      return WinRt.Hresult is abstract;

      IID_IPinChangedEventArgs : aliased WinRt.IID := (2730433968, 64668, 17927, (147, 208, 250, 94, 131, 67, 238, 34 ));

   -----------------------------------------------------------------------------
   -- type ISerialDevice is interface and WinRt.IInspectable;

      function get_BaudRate
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function put_BaudRate
      (
         this : access ISerialDevice_Interface;
         value : WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_BreakSignalState
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_BreakSignalState
      (
         this : access ISerialDevice_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_BytesReceived
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_CarrierDetectState
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_ClearToSendState
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_DataBits
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function put_DataBits
      (
         this : access ISerialDevice_Interface;
         value : WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_DataSetReadyState
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_Handshake
      (
         this : access ISerialDevice_Interface;
         RetVal : access Windows.Devices.SerialCommunication.SerialHandshake
      )
      return WinRt.Hresult is abstract;

      function put_Handshake
      (
         this : access ISerialDevice_Interface;
         value : Windows.Devices.SerialCommunication.SerialHandshake
      )
      return WinRt.Hresult is abstract;

      function get_IsDataTerminalReadyEnabled
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_IsDataTerminalReadyEnabled
      (
         this : access ISerialDevice_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsRequestToSendEnabled
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_IsRequestToSendEnabled
      (
         this : access ISerialDevice_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_Parity
      (
         this : access ISerialDevice_Interface;
         RetVal : access Windows.Devices.SerialCommunication.SerialParity
      )
      return WinRt.Hresult is abstract;

      function put_Parity
      (
         this : access ISerialDevice_Interface;
         value : Windows.Devices.SerialCommunication.SerialParity
      )
      return WinRt.Hresult is abstract;

      function get_PortName
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_ReadTimeout
      (
         this : access ISerialDevice_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function put_ReadTimeout
      (
         this : access ISerialDevice_Interface;
         value : Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function get_StopBits
      (
         this : access ISerialDevice_Interface;
         RetVal : access Windows.Devices.SerialCommunication.SerialStopBitCount
      )
      return WinRt.Hresult is abstract;

      function put_StopBits
      (
         this : access ISerialDevice_Interface;
         value : Windows.Devices.SerialCommunication.SerialStopBitCount
      )
      return WinRt.Hresult is abstract;

      function get_UsbVendorId
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_UsbProductId
      (
         this : access ISerialDevice_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_WriteTimeout
      (
         this : access ISerialDevice_Interface;
         RetVal : access Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function put_WriteTimeout
      (
         this : access ISerialDevice_Interface;
         value : Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function get_InputStream
      (
         this : access ISerialDevice_Interface;
         RetVal : access Windows.Storage.Streams.IInputStream
      )
      return WinRt.Hresult is abstract;

      function get_OutputStream
      (
         this : access ISerialDevice_Interface;
         RetVal : access Windows.Storage.Streams.IOutputStream
      )
      return WinRt.Hresult is abstract;

      function add_ErrorReceived
      (
         this : access ISerialDevice_Interface;
         reportHandler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ErrorReceived
      (
         this : access ISerialDevice_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_PinChanged
      (
         this : access ISerialDevice_Interface;
         reportHandler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_PinChanged
      (
         this : access ISerialDevice_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_ISerialDevice : aliased WinRt.IID := (3783773382, 8720, 16719, (182, 90, 245, 85, 58, 3, 55, 42 ));

   -----------------------------------------------------------------------------
   -- type ISerialDeviceStatics is interface and WinRt.IInspectable;

      function GetDeviceSelector
      (
         this : access ISerialDeviceStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelector
      (
         this : access ISerialDeviceStatics_Interface;
         portName : WinRt.HString;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelectorFromUsbVidPid
      (
         this : access ISerialDeviceStatics_Interface;
         vendorId : WinRt.UInt16;
         productId : WinRt.UInt16;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access ISerialDeviceStatics_Interface;
         deviceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ISerialDeviceStatics : aliased WinRt.IID := (93080176, 2102, 18835, (174, 26, 182, 26, 227, 190, 5, 107 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ErrorReceivedEventArgs

   overriding procedure Initialize (this : in out ErrorReceivedEventArgs);
   overriding procedure Finalize (this : in out ErrorReceivedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ErrorReceivedEventArgs

   function get_Error
   (
      this : in out ErrorReceivedEventArgs
   )
   return WinRt.Windows.Devices.SerialCommunication.SerialError;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PinChangedEventArgs

   overriding procedure Initialize (this : in out PinChangedEventArgs);
   overriding procedure Finalize (this : in out PinChangedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PinChangedEventArgs

   function get_PinChange
   (
      this : in out PinChangedEventArgs
   )
   return WinRt.Windows.Devices.SerialCommunication.SerialPinChange;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SerialDevice

   overriding procedure Initialize (this : in out SerialDevice);
   overriding procedure Finalize (this : in out SerialDevice);

   -----------------------------------------------------------------------------
   -- Static Interfaces for SerialDevice

   function GetDeviceSelector
   return WinRt.WString;

   function GetDeviceSelector
   (
      portName : WinRt.WString
   )
   return WinRt.WString;

   function GetDeviceSelectorFromUsbVidPid
   (
      vendorId : WinRt.UInt16;
      productId : WinRt.UInt16
   )
   return WinRt.WString;

   function FromIdAsync
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.SerialCommunication.SerialDevice;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SerialDevice

   function get_BaudRate
   (
      this : in out SerialDevice
   )
   return WinRt.UInt32;

   procedure put_BaudRate
   (
      this : in out SerialDevice;
      value : WinRt.UInt32
   );

   function get_BreakSignalState
   (
      this : in out SerialDevice
   )
   return WinRt.Boolean;

   procedure put_BreakSignalState
   (
      this : in out SerialDevice;
      value : WinRt.Boolean
   );

   function get_BytesReceived
   (
      this : in out SerialDevice
   )
   return WinRt.UInt32;

   function get_CarrierDetectState
   (
      this : in out SerialDevice
   )
   return WinRt.Boolean;

   function get_ClearToSendState
   (
      this : in out SerialDevice
   )
   return WinRt.Boolean;

   function get_DataBits
   (
      this : in out SerialDevice
   )
   return WinRt.UInt16;

   procedure put_DataBits
   (
      this : in out SerialDevice;
      value : WinRt.UInt16
   );

   function get_DataSetReadyState
   (
      this : in out SerialDevice
   )
   return WinRt.Boolean;

   function get_Handshake
   (
      this : in out SerialDevice
   )
   return WinRt.Windows.Devices.SerialCommunication.SerialHandshake;

   procedure put_Handshake
   (
      this : in out SerialDevice;
      value : Windows.Devices.SerialCommunication.SerialHandshake
   );

   function get_IsDataTerminalReadyEnabled
   (
      this : in out SerialDevice
   )
   return WinRt.Boolean;

   procedure put_IsDataTerminalReadyEnabled
   (
      this : in out SerialDevice;
      value : WinRt.Boolean
   );

   function get_IsRequestToSendEnabled
   (
      this : in out SerialDevice
   )
   return WinRt.Boolean;

   procedure put_IsRequestToSendEnabled
   (
      this : in out SerialDevice;
      value : WinRt.Boolean
   );

   function get_Parity
   (
      this : in out SerialDevice
   )
   return WinRt.Windows.Devices.SerialCommunication.SerialParity;

   procedure put_Parity
   (
      this : in out SerialDevice;
      value : Windows.Devices.SerialCommunication.SerialParity
   );

   function get_PortName
   (
      this : in out SerialDevice
   )
   return WinRt.WString;

   function get_ReadTimeout
   (
      this : in out SerialDevice
   )
   return WinRt.Windows.Foundation.TimeSpan;

   procedure put_ReadTimeout
   (
      this : in out SerialDevice;
      value : Windows.Foundation.TimeSpan
   );

   function get_StopBits
   (
      this : in out SerialDevice
   )
   return WinRt.Windows.Devices.SerialCommunication.SerialStopBitCount;

   procedure put_StopBits
   (
      this : in out SerialDevice;
      value : Windows.Devices.SerialCommunication.SerialStopBitCount
   );

   function get_UsbVendorId
   (
      this : in out SerialDevice
   )
   return WinRt.UInt16;

   function get_UsbProductId
   (
      this : in out SerialDevice
   )
   return WinRt.UInt16;

   function get_WriteTimeout
   (
      this : in out SerialDevice
   )
   return WinRt.Windows.Foundation.TimeSpan;

   procedure put_WriteTimeout
   (
      this : in out SerialDevice;
      value : Windows.Foundation.TimeSpan
   );

   function get_InputStream
   (
      this : in out SerialDevice
   )
   return WinRt.Windows.Storage.Streams.IInputStream;

   function get_OutputStream
   (
      this : in out SerialDevice
   )
   return WinRt.Windows.Storage.Streams.IOutputStream;

   function add_ErrorReceived
   (
      this : in out SerialDevice;
      reportHandler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ErrorReceived
   (
      this : in out SerialDevice;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_PinChanged
   (
      this : in out SerialDevice;
      reportHandler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_PinChanged
   (
      this : in out SerialDevice;
      token : Windows.Foundation.EventRegistrationToken
   );

   procedure Close
   (
      this : in out SerialDevice
   );

end;
