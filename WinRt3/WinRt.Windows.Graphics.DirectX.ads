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
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Graphics.DirectX is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type DirectXAlphaMode is (
      Unspecified_e,
      Premultiplied_e,
      Straight_e,
      Ignore_e
   );
   for DirectXAlphaMode use (
      Unspecified_e => 0,
      Premultiplied_e => 1,
      Straight_e => 2,
      Ignore_e => 3
   );
   type DirectXAlphaMode_Ptr is access all DirectXAlphaMode;

   type DirectXColorSpace is (
      RgbFullG22NoneP709_e,
      RgbFullG10NoneP709_e,
      RgbStudioG22NoneP709_e,
      RgbStudioG22NoneP2020_e,
      Reserved_e,
      YccFullG22NoneP709X601_e,
      YccStudioG22LeftP601_e,
      YccFullG22LeftP601_e,
      YccStudioG22LeftP709_e,
      YccFullG22LeftP709_e,
      YccStudioG22LeftP2020_e,
      YccFullG22LeftP2020_e,
      RgbFullG2084NoneP2020_e,
      YccStudioG2084LeftP2020_e,
      RgbStudioG2084NoneP2020_e,
      YccStudioG22TopLeftP2020_e,
      YccStudioG2084TopLeftP2020_e,
      RgbFullG22NoneP2020_e,
      YccStudioGHlgTopLeftP2020_e,
      YccFullGHlgTopLeftP2020_e,
      RgbStudioG24NoneP709_e,
      RgbStudioG24NoneP2020_e,
      YccStudioG24LeftP709_e,
      YccStudioG24LeftP2020_e,
      YccStudioG24TopLeftP2020_e
   );
   for DirectXColorSpace use (
      RgbFullG22NoneP709_e => 0,
      RgbFullG10NoneP709_e => 1,
      RgbStudioG22NoneP709_e => 2,
      RgbStudioG22NoneP2020_e => 3,
      Reserved_e => 4,
      YccFullG22NoneP709X601_e => 5,
      YccStudioG22LeftP601_e => 6,
      YccFullG22LeftP601_e => 7,
      YccStudioG22LeftP709_e => 8,
      YccFullG22LeftP709_e => 9,
      YccStudioG22LeftP2020_e => 10,
      YccFullG22LeftP2020_e => 11,
      RgbFullG2084NoneP2020_e => 12,
      YccStudioG2084LeftP2020_e => 13,
      RgbStudioG2084NoneP2020_e => 14,
      YccStudioG22TopLeftP2020_e => 15,
      YccStudioG2084TopLeftP2020_e => 16,
      RgbFullG22NoneP2020_e => 17,
      YccStudioGHlgTopLeftP2020_e => 18,
      YccFullGHlgTopLeftP2020_e => 19,
      RgbStudioG24NoneP709_e => 20,
      RgbStudioG24NoneP2020_e => 21,
      YccStudioG24LeftP709_e => 22,
      YccStudioG24LeftP2020_e => 23,
      YccStudioG24TopLeftP2020_e => 24
   );
   type DirectXColorSpace_Ptr is access all DirectXColorSpace;

   type DirectXPixelFormat is (
      Unknown_e,
      R32G32B32A32Typeless_e,
      R32G32B32A32Float_e,
      R32G32B32A32UInt_e,
      R32G32B32A32Int_e,
      R32G32B32Typeless_e,
      R32G32B32Float_e,
      R32G32B32UInt_e,
      R32G32B32Int_e,
      R16G16B16A16Typeless_e,
      R16G16B16A16Float_e,
      R16G16B16A16UIntNormalized_e,
      R16G16B16A16UInt_e,
      R16G16B16A16IntNormalized_e,
      R16G16B16A16Int_e,
      R32G32Typeless_e,
      R32G32Float_e,
      R32G32UInt_e,
      R32G32Int_e,
      R32G8X24Typeless_e,
      D32FloatS8X24UInt_e,
      R32FloatX8X24Typeless_e,
      X32TypelessG8X24UInt_e,
      R10G10B10A2Typeless_e,
      R10G10B10A2UIntNormalized_e,
      R10G10B10A2UInt_e,
      R11G11B10Float_e,
      R8G8B8A8Typeless_e,
      R8G8B8A8UIntNormalized_e,
      R8G8B8A8UIntNormalizedSrgb_e,
      R8G8B8A8UInt_e,
      R8G8B8A8IntNormalized_e,
      R8G8B8A8Int_e,
      R16G16Typeless_e,
      R16G16Float_e,
      R16G16UIntNormalized_e,
      R16G16UInt_e,
      R16G16IntNormalized_e,
      R16G16Int_e,
      R32Typeless_e,
      D32Float_e,
      R32Float_e,
      R32UInt_e,
      R32Int_e,
      R24G8Typeless_e,
      D24UIntNormalizedS8UInt_e,
      R24UIntNormalizedX8Typeless_e,
      X24TypelessG8UInt_e,
      R8G8Typeless_e,
      R8G8UIntNormalized_e,
      R8G8UInt_e,
      R8G8IntNormalized_e,
      R8G8Int_e,
      R16Typeless_e,
      R16Float_e,
      D16UIntNormalized_e,
      R16UIntNormalized_e,
      R16UInt_e,
      R16IntNormalized_e,
      R16Int_e,
      R8Typeless_e,
      R8UIntNormalized_e,
      R8UInt_e,
      R8IntNormalized_e,
      R8Int_e,
      A8UIntNormalized_e,
      R1UIntNormalized_e,
      R9G9B9E5SharedExponent_e,
      R8G8B8G8UIntNormalized_e,
      G8R8G8B8UIntNormalized_e,
      BC1Typeless_e,
      BC1UIntNormalized_e,
      BC1UIntNormalizedSrgb_e,
      BC2Typeless_e,
      BC2UIntNormalized_e,
      BC2UIntNormalizedSrgb_e,
      BC3Typeless_e,
      BC3UIntNormalized_e,
      BC3UIntNormalizedSrgb_e,
      BC4Typeless_e,
      BC4UIntNormalized_e,
      BC4IntNormalized_e,
      BC5Typeless_e,
      BC5UIntNormalized_e,
      BC5IntNormalized_e,
      B5G6R5UIntNormalized_e,
      B5G5R5A1UIntNormalized_e,
      B8G8R8A8UIntNormalized_e,
      B8G8R8X8UIntNormalized_e,
      R10G10B10XRBiasA2UIntNormalized_e,
      B8G8R8A8Typeless_e,
      B8G8R8A8UIntNormalizedSrgb_e,
      B8G8R8X8Typeless_e,
      B8G8R8X8UIntNormalizedSrgb_e,
      BC6HTypeless_e,
      BC6H16UnsignedFloat_e,
      BC6H16Float_e,
      BC7Typeless_e,
      BC7UIntNormalized_e,
      BC7UIntNormalizedSrgb_e,
      Ayuv_e,
      Y410_e,
      Y416_e,
      NV12_e,
      P010_e,
      P016_e,
      Opaque420_e,
      Yuy2_e,
      Y210_e,
      Y216_e,
      NV11_e,
      AI44_e,
      IA44_e,
      P8_e,
      A8P8_e,
      B4G4R4A4UIntNormalized_e,
      P208_e,
      V208_e,
      V408_e,
      SamplerFeedbackMinMipOpaque_e,
      SamplerFeedbackMipRegionUsedOpaque_e
   );
   for DirectXPixelFormat use (
      Unknown_e => 0,
      R32G32B32A32Typeless_e => 1,
      R32G32B32A32Float_e => 2,
      R32G32B32A32UInt_e => 3,
      R32G32B32A32Int_e => 4,
      R32G32B32Typeless_e => 5,
      R32G32B32Float_e => 6,
      R32G32B32UInt_e => 7,
      R32G32B32Int_e => 8,
      R16G16B16A16Typeless_e => 9,
      R16G16B16A16Float_e => 10,
      R16G16B16A16UIntNormalized_e => 11,
      R16G16B16A16UInt_e => 12,
      R16G16B16A16IntNormalized_e => 13,
      R16G16B16A16Int_e => 14,
      R32G32Typeless_e => 15,
      R32G32Float_e => 16,
      R32G32UInt_e => 17,
      R32G32Int_e => 18,
      R32G8X24Typeless_e => 19,
      D32FloatS8X24UInt_e => 20,
      R32FloatX8X24Typeless_e => 21,
      X32TypelessG8X24UInt_e => 22,
      R10G10B10A2Typeless_e => 23,
      R10G10B10A2UIntNormalized_e => 24,
      R10G10B10A2UInt_e => 25,
      R11G11B10Float_e => 26,
      R8G8B8A8Typeless_e => 27,
      R8G8B8A8UIntNormalized_e => 28,
      R8G8B8A8UIntNormalizedSrgb_e => 29,
      R8G8B8A8UInt_e => 30,
      R8G8B8A8IntNormalized_e => 31,
      R8G8B8A8Int_e => 32,
      R16G16Typeless_e => 33,
      R16G16Float_e => 34,
      R16G16UIntNormalized_e => 35,
      R16G16UInt_e => 36,
      R16G16IntNormalized_e => 37,
      R16G16Int_e => 38,
      R32Typeless_e => 39,
      D32Float_e => 40,
      R32Float_e => 41,
      R32UInt_e => 42,
      R32Int_e => 43,
      R24G8Typeless_e => 44,
      D24UIntNormalizedS8UInt_e => 45,
      R24UIntNormalizedX8Typeless_e => 46,
      X24TypelessG8UInt_e => 47,
      R8G8Typeless_e => 48,
      R8G8UIntNormalized_e => 49,
      R8G8UInt_e => 50,
      R8G8IntNormalized_e => 51,
      R8G8Int_e => 52,
      R16Typeless_e => 53,
      R16Float_e => 54,
      D16UIntNormalized_e => 55,
      R16UIntNormalized_e => 56,
      R16UInt_e => 57,
      R16IntNormalized_e => 58,
      R16Int_e => 59,
      R8Typeless_e => 60,
      R8UIntNormalized_e => 61,
      R8UInt_e => 62,
      R8IntNormalized_e => 63,
      R8Int_e => 64,
      A8UIntNormalized_e => 65,
      R1UIntNormalized_e => 66,
      R9G9B9E5SharedExponent_e => 67,
      R8G8B8G8UIntNormalized_e => 68,
      G8R8G8B8UIntNormalized_e => 69,
      BC1Typeless_e => 70,
      BC1UIntNormalized_e => 71,
      BC1UIntNormalizedSrgb_e => 72,
      BC2Typeless_e => 73,
      BC2UIntNormalized_e => 74,
      BC2UIntNormalizedSrgb_e => 75,
      BC3Typeless_e => 76,
      BC3UIntNormalized_e => 77,
      BC3UIntNormalizedSrgb_e => 78,
      BC4Typeless_e => 79,
      BC4UIntNormalized_e => 80,
      BC4IntNormalized_e => 81,
      BC5Typeless_e => 82,
      BC5UIntNormalized_e => 83,
      BC5IntNormalized_e => 84,
      B5G6R5UIntNormalized_e => 85,
      B5G5R5A1UIntNormalized_e => 86,
      B8G8R8A8UIntNormalized_e => 87,
      B8G8R8X8UIntNormalized_e => 88,
      R10G10B10XRBiasA2UIntNormalized_e => 89,
      B8G8R8A8Typeless_e => 90,
      B8G8R8A8UIntNormalizedSrgb_e => 91,
      B8G8R8X8Typeless_e => 92,
      B8G8R8X8UIntNormalizedSrgb_e => 93,
      BC6HTypeless_e => 94,
      BC6H16UnsignedFloat_e => 95,
      BC6H16Float_e => 96,
      BC7Typeless_e => 97,
      BC7UIntNormalized_e => 98,
      BC7UIntNormalizedSrgb_e => 99,
      Ayuv_e => 100,
      Y410_e => 101,
      Y416_e => 102,
      NV12_e => 103,
      P010_e => 104,
      P016_e => 105,
      Opaque420_e => 106,
      Yuy2_e => 107,
      Y210_e => 108,
      Y216_e => 109,
      NV11_e => 110,
      AI44_e => 111,
      IA44_e => 112,
      P8_e => 113,
      A8P8_e => 114,
      B4G4R4A4UIntNormalized_e => 115,
      P208_e => 130,
      V208_e => 131,
      V408_e => 132,
      SamplerFeedbackMinMipOpaque_e => 189,
      SamplerFeedbackMipRegionUsedOpaque_e => 190
   );
   type DirectXPixelFormat_Ptr is access all DirectXPixelFormat;

   type DirectXPrimitiveTopology is (
      Undefined_e,
      PointList_e,
      LineList_e,
      LineStrip_e,
      TriangleList_e,
      TriangleStrip_e
   );
   for DirectXPrimitiveTopology use (
      Undefined_e => 0,
      PointList_e => 1,
      LineList_e => 2,
      LineStrip_e => 3,
      TriangleList_e => 4,
      TriangleStrip_e => 5
   );
   type DirectXPrimitiveTopology_Ptr is access all DirectXPrimitiveTopology;

end;