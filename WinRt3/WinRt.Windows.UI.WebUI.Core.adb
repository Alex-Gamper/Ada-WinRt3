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
package body WinRt.Windows.UI.WebUI.Core is

   -----------------------------------------------------------------------------
   -- Delegate MenuClosedEventHandler

   function Invoke
   (
      this : access MenuClosedEventHandler_Delegate
   )
   return WinRt.Hresult is
      Hr : WinRt.HResult := S_OK;
   begin
      this.Callback.all;
      return Hr;
   end;

   -----------------------------------------------------------------------------
   -- Delegate MenuOpenedEventHandler

   function Invoke
   (
      this : access MenuOpenedEventHandler_Delegate
   )
   return WinRt.Hresult is
      Hr : WinRt.HResult := S_OK;
   begin
      this.Callback.all;
      return Hr;
   end;

   -----------------------------------------------------------------------------
   -- Delegate SizeChangedEventHandler

   function Invoke
   (
      this : access SizeChangedEventHandler_Delegate;
      eventArgs : Windows.UI.WebUI.Core.IWebUICommandBarSizeChangedEventArgs
   )
   return WinRt.Hresult is
      Hr : WinRt.HResult := S_OK;
   begin
      this.Callback (eventArgs);
      return Hr;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for WebUICommandBar

   procedure Initialize (this : in out WebUICommandBar) is
   begin
      null;
   end;

   procedure Finalize (this : in out WebUICommandBar) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IWebUICommandBar, IWebUICommandBar_Ptr);
   begin
      if this.m_IWebUICommandBar /= null then
         if this.m_IWebUICommandBar.all /= null then
            RefCount := this.m_IWebUICommandBar.all.Release;
            Free (this.m_IWebUICommandBar);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for WebUICommandBar

   function GetForCurrentView
   return WinRt.Windows.UI.WebUI.Core.WebUICommandBar is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.UI.WebUI.Core.WebUICommandBar");
      m_Factory        : access WinRt.Windows.UI.WebUI.Core.IWebUICommandBarStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.WebUI.Core.IWebUICommandBar;
   begin
      return RetVal : WinRt.Windows.UI.WebUI.Core.WebUICommandBar do
         Hr := RoGetActivationFactory (m_hString, IID_IWebUICommandBarStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetForCurrentView (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IWebUICommandBar := new Windows.UI.WebUI.Core.IWebUICommandBar;
            Retval.m_IWebUICommandBar.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for WebUICommandBar

   function get_Visible
   (
      this : in out WebUICommandBar
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IWebUICommandBar.all.get_Visible (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Visible
   (
      this : in out WebUICommandBar;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBar.all.put_Visible (value);
   end;

   function get_Opacity
   (
      this : in out WebUICommandBar
   )
   return WinRt.Double is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Double;
   begin
      Hr := this.m_IWebUICommandBar.all.get_Opacity (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Opacity
   (
      this : in out WebUICommandBar;
      value : WinRt.Double
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBar.all.put_Opacity (value);
   end;

   function get_ForegroundColor
   (
      this : in out WebUICommandBar
   )
   return WinRt.Windows.UI.Color is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Color;
   begin
      Hr := this.m_IWebUICommandBar.all.get_ForegroundColor (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_ForegroundColor
   (
      this : in out WebUICommandBar;
      value : Windows.UI.Color
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBar.all.put_ForegroundColor (value);
   end;

   function get_BackgroundColor
   (
      this : in out WebUICommandBar
   )
   return WinRt.Windows.UI.Color is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Color;
   begin
      Hr := this.m_IWebUICommandBar.all.get_BackgroundColor (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_BackgroundColor
   (
      this : in out WebUICommandBar;
      value : Windows.UI.Color
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBar.all.put_BackgroundColor (value);
   end;

   function get_ClosedDisplayMode
   (
      this : in out WebUICommandBar
   )
   return WinRt.Windows.UI.WebUI.Core.WebUICommandBarClosedDisplayMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.WebUI.Core.WebUICommandBarClosedDisplayMode;
   begin
      Hr := this.m_IWebUICommandBar.all.get_ClosedDisplayMode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_ClosedDisplayMode
   (
      this : in out WebUICommandBar;
      value : Windows.UI.WebUI.Core.WebUICommandBarClosedDisplayMode
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBar.all.put_ClosedDisplayMode (value);
   end;

   function get_IsOpen
   (
      this : in out WebUICommandBar
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IWebUICommandBar.all.get_IsOpen (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_IsOpen
   (
      this : in out WebUICommandBar;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBar.all.put_IsOpen (value);
   end;

   function get_Size
   (
      this : in out WebUICommandBar
   )
   return WinRt.Windows.Foundation.Size is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.Size;
   begin
      Hr := this.m_IWebUICommandBar.all.get_Size (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_PrimaryCommands
   (
      this : in out WebUICommandBar
   )
   return IObservableVector_IWebUICommandBarElement.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IObservableVector_IWebUICommandBarElement.Kind;
   begin
      Hr := this.m_IWebUICommandBar.all.get_PrimaryCommands (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IObservableVector_IWebUICommandBarElement (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_SecondaryCommands
   (
      this : in out WebUICommandBar
   )
   return IObservableVector_IWebUICommandBarElement.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IObservableVector_IWebUICommandBarElement.Kind;
   begin
      Hr := this.m_IWebUICommandBar.all.get_SecondaryCommands (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IObservableVector_IWebUICommandBarElement (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function add_MenuOpened
   (
      this : in out WebUICommandBar;
      handler : Windows.UI.WebUI.Core.MenuOpenedEventHandler
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IWebUICommandBar.all.add_MenuOpened (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_MenuOpened
   (
      this : in out WebUICommandBar;
      value : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBar.all.remove_MenuOpened (value);
   end;

   function add_MenuClosed
   (
      this : in out WebUICommandBar;
      handler : Windows.UI.WebUI.Core.MenuClosedEventHandler
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IWebUICommandBar.all.add_MenuClosed (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_MenuClosed
   (
      this : in out WebUICommandBar;
      value : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBar.all.remove_MenuClosed (value);
   end;

   function add_SizeChanged
   (
      this : in out WebUICommandBar;
      handler : Windows.UI.WebUI.Core.SizeChangedEventHandler
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IWebUICommandBar.all.add_SizeChanged (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_SizeChanged
   (
      this : in out WebUICommandBar;
      value : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBar.all.remove_SizeChanged (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for WebUICommandBarBitmapIcon

   procedure Initialize (this : in out WebUICommandBarBitmapIcon) is
   begin
      null;
   end;

   procedure Finalize (this : in out WebUICommandBarBitmapIcon) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IWebUICommandBarBitmapIcon, IWebUICommandBarBitmapIcon_Ptr);
   begin
      if this.m_IWebUICommandBarBitmapIcon /= null then
         if this.m_IWebUICommandBarBitmapIcon.all /= null then
            RefCount := this.m_IWebUICommandBarBitmapIcon.all.Release;
            Free (this.m_IWebUICommandBarBitmapIcon);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for WebUICommandBarBitmapIcon

   function Constructor
   (
      uri : Windows.Foundation.Uri'Class
   )
   return WebUICommandBarBitmapIcon is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.WebUI.Core.WebUICommandBarBitmapIcon");
      m_Factory    : access IWebUICommandBarBitmapIconFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.UI.WebUI.Core.IWebUICommandBarBitmapIcon;
   begin
      return RetVal : WebUICommandBarBitmapIcon do
         Hr := RoGetActivationFactory (m_hString, IID_IWebUICommandBarBitmapIconFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.Create (uri.m_IUriRuntimeClass.all, m_ComRetVal'Access);
            Retval.m_IWebUICommandBarBitmapIcon := new Windows.UI.WebUI.Core.IWebUICommandBarBitmapIcon;
            Retval.m_IWebUICommandBarBitmapIcon.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function Constructor return WebUICommandBarBitmapIcon is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.WebUI.Core.WebUICommandBarBitmapIcon");
      m_ComRetVal  : aliased Windows.UI.WebUI.Core.IWebUICommandBarBitmapIcon;
   begin
      return RetVal : WebUICommandBarBitmapIcon do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IWebUICommandBarBitmapIcon := new Windows.UI.WebUI.Core.IWebUICommandBarBitmapIcon;
            Retval.m_IWebUICommandBarBitmapIcon.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for WebUICommandBarBitmapIcon

   function get_Uri
   (
      this : in out WebUICommandBarBitmapIcon
   )
   return WinRt.Windows.Foundation.Uri'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.IUriRuntimeClass;
   begin
      return RetVal : WinRt.Windows.Foundation.Uri do
         Hr := this.m_IWebUICommandBarBitmapIcon.all.get_Uri (m_ComRetVal'Access);
         Retval.m_IUriRuntimeClass := new Windows.Foundation.IUriRuntimeClass;
         Retval.m_IUriRuntimeClass.all := m_ComRetVal;
      end return;
   end;

   procedure put_Uri
   (
      this : in out WebUICommandBarBitmapIcon;
      value : Windows.Foundation.Uri'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBarBitmapIcon.all.put_Uri (value.m_IUriRuntimeClass.all);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for WebUICommandBarConfirmationButton

   procedure Initialize (this : in out WebUICommandBarConfirmationButton) is
   begin
      null;
   end;

   procedure Finalize (this : in out WebUICommandBarConfirmationButton) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IWebUICommandBarConfirmationButton, IWebUICommandBarConfirmationButton_Ptr);
   begin
      if this.m_IWebUICommandBarConfirmationButton /= null then
         if this.m_IWebUICommandBarConfirmationButton.all /= null then
            RefCount := this.m_IWebUICommandBarConfirmationButton.all.Release;
            Free (this.m_IWebUICommandBarConfirmationButton);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for WebUICommandBarConfirmationButton

   function Constructor return WebUICommandBarConfirmationButton is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.WebUI.Core.WebUICommandBarConfirmationButton");
      m_ComRetVal  : aliased Windows.UI.WebUI.Core.IWebUICommandBarConfirmationButton;
   begin
      return RetVal : WebUICommandBarConfirmationButton do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IWebUICommandBarConfirmationButton := new Windows.UI.WebUI.Core.IWebUICommandBarConfirmationButton;
            Retval.m_IWebUICommandBarConfirmationButton.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for WebUICommandBarConfirmationButton

   function get_Text
   (
      this : in out WebUICommandBarConfirmationButton
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IWebUICommandBarConfirmationButton.all.get_Text (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure put_Text
   (
      this : in out WebUICommandBarConfirmationButton;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_IWebUICommandBarConfirmationButton.all.put_Text (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

   function add_ItemInvoked
   (
      this : in out WebUICommandBarConfirmationButton;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IWebUICommandBarConfirmationButton.all.add_ItemInvoked (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_ItemInvoked
   (
      this : in out WebUICommandBarConfirmationButton;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBarConfirmationButton.all.remove_ItemInvoked (token);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for WebUICommandBarIconButton

   procedure Initialize (this : in out WebUICommandBarIconButton) is
   begin
      null;
   end;

   procedure Finalize (this : in out WebUICommandBarIconButton) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IWebUICommandBarIconButton, IWebUICommandBarIconButton_Ptr);
   begin
      if this.m_IWebUICommandBarIconButton /= null then
         if this.m_IWebUICommandBarIconButton.all /= null then
            RefCount := this.m_IWebUICommandBarIconButton.all.Release;
            Free (this.m_IWebUICommandBarIconButton);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for WebUICommandBarIconButton

   function Constructor return WebUICommandBarIconButton is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.WebUI.Core.WebUICommandBarIconButton");
      m_ComRetVal  : aliased Windows.UI.WebUI.Core.IWebUICommandBarIconButton;
   begin
      return RetVal : WebUICommandBarIconButton do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IWebUICommandBarIconButton := new Windows.UI.WebUI.Core.IWebUICommandBarIconButton;
            Retval.m_IWebUICommandBarIconButton.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for WebUICommandBarIconButton

   function get_Enabled
   (
      this : in out WebUICommandBarIconButton
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.get_Enabled (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Enabled
   (
      this : in out WebUICommandBarIconButton;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.put_Enabled (value);
   end;

   function get_Label
   (
      this : in out WebUICommandBarIconButton
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.get_Label (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure put_Label
   (
      this : in out WebUICommandBarIconButton;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.put_Label (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

   function get_IsToggleButton
   (
      this : in out WebUICommandBarIconButton
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.get_IsToggleButton (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_IsToggleButton
   (
      this : in out WebUICommandBarIconButton;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.put_IsToggleButton (value);
   end;

   function get_IsChecked
   (
      this : in out WebUICommandBarIconButton
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.get_IsChecked (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_IsChecked
   (
      this : in out WebUICommandBarIconButton;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.put_IsChecked (value);
   end;

   function get_Icon
   (
      this : in out WebUICommandBarIconButton
   )
   return WinRt.Windows.UI.WebUI.Core.IWebUICommandBarIcon is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.WebUI.Core.IWebUICommandBarIcon;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.get_Icon (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Icon
   (
      this : in out WebUICommandBarIconButton;
      value : Windows.UI.WebUI.Core.IWebUICommandBarIcon
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.put_Icon (value);
   end;

   function add_ItemInvoked
   (
      this : in out WebUICommandBarIconButton;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.add_ItemInvoked (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_ItemInvoked
   (
      this : in out WebUICommandBarIconButton;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IWebUICommandBarIconButton.all.remove_ItemInvoked (token);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for WebUICommandBarItemInvokedEventArgs

   procedure Initialize (this : in out WebUICommandBarItemInvokedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out WebUICommandBarItemInvokedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IWebUICommandBarItemInvokedEventArgs, IWebUICommandBarItemInvokedEventArgs_Ptr);
   begin
      if this.m_IWebUICommandBarItemInvokedEventArgs /= null then
         if this.m_IWebUICommandBarItemInvokedEventArgs.all /= null then
            RefCount := this.m_IWebUICommandBarItemInvokedEventArgs.all.Release;
            Free (this.m_IWebUICommandBarItemInvokedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for WebUICommandBarItemInvokedEventArgs

   function get_IsPrimaryCommand
   (
      this : in out WebUICommandBarItemInvokedEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IWebUICommandBarItemInvokedEventArgs.all.get_IsPrimaryCommand (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for WebUICommandBarSizeChangedEventArgs

   procedure Initialize (this : in out WebUICommandBarSizeChangedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out WebUICommandBarSizeChangedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IWebUICommandBarSizeChangedEventArgs, IWebUICommandBarSizeChangedEventArgs_Ptr);
   begin
      if this.m_IWebUICommandBarSizeChangedEventArgs /= null then
         if this.m_IWebUICommandBarSizeChangedEventArgs.all /= null then
            RefCount := this.m_IWebUICommandBarSizeChangedEventArgs.all.Release;
            Free (this.m_IWebUICommandBarSizeChangedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for WebUICommandBarSizeChangedEventArgs

   function get_Size
   (
      this : in out WebUICommandBarSizeChangedEventArgs
   )
   return WinRt.Windows.Foundation.Size is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.Size;
   begin
      Hr := this.m_IWebUICommandBarSizeChangedEventArgs.all.get_Size (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for WebUICommandBarSymbolIcon

   procedure Initialize (this : in out WebUICommandBarSymbolIcon) is
   begin
      null;
   end;

   procedure Finalize (this : in out WebUICommandBarSymbolIcon) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IWebUICommandBarSymbolIcon, IWebUICommandBarSymbolIcon_Ptr);
   begin
      if this.m_IWebUICommandBarSymbolIcon /= null then
         if this.m_IWebUICommandBarSymbolIcon.all /= null then
            RefCount := this.m_IWebUICommandBarSymbolIcon.all.Release;
            Free (this.m_IWebUICommandBarSymbolIcon);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for WebUICommandBarSymbolIcon

   function Constructor return WebUICommandBarSymbolIcon is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.WebUI.Core.WebUICommandBarSymbolIcon");
      m_ComRetVal  : aliased Windows.UI.WebUI.Core.IWebUICommandBarSymbolIcon;
   begin
      return RetVal : WebUICommandBarSymbolIcon do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IWebUICommandBarSymbolIcon := new Windows.UI.WebUI.Core.IWebUICommandBarSymbolIcon;
            Retval.m_IWebUICommandBarSymbolIcon.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   function Constructor
   (
      symbol : WinRt.WString
   )
   return WebUICommandBarSymbolIcon is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.WebUI.Core.WebUICommandBarSymbolIcon");
      m_Factory    : access IWebUICommandBarSymbolIconFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.UI.WebUI.Core.IWebUICommandBarSymbolIcon;
      HStr_symbol : WinRt.HString := To_HString (symbol);
   begin
      return RetVal : WebUICommandBarSymbolIcon do
         Hr := RoGetActivationFactory (m_hString, IID_IWebUICommandBarSymbolIconFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.Create (HStr_symbol, m_ComRetVal'Access);
            Retval.m_IWebUICommandBarSymbolIcon := new Windows.UI.WebUI.Core.IWebUICommandBarSymbolIcon;
            Retval.m_IWebUICommandBarSymbolIcon.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         Hr := WindowsDeleteString (HStr_symbol);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for WebUICommandBarSymbolIcon

   function get_Symbol
   (
      this : in out WebUICommandBarSymbolIcon
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IWebUICommandBarSymbolIcon.all.get_Symbol (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure put_Symbol
   (
      this : in out WebUICommandBarSymbolIcon;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_IWebUICommandBarSymbolIcon.all.put_Symbol (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

end;