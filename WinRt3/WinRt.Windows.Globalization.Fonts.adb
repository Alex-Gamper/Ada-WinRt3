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
with WinRt.Windows.UI.Text;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Globalization.Fonts is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for LanguageFont

   procedure Initialize (this : in out LanguageFont) is
   begin
      null;
   end;

   procedure Finalize (this : in out LanguageFont) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ILanguageFont, ILanguageFont_Ptr);
   begin
      if this.m_ILanguageFont /= null then
         if this.m_ILanguageFont.all /= null then
            RefCount := this.m_ILanguageFont.all.Release;
            Free (this.m_ILanguageFont);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for LanguageFont

   function get_FontFamily
   (
      this : in out LanguageFont
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_ILanguageFont.all.get_FontFamily (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_FontWeight
   (
      this : in out LanguageFont
   )
   return WinRt.Windows.UI.Text.FontWeight is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Text.FontWeight;
   begin
      Hr := this.m_ILanguageFont.all.get_FontWeight (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_FontStretch
   (
      this : in out LanguageFont
   )
   return WinRt.Windows.UI.Text.FontStretch is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Text.FontStretch;
   begin
      Hr := this.m_ILanguageFont.all.get_FontStretch (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_FontStyle
   (
      this : in out LanguageFont
   )
   return WinRt.Windows.UI.Text.FontStyle is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Text.FontStyle;
   begin
      Hr := this.m_ILanguageFont.all.get_FontStyle (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ScaleFactor
   (
      this : in out LanguageFont
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_ILanguageFont.all.get_ScaleFactor (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for LanguageFontGroup

   procedure Initialize (this : in out LanguageFontGroup) is
   begin
      null;
   end;

   procedure Finalize (this : in out LanguageFontGroup) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ILanguageFontGroup, ILanguageFontGroup_Ptr);
   begin
      if this.m_ILanguageFontGroup /= null then
         if this.m_ILanguageFontGroup.all /= null then
            RefCount := this.m_ILanguageFontGroup.all.Release;
            Free (this.m_ILanguageFontGroup);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for LanguageFontGroup

   function Constructor
   (
      languageTag : WinRt.WString
   )
   return LanguageFontGroup is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Globalization.Fonts.LanguageFontGroup");
      m_Factory    : access ILanguageFontGroupFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.Globalization.Fonts.ILanguageFontGroup;
      HStr_languageTag : WinRt.HString := To_HString (languageTag);
   begin
      return RetVal : LanguageFontGroup do
         Hr := RoGetActivationFactory (m_hString, IID_ILanguageFontGroupFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateLanguageFontGroup (HStr_languageTag, m_ComRetVal'Access);
            Retval.m_ILanguageFontGroup := new Windows.Globalization.Fonts.ILanguageFontGroup;
            Retval.m_ILanguageFontGroup.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_languageTag);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for LanguageFontGroup

   function get_UITextFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_UITextFont (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_UIHeadingFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_UIHeadingFont (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_UITitleFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_UITitleFont (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_UICaptionFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_UICaptionFont (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_UINotificationHeadingFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_UINotificationHeadingFont (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_TraditionalDocumentFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_TraditionalDocumentFont (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_ModernDocumentFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_ModernDocumentFont (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_DocumentHeadingFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_DocumentHeadingFont (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_FixedWidthTextFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_FixedWidthTextFont (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_DocumentAlternate1Font
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_DocumentAlternate1Font (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

   function get_DocumentAlternate2Font
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Globalization.Fonts.ILanguageFont;
   begin
      return RetVal : WinRt.Windows.Globalization.Fonts.LanguageFont do
         Hr := this.m_ILanguageFontGroup.all.get_DocumentAlternate2Font (m_ComRetVal'Access);
         Retval.m_ILanguageFont := new Windows.Globalization.Fonts.ILanguageFont;
         Retval.m_ILanguageFont.all := m_ComRetVal;
      end return;
   end;

end;
