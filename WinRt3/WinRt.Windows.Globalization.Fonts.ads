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
limited with WinRt.Windows.UI.Text;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Globalization.Fonts is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ILanguageFont_Interface is interface and WinRt.IInspectable_Interface;
   type ILanguageFont is access ILanguageFont_Interface'Class;
   type ILanguageFont_Ptr is access all ILanguageFont;

   type ILanguageFontGroup_Interface is interface and WinRt.IInspectable_Interface;
   type ILanguageFontGroup is access ILanguageFontGroup_Interface'Class;
   type ILanguageFontGroup_Ptr is access all ILanguageFontGroup;

   type ILanguageFontGroupFactory_Interface is interface and WinRt.IInspectable_Interface;
   type ILanguageFontGroupFactory is access ILanguageFontGroupFactory_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type LanguageFont is new Ada.Finalization.Limited_Controlled with
      record
         m_ILanguageFont : access Windows.Globalization.Fonts.ILanguageFont;
      end record;
   type LanguageFont_Ptr is access all LanguageFont;

   type LanguageFontGroup is new Ada.Finalization.Limited_Controlled with
      record
         m_ILanguageFontGroup : access Windows.Globalization.Fonts.ILanguageFontGroup;
      end record;
   type LanguageFontGroup_Ptr is access all LanguageFontGroup;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ILanguageFont is interface and WinRt.IInspectable;

      function get_FontFamily
      (
         this : access ILanguageFont_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_FontWeight
      (
         this : access ILanguageFont_Interface;
         RetVal : access Windows.UI.Text.FontWeight
      )
      return WinRt.Hresult is abstract;

      function get_FontStretch
      (
         this : access ILanguageFont_Interface;
         RetVal : access Windows.UI.Text.FontStretch
      )
      return WinRt.Hresult is abstract;

      function get_FontStyle
      (
         this : access ILanguageFont_Interface;
         RetVal : access Windows.UI.Text.FontStyle
      )
      return WinRt.Hresult is abstract;

      function get_ScaleFactor
      (
         this : access ILanguageFont_Interface;
         RetVal : access WinRt.Double
      )
      return WinRt.Hresult is abstract;

      IID_ILanguageFont : aliased WinRt.IID := (2972605498, 46957, 17819, (190, 235, 144, 17, 81, 205, 119, 209 ));

   -----------------------------------------------------------------------------
   -- type ILanguageFontGroup is interface and WinRt.IInspectable;

      function get_UITextFont
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_UIHeadingFont
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_UITitleFont
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_UICaptionFont
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_UINotificationHeadingFont
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_TraditionalDocumentFont
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_ModernDocumentFont
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_DocumentHeadingFont
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_FixedWidthTextFont
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_DocumentAlternate1Font
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      function get_DocumentAlternate2Font
      (
         this : access ILanguageFontGroup_Interface;
         RetVal : access Windows.Globalization.Fonts.ILanguageFont
      )
      return WinRt.Hresult is abstract;

      IID_ILanguageFontGroup : aliased WinRt.IID := (4080697283, 14940, 19178, (185, 255, 179, 159, 178, 66, 247, 246 ));

   -----------------------------------------------------------------------------
   -- type ILanguageFontGroupFactory is interface and WinRt.IInspectable;

      function CreateLanguageFontGroup
      (
         this : access ILanguageFontGroupFactory_Interface;
         languageTag : WinRt.HString;
         RetVal : access Windows.Globalization.Fonts.ILanguageFontGroup
      )
      return WinRt.Hresult is abstract;

      IID_ILanguageFontGroupFactory : aliased WinRt.IID := (4239305831, 20087, 18887, (184, 86, 221, 233, 52, 252, 115, 91 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for LanguageFont

   overriding procedure Initialize (this : in out LanguageFont);
   overriding procedure Finalize (this : in out LanguageFont);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for LanguageFont

   function get_FontFamily
   (
      this : in out LanguageFont
   )
   return WinRt.WString;

   function get_FontWeight
   (
      this : in out LanguageFont
   )
   return WinRt.Windows.UI.Text.FontWeight;

   function get_FontStretch
   (
      this : in out LanguageFont
   )
   return WinRt.Windows.UI.Text.FontStretch;

   function get_FontStyle
   (
      this : in out LanguageFont
   )
   return WinRt.Windows.UI.Text.FontStyle;

   function get_ScaleFactor
   (
      this : in out LanguageFont
   )
   return WinRt.Double;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for LanguageFontGroup

   overriding procedure Initialize (this : in out LanguageFontGroup);
   overriding procedure Finalize (this : in out LanguageFontGroup);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for LanguageFontGroup

   function Constructor
   (
      languageTag : WinRt.WString
   )
   return LanguageFontGroup;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for LanguageFontGroup

   function get_UITextFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_UIHeadingFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_UITitleFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_UICaptionFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_UINotificationHeadingFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_TraditionalDocumentFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_ModernDocumentFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_DocumentHeadingFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_FixedWidthTextFont
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_DocumentAlternate1Font
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

   function get_DocumentAlternate2Font
   (
      this : in out LanguageFontGroup
   )
   return WinRt.Windows.Globalization.Fonts.LanguageFont'Class;

end;
