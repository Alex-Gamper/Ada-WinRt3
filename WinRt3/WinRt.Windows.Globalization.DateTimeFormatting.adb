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
with WinRt.Windows.Foundation.Collections;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Globalization.DateTimeFormatting is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DateTimeFormatter

   procedure Initialize (this : in out DateTimeFormatter) is
   begin
      null;
   end;

   procedure Finalize (this : in out DateTimeFormatter) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IDateTimeFormatter, IDateTimeFormatter_Ptr);
   begin
      if this.m_IDateTimeFormatter /= null then
         if this.m_IDateTimeFormatter.all /= null then
            RefCount := this.m_IDateTimeFormatter.all.Release;
            Free (this.m_IDateTimeFormatter);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for DateTimeFormatter

   function Constructor
   (
      formatTemplate : WinRt.WString
   )
   return DateTimeFormatter is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory    : access IDateTimeFormatterFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
      HStr_formatTemplate : WinRt.HString := To_HString (formatTemplate);
   begin
      return RetVal : DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateDateTimeFormatter (HStr_formatTemplate, m_ComRetVal'Access);
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_formatTemplate);
      end return;
   end;

   function Constructor
   (
      formatTemplate : WinRt.WString;
      languages : GenericObject
   )
   return DateTimeFormatter is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory    : access IDateTimeFormatterFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
      HStr_formatTemplate : WinRt.HString := To_HString (formatTemplate);
   begin
      return RetVal : DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateDateTimeFormatterLanguages (HStr_formatTemplate, languages, m_ComRetVal'Access);
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_formatTemplate);
      end return;
   end;

   function Constructor
   (
      formatTemplate : WinRt.WString;
      languages : GenericObject;
      geographicRegion : WinRt.WString;
      calendar : WinRt.WString;
      clock : WinRt.WString
   )
   return DateTimeFormatter is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory    : access IDateTimeFormatterFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
      HStr_formatTemplate : WinRt.HString := To_HString (formatTemplate);
      HStr_geographicRegion : WinRt.HString := To_HString (geographicRegion);
      HStr_calendar : WinRt.HString := To_HString (calendar);
      HStr_clock : WinRt.HString := To_HString (clock);
   begin
      return RetVal : DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateDateTimeFormatterContext (HStr_formatTemplate, languages, HStr_geographicRegion, HStr_calendar, HStr_clock, m_ComRetVal'Access);
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_formatTemplate);
         Hr := WindowsDeleteString (HStr_geographicRegion);
         Hr := WindowsDeleteString (HStr_calendar);
         Hr := WindowsDeleteString (HStr_clock);
      end return;
   end;

   function Constructor
   (
      yearFormat : Windows.Globalization.DateTimeFormatting.YearFormat;
      monthFormat : Windows.Globalization.DateTimeFormatting.MonthFormat;
      dayFormat : Windows.Globalization.DateTimeFormatting.DayFormat;
      dayOfWeekFormat : Windows.Globalization.DateTimeFormatting.DayOfWeekFormat
   )
   return DateTimeFormatter is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory    : access IDateTimeFormatterFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
   begin
      return RetVal : DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateDateTimeFormatterDate (yearFormat, monthFormat, dayFormat, dayOfWeekFormat, m_ComRetVal'Access);
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function Constructor
   (
      hourFormat : Windows.Globalization.DateTimeFormatting.HourFormat;
      minuteFormat : Windows.Globalization.DateTimeFormatting.MinuteFormat;
      secondFormat : Windows.Globalization.DateTimeFormatting.SecondFormat
   )
   return DateTimeFormatter is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory    : access IDateTimeFormatterFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
   begin
      return RetVal : DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateDateTimeFormatterTime (hourFormat, minuteFormat, secondFormat, m_ComRetVal'Access);
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function Constructor
   (
      yearFormat : Windows.Globalization.DateTimeFormatting.YearFormat;
      monthFormat : Windows.Globalization.DateTimeFormatting.MonthFormat;
      dayFormat : Windows.Globalization.DateTimeFormatting.DayFormat;
      dayOfWeekFormat : Windows.Globalization.DateTimeFormatting.DayOfWeekFormat;
      hourFormat : Windows.Globalization.DateTimeFormatting.HourFormat;
      minuteFormat : Windows.Globalization.DateTimeFormatting.MinuteFormat;
      secondFormat : Windows.Globalization.DateTimeFormatting.SecondFormat;
      languages : GenericObject
   )
   return DateTimeFormatter is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory    : access IDateTimeFormatterFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
   begin
      return RetVal : DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateDateTimeFormatterDateTimeLanguages (yearFormat, monthFormat, dayFormat, dayOfWeekFormat, hourFormat, minuteFormat, secondFormat, languages, m_ComRetVal'Access);
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function Constructor
   (
      yearFormat : Windows.Globalization.DateTimeFormatting.YearFormat;
      monthFormat : Windows.Globalization.DateTimeFormatting.MonthFormat;
      dayFormat : Windows.Globalization.DateTimeFormatting.DayFormat;
      dayOfWeekFormat : Windows.Globalization.DateTimeFormatting.DayOfWeekFormat;
      hourFormat : Windows.Globalization.DateTimeFormatting.HourFormat;
      minuteFormat : Windows.Globalization.DateTimeFormatting.MinuteFormat;
      secondFormat : Windows.Globalization.DateTimeFormatting.SecondFormat;
      languages : GenericObject;
      geographicRegion : WinRt.WString;
      calendar : WinRt.WString;
      clock : WinRt.WString
   )
   return DateTimeFormatter is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory    : access IDateTimeFormatterFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
      HStr_geographicRegion : WinRt.HString := To_HString (geographicRegion);
      HStr_calendar : WinRt.HString := To_HString (calendar);
      HStr_clock : WinRt.HString := To_HString (clock);
   begin
      return RetVal : DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateDateTimeFormatterDateTimeContext (yearFormat, monthFormat, dayFormat, dayOfWeekFormat, hourFormat, minuteFormat, secondFormat, languages, HStr_geographicRegion, HStr_calendar, HStr_clock, m_ComRetVal'Access);
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_geographicRegion);
         Hr := WindowsDeleteString (HStr_calendar);
         Hr := WindowsDeleteString (HStr_clock);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for DateTimeFormatter

   function get_LongDate
   return WinRt.Windows.Globalization.DateTimeFormatting.DateTimeFormatter is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory        : access WinRt.Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
   begin
      return RetVal : WinRt.Windows.Globalization.DateTimeFormatting.DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_LongDate (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function get_LongTime
   return WinRt.Windows.Globalization.DateTimeFormatting.DateTimeFormatter is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory        : access WinRt.Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
   begin
      return RetVal : WinRt.Windows.Globalization.DateTimeFormatting.DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_LongTime (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function get_ShortDate
   return WinRt.Windows.Globalization.DateTimeFormatting.DateTimeFormatter is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory        : access WinRt.Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
   begin
      return RetVal : WinRt.Windows.Globalization.DateTimeFormatting.DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_ShortDate (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function get_ShortTime
   return WinRt.Windows.Globalization.DateTimeFormatting.DateTimeFormatter is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Globalization.DateTimeFormatting.DateTimeFormatter");
      m_Factory        : access WinRt.Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
   begin
      return RetVal : WinRt.Windows.Globalization.DateTimeFormatting.DateTimeFormatter do
         Hr := RoGetActivationFactory (m_hString, IID_IDateTimeFormatterStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_ShortTime (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IDateTimeFormatter := new Windows.Globalization.DateTimeFormatting.IDateTimeFormatter;
            Retval.m_IDateTimeFormatter.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DateTimeFormatter

   function get_Languages
   (
      this : in out DateTimeFormatter
   )
   return IVectorView_HString.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVectorView_HString.Kind;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_Languages (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVectorView_HString (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_GeographicRegion
   (
      this : in out DateTimeFormatter
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_GeographicRegion (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_Calendar
   (
      this : in out DateTimeFormatter
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_Calendar (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_Clock
   (
      this : in out DateTimeFormatter
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_Clock (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_NumeralSystem
   (
      this : in out DateTimeFormatter
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_NumeralSystem (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure put_NumeralSystem
   (
      this : in out DateTimeFormatter;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_IDateTimeFormatter.all.put_NumeralSystem (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

   function get_Patterns
   (
      this : in out DateTimeFormatter
   )
   return IVectorView_HString.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVectorView_HString.Kind;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_Patterns (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVectorView_HString (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_Template
   (
      this : in out DateTimeFormatter
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_Template (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function Format
   (
      this : in out DateTimeFormatter;
      value : Windows.Foundation.DateTime
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IDateTimeFormatter.all.Format (value, m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_IncludeYear
   (
      this : in out DateTimeFormatter
   )
   return WinRt.Windows.Globalization.DateTimeFormatting.YearFormat is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.YearFormat;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_IncludeYear (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IncludeMonth
   (
      this : in out DateTimeFormatter
   )
   return WinRt.Windows.Globalization.DateTimeFormatting.MonthFormat is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.MonthFormat;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_IncludeMonth (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IncludeDayOfWeek
   (
      this : in out DateTimeFormatter
   )
   return WinRt.Windows.Globalization.DateTimeFormatting.DayOfWeekFormat is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.DayOfWeekFormat;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_IncludeDayOfWeek (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IncludeDay
   (
      this : in out DateTimeFormatter
   )
   return WinRt.Windows.Globalization.DateTimeFormatting.DayFormat is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.DayFormat;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_IncludeDay (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IncludeHour
   (
      this : in out DateTimeFormatter
   )
   return WinRt.Windows.Globalization.DateTimeFormatting.HourFormat is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.HourFormat;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_IncludeHour (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IncludeMinute
   (
      this : in out DateTimeFormatter
   )
   return WinRt.Windows.Globalization.DateTimeFormatting.MinuteFormat is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.MinuteFormat;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_IncludeMinute (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_IncludeSecond
   (
      this : in out DateTimeFormatter
   )
   return WinRt.Windows.Globalization.DateTimeFormatting.SecondFormat is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.DateTimeFormatting.SecondFormat;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_IncludeSecond (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ResolvedLanguage
   (
      this : in out DateTimeFormatter
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_ResolvedLanguage (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_ResolvedGeographicRegion
   (
      this : in out DateTimeFormatter
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IDateTimeFormatter.all.get_ResolvedGeographicRegion (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function Format
   (
      this : in out DateTimeFormatter;
      datetime : Windows.Foundation.DateTime;
      timeZoneId : WinRt.WString
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Globalization.DateTimeFormatting.IDateTimeFormatter2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      HStr_timeZoneId : WinRt.HString := To_HString (timeZoneId);
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Globalization.DateTimeFormatting.IDateTimeFormatter_Interface, WinRt.Windows.Globalization.DateTimeFormatting.IDateTimeFormatter2, WinRt.Windows.Globalization.DateTimeFormatting.IID_IDateTimeFormatter2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IDateTimeFormatter.all);
      Hr := m_Interface.Format (datetime, HStr_timeZoneId, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_timeZoneId);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

end;
