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
limited with WinRt.Windows.Storage.Streams;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Security.Cryptography is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ICryptographicBufferStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ICryptographicBufferStatics is access ICryptographicBufferStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type BinaryStringEncoding is (
      Utf8_e,
      Utf16LE_e,
      Utf16BE_e
   );
   for BinaryStringEncoding use (
      Utf8_e => 0,
      Utf16LE_e => 1,
      Utf16BE_e => 2
   );
   type BinaryStringEncoding_Ptr is access BinaryStringEncoding;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ICryptographicBufferStatics is interface and WinRt.IInspectable;

      function Compare
      (
         this : access ICryptographicBufferStatics_Interface;
         object1 : Windows.Storage.Streams.IBuffer;
         object2 : Windows.Storage.Streams.IBuffer;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function GenerateRandom
      (
         this : access ICryptographicBufferStatics_Interface;
         length : WinRt.UInt32;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function GenerateRandomNumber
      (
         this : access ICryptographicBufferStatics_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function CreateFromByteArray
      (
         this : access ICryptographicBufferStatics_Interface;
         valueSize : WinRt.UInt32;
         value : WinRt.Byte_Ptr;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function CopyToByteArray
      (
         this : access ICryptographicBufferStatics_Interface;
         buffer : Windows.Storage.Streams.IBuffer;
         valueSize : WinRt.UInt32;
         value : WinRt.Byte_Ptr
      )
      return WinRt.Hresult is abstract;

      function DecodeFromHexString
      (
         this : access ICryptographicBufferStatics_Interface;
         value : WinRt.HString;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function EncodeToHexString
      (
         this : access ICryptographicBufferStatics_Interface;
         buffer : Windows.Storage.Streams.IBuffer;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function DecodeFromBase64String
      (
         this : access ICryptographicBufferStatics_Interface;
         value : WinRt.HString;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function EncodeToBase64String
      (
         this : access ICryptographicBufferStatics_Interface;
         buffer : Windows.Storage.Streams.IBuffer;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function ConvertStringToBinary
      (
         this : access ICryptographicBufferStatics_Interface;
         value : WinRt.HString;
         encoding : Windows.Security.Cryptography.BinaryStringEncoding;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function ConvertBinaryToString
      (
         this : access ICryptographicBufferStatics_Interface;
         encoding : Windows.Security.Cryptography.BinaryStringEncoding;
         buffer : Windows.Storage.Streams.IBuffer;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_ICryptographicBufferStatics : aliased WinRt.IID := (839613986, 15536, 19679, (134, 99, 29, 40, 145, 0, 101, 235 ));

end;
