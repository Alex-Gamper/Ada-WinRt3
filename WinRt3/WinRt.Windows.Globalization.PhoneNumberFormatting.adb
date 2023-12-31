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
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Globalization.PhoneNumberFormatting is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PhoneNumberFormatter

   procedure Initialize (this : in out PhoneNumberFormatter) is
   begin
      null;
   end;

   procedure Finalize (this : in out PhoneNumberFormatter) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPhoneNumberFormatter, IPhoneNumberFormatter_Ptr);
   begin
      if this.m_IPhoneNumberFormatter /= null then
         if this.m_IPhoneNumberFormatter.all /= null then
            RefCount := this.m_IPhoneNumberFormatter.all.Release;
            Free (this.m_IPhoneNumberFormatter);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PhoneNumberFormatter

   function Constructor return PhoneNumberFormatter is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter");
      m_ComRetVal  : aliased Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter;
   begin
      return RetVal : PhoneNumberFormatter do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IPhoneNumberFormatter := new Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter;
            Retval.m_IPhoneNumberFormatter.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for PhoneNumberFormatter

   procedure TryCreate
   (
      regionCode : WinRt.WString;
      phoneNumber : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter");
      m_Factory        : access WinRt.Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_regionCode : WinRt.HString := To_HString (regionCode);
   begin
      Hr := RoGetActivationFactory (m_hString, IID_IPhoneNumberFormatterStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.TryCreate (HStr_regionCode, phoneNumber);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      Hr := WindowsDeleteString (HStr_regionCode);
   end;

   function GetCountryCodeForRegion
   (
      regionCode : WinRt.WString
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter");
      m_Factory        : access WinRt.Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
      HStr_regionCode : WinRt.HString := To_HString (regionCode);
   begin
      Hr := RoGetActivationFactory (m_hString, IID_IPhoneNumberFormatterStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.GetCountryCodeForRegion (HStr_regionCode, m_ComRetVal'Access);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      Hr := WindowsDeleteString (HStr_regionCode);
      return m_ComRetVal;
   end;

   function GetNationalDirectDialingPrefixForRegion
   (
      regionCode : WinRt.WString;
      stripNonDigit : WinRt.Boolean
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter");
      m_Factory        : access WinRt.Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      HStr_regionCode : WinRt.HString := To_HString (regionCode);
   begin
      Hr := RoGetActivationFactory (m_hString, IID_IPhoneNumberFormatterStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.GetNationalDirectDialingPrefixForRegion (HStr_regionCode, stripNonDigit, m_ComRetVal'Access);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      Hr := WindowsDeleteString (HStr_regionCode);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function WrapWithLeftToRightMarkers
   (
      number : WinRt.WString
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter");
      m_Factory        : access WinRt.Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      HStr_number : WinRt.HString := To_HString (number);
   begin
      Hr := RoGetActivationFactory (m_hString, IID_IPhoneNumberFormatterStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.WrapWithLeftToRightMarkers (HStr_number, m_ComRetVal'Access);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      Hr := WindowsDeleteString (HStr_number);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PhoneNumberFormatter

   function Format
   (
      this : in out PhoneNumberFormatter;
      number : Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'Class
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IPhoneNumberFormatter.all.Format (number.m_IPhoneNumberInfo.all, m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function Format
   (
      this : in out PhoneNumberFormatter;
      number : Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'Class;
      numberFormat : Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormat
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IPhoneNumberFormatter.all.Format (number.m_IPhoneNumberInfo.all, numberFormat, m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function FormatPartialString
   (
      this : in out PhoneNumberFormatter;
      number : WinRt.WString
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      HStr_number : WinRt.HString := To_HString (number);
   begin
      Hr := this.m_IPhoneNumberFormatter.all.FormatPartialString (HStr_number, m_ComRetVal'Access);
      Hr := WindowsDeleteString (HStr_number);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function FormatString
   (
      this : in out PhoneNumberFormatter;
      number : WinRt.WString
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      HStr_number : WinRt.HString := To_HString (number);
   begin
      Hr := this.m_IPhoneNumberFormatter.all.FormatString (HStr_number, m_ComRetVal'Access);
      Hr := WindowsDeleteString (HStr_number);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function FormatStringWithLeftToRightMarkers
   (
      this : in out PhoneNumberFormatter;
      number : WinRt.WString
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      HStr_number : WinRt.HString := To_HString (number);
   begin
      Hr := this.m_IPhoneNumberFormatter.all.FormatStringWithLeftToRightMarkers (HStr_number, m_ComRetVal'Access);
      Hr := WindowsDeleteString (HStr_number);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PhoneNumberInfo

   procedure Initialize (this : in out PhoneNumberInfo) is
   begin
      null;
   end;

   procedure Finalize (this : in out PhoneNumberInfo) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPhoneNumberInfo, IPhoneNumberInfo_Ptr);
   begin
      if this.m_IPhoneNumberInfo /= null then
         if this.m_IPhoneNumberInfo.all /= null then
            RefCount := this.m_IPhoneNumberInfo.all.Release;
            Free (this.m_IPhoneNumberInfo);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PhoneNumberInfo

   function Constructor
   (
      number : WinRt.WString
   )
   return PhoneNumberInfo is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo");
      m_Factory    : access IPhoneNumberInfoFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo;
      HStr_number : WinRt.HString := To_HString (number);
   begin
      return RetVal : PhoneNumberInfo do
         Hr := RoGetActivationFactory (m_hString, IID_IPhoneNumberInfoFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.Create (HStr_number, m_ComRetVal'Access);
            Retval.m_IPhoneNumberInfo := new Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo;
            Retval.m_IPhoneNumberInfo.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_number);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for PhoneNumberInfo

   function TryParse
   (
      input : WinRt.WString;
      phoneNumber : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo
   )
   return WinRt.Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo");
      m_Factory        : access WinRt.Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult;
      HStr_input : WinRt.HString := To_HString (input);
   begin
      Hr := RoGetActivationFactory (m_hString, IID_IPhoneNumberInfoStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.TryParse (HStr_input, phoneNumber, m_ComRetVal'Access);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      Hr := WindowsDeleteString (HStr_input);
      return m_ComRetVal;
   end;

   function TryParse
   (
      input : WinRt.WString;
      regionCode : WinRt.WString;
      phoneNumber : access Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo
   )
   return WinRt.Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo");
      m_Factory        : access WinRt.Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult;
      HStr_input : WinRt.HString := To_HString (input);
      HStr_regionCode : WinRt.HString := To_HString (regionCode);
   begin
      Hr := RoGetActivationFactory (m_hString, IID_IPhoneNumberInfoStatics'Access , m_Factory'Address);
      if Hr = S_OK then
         Hr := m_Factory.TryParse (HStr_input, HStr_regionCode, phoneNumber, m_ComRetVal'Access);
         m_RefCount := m_Factory.Release;
      end if;
      Hr := WindowsDeleteString (m_hString);
      Hr := WindowsDeleteString (HStr_input);
      Hr := WindowsDeleteString (HStr_regionCode);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PhoneNumberInfo

   function get_CountryCode
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IPhoneNumberInfo.all.get_CountryCode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_PhoneNumber
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IPhoneNumberInfo.all.get_PhoneNumber (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function GetLengthOfGeographicalAreaCode
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IPhoneNumberInfo.all.GetLengthOfGeographicalAreaCode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function GetNationalSignificantNumber
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IPhoneNumberInfo.all.GetNationalSignificantNumber (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function GetLengthOfNationalDestinationCode
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.Int32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Int32;
   begin
      Hr := this.m_IPhoneNumberInfo.all.GetLengthOfNationalDestinationCode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function PredictNumberKind
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.Windows.Globalization.PhoneNumberFormatting.PredictedPhoneNumberKind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.PhoneNumberFormatting.PredictedPhoneNumberKind;
   begin
      Hr := this.m_IPhoneNumberInfo.all.PredictNumberKind (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function GetGeographicRegionCode
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IPhoneNumberInfo.all.GetGeographicRegionCode (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function CheckNumberMatch
   (
      this : in out PhoneNumberInfo;
      otherNumber : Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'Class
   )
   return WinRt.Windows.Globalization.PhoneNumberFormatting.PhoneNumberMatchResult is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.PhoneNumberFormatting.PhoneNumberMatchResult;
   begin
      Hr := this.m_IPhoneNumberInfo.all.CheckNumberMatch (otherNumber.m_IPhoneNumberInfo.all, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function ToString
   (
      this : in out PhoneNumberInfo
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Foundation.IStringable := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo_Interface, WinRt.Windows.Foundation.IStringable, WinRt.Windows.Foundation.IID_IStringable'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPhoneNumberInfo.all);
      Hr := m_Interface.ToString (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

end;
