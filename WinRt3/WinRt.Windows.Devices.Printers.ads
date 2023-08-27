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
package WinRt.Windows.Devices.Printers is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPrint3DDevice_Interface is interface and WinRt.IInspectable_Interface;
   type IPrint3DDevice is access all IPrint3DDevice_Interface'Class;
   type IPrint3DDevice_Ptr is access all IPrint3DDevice;

   type IPrint3DDeviceStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPrint3DDeviceStatics is access all IPrint3DDeviceStatics_Interface'Class;

   type IPrintSchema_Interface is interface and WinRt.IInspectable_Interface;
   type IPrintSchema is access all IPrintSchema_Interface'Class;
   type IPrintSchema_Ptr is access all IPrintSchema;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type Print3DDevice is new Ada.Finalization.Limited_Controlled with
      record
         m_IPrint3DDevice : access Windows.Devices.Printers.IPrint3DDevice;
      end record;
   type Print3DDevice_Ptr is access all Print3DDevice;

   type PrintSchema is new Ada.Finalization.Limited_Controlled with
      record
         m_IPrintSchema : access Windows.Devices.Printers.IPrintSchema;
      end record;
   type PrintSchema_Ptr is access all PrintSchema;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type PrintersContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type PrintersContract_Ptr is access all PrintersContract;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPrint3DDevice is interface and WinRt.IInspectable;

      function get_PrintSchema
      (
         this : access IPrint3DDevice_Interface;
         RetVal : access Windows.Devices.Printers.IPrintSchema
      )
      return WinRt.Hresult is abstract;

      IID_IPrint3DDevice : aliased WinRt.IID := (68959513, 38675, 17058, (152, 19, 125, 195, 51, 116, 40, 211 ));

   -----------------------------------------------------------------------------
   -- type IPrint3DDeviceStatics is interface and WinRt.IInspectable;

      function FromIdAsync
      (
         this : access IPrint3DDeviceStatics_Interface;
         deviceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelector
      (
         this : access IPrint3DDeviceStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IPrint3DDeviceStatics : aliased WinRt.IID := (4259537418, 26573, 16823, (163, 68, 81, 80, 161, 253, 117, 181 ));

   -----------------------------------------------------------------------------
   -- type IPrintSchema is interface and WinRt.IInspectable;

      function GetDefaultPrintTicketAsync
      (
         this : access IPrintSchema_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetCapabilitiesAsync
      (
         this : access IPrintSchema_Interface;
         constrainTicket : Windows.Storage.Streams.IRandomAccessStreamWithContentType;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function MergeAndValidateWithDefaultPrintTicketAsync
      (
         this : access IPrintSchema_Interface;
         deltaTicket : Windows.Storage.Streams.IRandomAccessStreamWithContentType;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPrintSchema : aliased WinRt.IID := (3266937622, 9912, 19451, (129, 56, 159, 150, 44, 34, 163, 91 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for Print3DDevice

   overriding procedure Initialize (this : in out Print3DDevice);
   overriding procedure Finalize (this : in out Print3DDevice);

   -----------------------------------------------------------------------------
   -- Static Interfaces for Print3DDevice

   function FromIdAsync
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Printers.Print3DDevice;

   function GetDeviceSelector
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for Print3DDevice

   function get_PrintSchema
   (
      this : in out Print3DDevice
   )
   return WinRt.Windows.Devices.Printers.PrintSchema'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PrintSchema

   overriding procedure Initialize (this : in out PrintSchema);
   overriding procedure Finalize (this : in out PrintSchema);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PrintSchema

   function GetDefaultPrintTicketAsync
   (
      this : in out PrintSchema
   )
   return WinRt.Windows.Storage.Streams.IRandomAccessStreamWithContentType;

   function GetCapabilitiesAsync
   (
      this : in out PrintSchema;
      constrainTicket : Windows.Storage.Streams.IRandomAccessStreamWithContentType
   )
   return WinRt.Windows.Storage.Streams.IRandomAccessStreamWithContentType;

   function MergeAndValidateWithDefaultPrintTicketAsync
   (
      this : in out PrintSchema;
      deltaTicket : Windows.Storage.Streams.IRandomAccessStreamWithContentType
   )
   return WinRt.Windows.Storage.Streams.IRandomAccessStreamWithContentType;

end;