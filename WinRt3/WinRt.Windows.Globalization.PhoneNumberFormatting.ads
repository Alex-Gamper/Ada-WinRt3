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
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Globalization.PhoneNumberFormatting is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPhoneNumberFormatter_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneNumberFormatter is access all IPhoneNumberFormatter_Interface'Class;
   type IPhoneNumberFormatter_Ptr is access all IPhoneNumberFormatter;

   type IPhoneNumberFormatterStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneNumberFormatterStatics is access all IPhoneNumberFormatterStatics_Interface'Class;

   type IPhoneNumberInfo_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneNumberInfo is access all IPhoneNumberInfo_Interface'Class;
   type IPhoneNumberInfo_Ptr is access all IPhoneNumberInfo;

   type IPhoneNumberInfoFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneNumberInfoFactory is access all IPhoneNumberInfoFactory_Interface'Class;

   type IPhoneNumberInfoStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneNumberInfoStatics is access all IPhoneNumberInfoStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type PhoneNumberFormatter is new Ada.Finalization.Limited_Controlled with
      record
         m_IPhoneNumberFormatter : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter;
      end record;
   type PhoneNumberFormatter_Ptr is access all PhoneNumberFormatter;

   type PhoneNumberInfo is new Ada.Finalization.Limited_Controlled with
      record
         m_IPhoneNumberInfo : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo;
      end record;
   type PhoneNumberInfo_Ptr is access all PhoneNumberInfo;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type PhoneNumberFormat is (
      E164_e,
      International_e,
      National_e,
      Rfc3966_e
   );
   for PhoneNumberFormat use (
      E164_e => 0,
      International_e => 1,
      National_e => 2,
      Rfc3966_e => 3
   );
   type PhoneNumberFormat_Ptr is access all PhoneNumberFormat;

   type PhoneNumberMatchResult is (
      NoMatch_e,
      ShortNationalSignificantNumberMatch_e,
      NationalSignificantNumberMatch_e,
      ExactMatch_e
   );
   for PhoneNumberMatchResult use (
      NoMatch_e => 0,
      ShortNationalSignificantNumberMatch_e => 1,
      NationalSignificantNumberMatch_e => 2,
      ExactMatch_e => 3
   );
   type PhoneNumberMatchResult_Ptr is access all PhoneNumberMatchResult;

   type PhoneNumberParseResult is (
      Valid_e,
      NotANumber_e,
      InvalidCountryCode_e,
      TooShort_e,
      TooLong_e
   );
   for PhoneNumberParseResult use (
      Valid_e => 0,
      NotANumber_e => 1,
      InvalidCountryCode_e => 2,
      TooShort_e => 3,
      TooLong_e => 4
   );
   type PhoneNumberParseResult_Ptr is access all PhoneNumberParseResult;

   type PredictedPhoneNumberKind is (
      FixedLine_e,
      Mobile_e,
      FixedLineOrMobile_e,
      TollFree_e,
      PremiumRate_e,
      SharedCost_e,
      Voip_e,
      PersonalNumber_e,
      Pager_e,
      UniversalAccountNumber_e,
      Voicemail_e,
      Unknown_e
   );
   for PredictedPhoneNumberKind use (
      FixedLine_e => 0,
      Mobile_e => 1,
      FixedLineOrMobile_e => 2,
      TollFree_e => 3,
      PremiumRate_e => 4,
      SharedCost_e => 5,
      Voip_e => 6,
      PersonalNumber_e => 7,
      Pager_e => 8,
      UniversalAccountNumber_e => 9,
      Voicemail_e => 10,
      Unknown_e => 11
   );
   type PredictedPhoneNumberKind_Ptr is access all PredictedPhoneNumberKind;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPhoneNumberFormatter is interface and WinRt.IInspectable;

      function Format
      (
         this : access IPhoneNumberFormatter_Interface;
         number : Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function Format
      (
         this : access IPhoneNumberFormatter_Interface;
         number : Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo;
         numberFormat : Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormat;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FormatPartialString
      (
         this : access IPhoneNumberFormatter_Interface;
         number : WinRt.HString;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FormatString
      (
         this : access IPhoneNumberFormatter_Interface;
         number : WinRt.HString;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FormatStringWithLeftToRightMarkers
      (
         this : access IPhoneNumberFormatter_Interface;
         number : WinRt.HString;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneNumberFormatter : aliased WinRt.IID := (358003870, 47828, 19274, (144, 13, 68, 7, 173, 183, 201, 129 ));

   -----------------------------------------------------------------------------
   -- type IPhoneNumberFormatterStatics is interface and WinRt.IInspectable;

      function TryCreate
      (
         this : access IPhoneNumberFormatterStatics_Interface;
         regionCode : WinRt.HString;
         phoneNumber : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter
      )
      return WinRt.Hresult is abstract;

      function GetCountryCodeForRegion
      (
         this : access IPhoneNumberFormatterStatics_Interface;
         regionCode : WinRt.HString;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function GetNationalDirectDialingPrefixForRegion
      (
         this : access IPhoneNumberFormatterStatics_Interface;
         regionCode : WinRt.HString;
         stripNonDigit : WinRt.Boolean;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function WrapWithLeftToRightMarkers
      (
         this : access IPhoneNumberFormatterStatics_Interface;
         number : WinRt.HString;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneNumberFormatterStatics : aliased WinRt.IID := (1554446641, 34009, 16715, (171, 78, 160, 85, 44, 135, 134, 2 ));

   -----------------------------------------------------------------------------
   -- type IPhoneNumberInfo is interface and WinRt.IInspectable;

      function get_CountryCode
      (
         this : access IPhoneNumberInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_PhoneNumber
      (
         this : access IPhoneNumberInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetLengthOfGeographicalAreaCode
      (
         this : access IPhoneNumberInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function GetNationalSignificantNumber
      (
         this : access IPhoneNumberInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetLengthOfNationalDestinationCode
      (
         this : access IPhoneNumberInfo_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function PredictNumberKind
      (
         this : access IPhoneNumberInfo_Interface;
         RetVal : access Windows.Globalization.PhoneNumberFormatting.PredictedPhoneNumberKind
      )
      return WinRt.Hresult is abstract;

      function GetGeographicRegionCode
      (
         this : access IPhoneNumberInfo_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function CheckNumberMatch
      (
         this : access IPhoneNumberInfo_Interface;
         otherNumber : Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo;
         RetVal : access Windows.Globalization.PhoneNumberFormatting.PhoneNumberMatchResult
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneNumberInfo : aliased WinRt.IID := (477947101, 51380, 20131, (154, 239, 179, 66, 226, 197, 180, 23 ));

   -----------------------------------------------------------------------------
   -- type IPhoneNumberInfoFactory is interface and WinRt.IInspectable;

      function Create
      (
         this : access IPhoneNumberInfoFactory_Interface;
         number : WinRt.HString;
         RetVal : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneNumberInfoFactory : aliased WinRt.IID := (2181216612, 44458, 19711, (143, 207, 23, 231, 81, 106, 40, 255 ));

   -----------------------------------------------------------------------------
   -- type IPhoneNumberInfoStatics is interface and WinRt.IInspectable;

      function TryParse
      (
         this : access IPhoneNumberInfoStatics_Interface;
         input : WinRt.HString;
         phoneNumber : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo;
         RetVal : access Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult
      )
      return WinRt.Hresult is abstract;

      function TryParse
      (
         this : access IPhoneNumberInfoStatics_Interface;
         input : WinRt.HString;
         regionCode : WinRt.HString;
         phoneNumber : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo;
         RetVal : access Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneNumberInfoStatics : aliased WinRt.IID := (1530875754, 34473, 16617, (134, 73, 109, 97, 22, 25, 40, 212 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PhoneNumberFormatter

   overriding procedure Initialize (this : in out PhoneNumberFormatter);
   overriding procedure Finalize (this : in out PhoneNumberFormatter);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PhoneNumberFormatter

   function Constructor return PhoneNumberFormatter;

   -----------------------------------------------------------------------------
   -- Static Interfaces for PhoneNumberFormatter

   procedure TryCreate
   (
      regionCode : WinRt.WString;
      phoneNumber : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter
   );

   function GetCountryCodeForRegion
   (
      regionCode : WinRt.WString
   )
   return WinRt.Int32;

   function GetNationalDirectDialingPrefixForRegion
   (
      regionCode : WinRt.WString;
      stripNonDigit : WinRt.Boolean
   )
   return WinRt.WString;

   function WrapWithLeftToRightMarkers
   (
      number : WinRt.WString
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PhoneNumberFormatter

   function Format
   (
      this : in out PhoneNumberFormatter;
      number : Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'Class
   )
   return WinRt.WString;

   function Format
   (
      this : in out PhoneNumberFormatter;
      number : Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'Class;
      numberFormat : Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormat
   )
   return WinRt.WString;

   function FormatPartialString
   (
      this : in out PhoneNumberFormatter;
      number : WinRt.WString
   )
   return WinRt.WString;

   function FormatString
   (
      this : in out PhoneNumberFormatter;
      number : WinRt.WString
   )
   return WinRt.WString;

   function FormatStringWithLeftToRightMarkers
   (
      this : in out PhoneNumberFormatter;
      number : WinRt.WString
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PhoneNumberInfo

   overriding procedure Initialize (this : in out PhoneNumberInfo);
   overriding procedure Finalize (this : in out PhoneNumberInfo);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PhoneNumberInfo

   function Constructor
   (
      number : WinRt.WString
   )
   return PhoneNumberInfo;

   -----------------------------------------------------------------------------
   -- Static Interfaces for PhoneNumberInfo

   function TryParse
   (
      input : WinRt.WString;
      phoneNumber : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo
   )
   return WinRt.Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult;

   function TryParse
   (
      input : WinRt.WString;
      regionCode : WinRt.WString;
      phoneNumber : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo
   )
   return WinRt.Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PhoneNumberInfo

   function get_CountryCode
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.Int32;

   function get_PhoneNumber
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.WString;

   function GetLengthOfGeographicalAreaCode
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.Int32;

   function GetNationalSignificantNumber
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.WString;

   function GetLengthOfNationalDestinationCode
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.Int32;

   function PredictNumberKind
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.Windows.Globalization.PhoneNumberFormatting.PredictedPhoneNumberKind;

   function GetGeographicRegionCode
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.WString;

   function CheckNumberMatch
   (
      this : in out PhoneNumberInfo;
      otherNumber : Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'Class
   )
   return WinRt.Windows.Globalization.PhoneNumberFormatting.PhoneNumberMatchResult;

   function ToString
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.WString;

end;