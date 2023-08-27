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
with WinRt.Windows.UI.Xaml.Interop;
with WinRt.Windows.UI.Xaml.Media.Animation;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.UI.Xaml.Navigation is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for FrameNavigationOptions

   procedure Initialize (this : in out FrameNavigationOptions) is
   begin
      null;
   end;

   procedure Finalize (this : in out FrameNavigationOptions) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IFrameNavigationOptions, IFrameNavigationOptions_Ptr);
   begin
      if this.m_IFrameNavigationOptions /= null then
         if this.m_IFrameNavigationOptions.all /= null then
            RefCount := this.m_IFrameNavigationOptions.all.Release;
            Free (this.m_IFrameNavigationOptions);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for FrameNavigationOptions

   function Constructor
   (
      baseInterface : WinRt.IInspectable;
      innerInterface : access WinRt.IInspectable
   )
   return FrameNavigationOptions is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.Xaml.Navigation.FrameNavigationOptions");
      m_Factory    : access IFrameNavigationOptionsFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.UI.Xaml.Navigation.IFrameNavigationOptions;
   begin
      return RetVal : FrameNavigationOptions do
         Hr := RoGetActivationFactory (m_hString, IID_IFrameNavigationOptionsFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateInstance (baseInterface, innerInterface, m_ComRetVal'Access);
            Retval.m_IFrameNavigationOptions := new Windows.UI.Xaml.Navigation.IFrameNavigationOptions;
            Retval.m_IFrameNavigationOptions.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for FrameNavigationOptions

   function get_IsNavigationStackEnabled
   (
      this : in out FrameNavigationOptions
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_IFrameNavigationOptions.all.get_IsNavigationStackEnabled (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_IsNavigationStackEnabled
   (
      this : in out FrameNavigationOptions;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IFrameNavigationOptions.all.put_IsNavigationStackEnabled (value);
   end;

   function get_TransitionInfoOverride
   (
      this : in out FrameNavigationOptions
   )
   return WinRt.Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo;
   begin
      return RetVal : WinRt.Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo do
         Hr := this.m_IFrameNavigationOptions.all.get_TransitionInfoOverride (m_ComRetVal'Access);
         Retval.m_INavigationTransitionInfo := new Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo;
         Retval.m_INavigationTransitionInfo.all := m_ComRetVal;
      end return;
   end;

   procedure put_TransitionInfoOverride
   (
      this : in out FrameNavigationOptions;
      value : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IFrameNavigationOptions.all.put_TransitionInfoOverride (value.m_INavigationTransitionInfo.all);
   end;

   -----------------------------------------------------------------------------
   -- Delegate LoadCompletedEventHandler

   function Invoke
   (
      this : access LoadCompletedEventHandler_Delegate;
      sender : WinRt.IInspectable;
      e : Windows.UI.Xaml.Navigation.INavigationEventArgs
   )
   return WinRt.Hresult is
      Hr : WinRt.HResult := S_OK;
   begin
      this.Callback (sender, e);
      return Hr;
   end;

   -----------------------------------------------------------------------------
   -- Delegate NavigatedEventHandler

   function Invoke
   (
      this : access NavigatedEventHandler_Delegate;
      sender : WinRt.IInspectable;
      e : Windows.UI.Xaml.Navigation.INavigationEventArgs
   )
   return WinRt.Hresult is
      Hr : WinRt.HResult := S_OK;
   begin
      this.Callback (sender, e);
      return Hr;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for NavigatingCancelEventArgs

   procedure Initialize (this : in out NavigatingCancelEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out NavigatingCancelEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (INavigatingCancelEventArgs, INavigatingCancelEventArgs_Ptr);
   begin
      if this.m_INavigatingCancelEventArgs /= null then
         if this.m_INavigatingCancelEventArgs.all /= null then
            RefCount := this.m_INavigatingCancelEventArgs.all.Release;
            Free (this.m_INavigatingCancelEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for NavigatingCancelEventArgs

   function get_Cancel
   (
      this : in out NavigatingCancelEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_INavigatingCancelEventArgs.all.get_Cancel (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Cancel
   (
      this : in out NavigatingCancelEventArgs;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_INavigatingCancelEventArgs.all.put_Cancel (value);
   end;

   function get_NavigationMode
   (
      this : in out NavigatingCancelEventArgs
   )
   return WinRt.Windows.UI.Xaml.Navigation.NavigationMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Navigation.NavigationMode;
   begin
      Hr := this.m_INavigatingCancelEventArgs.all.get_NavigationMode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_SourcePageType
   (
      this : in out NavigatingCancelEventArgs
   )
   return WinRt.Windows.UI.Xaml.Interop.TypeName is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Interop.TypeName;
   begin
      Hr := this.m_INavigatingCancelEventArgs.all.get_SourcePageType (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Parameter
   (
      this : in out NavigatingCancelEventArgs
   )
   return WinRt.IInspectable is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.IInspectable;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs_Interface, WinRt.Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs2, WinRt.Windows.UI.Xaml.Navigation.IID_INavigatingCancelEventArgs2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_INavigatingCancelEventArgs.all);
      Hr := m_Interface.get_Parameter (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function get_NavigationTransitionInfo
   (
      this : in out NavigatingCancelEventArgs
   )
   return WinRt.Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo'Class is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs_Interface, WinRt.Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs2, WinRt.Windows.UI.Xaml.Navigation.IID_INavigatingCancelEventArgs2'Unchecked_Access);
   begin
      return RetVal : WinRt.Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo do
         m_Interface := QInterface (this.m_INavigatingCancelEventArgs.all);
         Hr := m_Interface.get_NavigationTransitionInfo (m_ComRetVal'Access);
         m_RefCount := m_Interface.Release;
         Retval.m_INavigationTransitionInfo := new Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo;
         Retval.m_INavigationTransitionInfo.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Delegate NavigatingCancelEventHandler

   function Invoke
   (
      this : access NavigatingCancelEventHandler_Delegate;
      sender : WinRt.IInspectable;
      e : Windows.UI.Xaml.Navigation.INavigatingCancelEventArgs
   )
   return WinRt.Hresult is
      Hr : WinRt.HResult := S_OK;
   begin
      this.Callback (sender, e);
      return Hr;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for NavigationEventArgs

   procedure Initialize (this : in out NavigationEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out NavigationEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (INavigationEventArgs, INavigationEventArgs_Ptr);
   begin
      if this.m_INavigationEventArgs /= null then
         if this.m_INavigationEventArgs.all /= null then
            RefCount := this.m_INavigationEventArgs.all.Release;
            Free (this.m_INavigationEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for NavigationEventArgs

   function get_Content
   (
      this : in out NavigationEventArgs
   )
   return WinRt.IInspectable is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.IInspectable;
   begin
      Hr := this.m_INavigationEventArgs.all.get_Content (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Parameter
   (
      this : in out NavigationEventArgs
   )
   return WinRt.IInspectable is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.IInspectable;
   begin
      Hr := this.m_INavigationEventArgs.all.get_Parameter (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_SourcePageType
   (
      this : in out NavigationEventArgs
   )
   return WinRt.Windows.UI.Xaml.Interop.TypeName is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Interop.TypeName;
   begin
      Hr := this.m_INavigationEventArgs.all.get_SourcePageType (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_NavigationMode
   (
      this : in out NavigationEventArgs
   )
   return WinRt.Windows.UI.Xaml.Navigation.NavigationMode is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Navigation.NavigationMode;
   begin
      Hr := this.m_INavigationEventArgs.all.get_NavigationMode (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Uri
   (
      this : in out NavigationEventArgs
   )
   return WinRt.Windows.Foundation.Uri'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.IUriRuntimeClass;
   begin
      return RetVal : WinRt.Windows.Foundation.Uri do
         Hr := this.m_INavigationEventArgs.all.get_Uri (m_ComRetVal'Access);
         Retval.m_IUriRuntimeClass := new Windows.Foundation.IUriRuntimeClass;
         Retval.m_IUriRuntimeClass.all := m_ComRetVal;
      end return;
   end;

   procedure put_Uri
   (
      this : in out NavigationEventArgs;
      value : Windows.Foundation.Uri'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_INavigationEventArgs.all.put_Uri (value.m_IUriRuntimeClass.all);
   end;

   function get_NavigationTransitionInfo
   (
      this : in out NavigationEventArgs
   )
   return WinRt.Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo'Class is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.Xaml.Navigation.INavigationEventArgs2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Xaml.Navigation.INavigationEventArgs_Interface, WinRt.Windows.UI.Xaml.Navigation.INavigationEventArgs2, WinRt.Windows.UI.Xaml.Navigation.IID_INavigationEventArgs2'Unchecked_Access);
   begin
      return RetVal : WinRt.Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo do
         m_Interface := QInterface (this.m_INavigationEventArgs.all);
         Hr := m_Interface.get_NavigationTransitionInfo (m_ComRetVal'Access);
         m_RefCount := m_Interface.Release;
         Retval.m_INavigationTransitionInfo := new Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo;
         Retval.m_INavigationTransitionInfo.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for NavigationFailedEventArgs

   procedure Initialize (this : in out NavigationFailedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out NavigationFailedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (INavigationFailedEventArgs, INavigationFailedEventArgs_Ptr);
   begin
      if this.m_INavigationFailedEventArgs /= null then
         if this.m_INavigationFailedEventArgs.all /= null then
            RefCount := this.m_INavigationFailedEventArgs.all.Release;
            Free (this.m_INavigationFailedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for NavigationFailedEventArgs

   function get_Exception
   (
      this : in out NavigationFailedEventArgs
   )
   return WinRt.Windows.Foundation.HResult is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.HResult;
   begin
      Hr := this.m_INavigationFailedEventArgs.all.get_Exception (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Handled
   (
      this : in out NavigationFailedEventArgs
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
   begin
      Hr := this.m_INavigationFailedEventArgs.all.get_Handled (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Handled
   (
      this : in out NavigationFailedEventArgs;
      value : WinRt.Boolean
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_INavigationFailedEventArgs.all.put_Handled (value);
   end;

   function get_SourcePageType
   (
      this : in out NavigationFailedEventArgs
   )
   return WinRt.Windows.UI.Xaml.Interop.TypeName is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Interop.TypeName;
   begin
      Hr := this.m_INavigationFailedEventArgs.all.get_SourcePageType (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- Delegate NavigationFailedEventHandler

   function Invoke
   (
      this : access NavigationFailedEventHandler_Delegate;
      sender : WinRt.IInspectable;
      e : Windows.UI.Xaml.Navigation.INavigationFailedEventArgs
   )
   return WinRt.Hresult is
      Hr : WinRt.HResult := S_OK;
   begin
      this.Callback (sender, e);
      return Hr;
   end;

   -----------------------------------------------------------------------------
   -- Delegate NavigationStoppedEventHandler

   function Invoke
   (
      this : access NavigationStoppedEventHandler_Delegate;
      sender : WinRt.IInspectable;
      e : Windows.UI.Xaml.Navigation.INavigationEventArgs
   )
   return WinRt.Hresult is
      Hr : WinRt.HResult := S_OK;
   begin
      this.Callback (sender, e);
      return Hr;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PageStackEntry

   procedure Initialize (this : in out PageStackEntry) is
   begin
      null;
   end;

   procedure Finalize (this : in out PageStackEntry) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPageStackEntry, IPageStackEntry_Ptr);
   begin
      if this.m_IPageStackEntry /= null then
         if this.m_IPageStackEntry.all /= null then
            RefCount := this.m_IPageStackEntry.all.Release;
            Free (this.m_IPageStackEntry);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PageStackEntry

   function Constructor
   (
      sourcePageType : Windows.UI.Xaml.Interop.TypeName;
      parameter : WinRt.IInspectable;
      navigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo'Class
   )
   return PageStackEntry is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.Xaml.Navigation.PageStackEntry");
      m_Factory    : access IPageStackEntryFactory_Interface'Class := null;
      m_RefCount   : WinRt.UInt32 := 0;
      m_ComRetVal  : aliased Windows.UI.Xaml.Navigation.IPageStackEntry;
   begin
      return RetVal : PageStackEntry do
         Hr := RoGetActivationFactory (m_hString, IID_IPageStackEntryFactory'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateInstance (sourcePageType, parameter, navigationTransitionInfo.m_INavigationTransitionInfo.all, m_ComRetVal'Access);
            Retval.m_IPageStackEntry := new Windows.UI.Xaml.Navigation.IPageStackEntry;
            Retval.m_IPageStackEntry.all := m_ComRetVal;
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for PageStackEntry

   function get_SourcePageTypeProperty
   return WinRt.Windows.UI.Xaml.DependencyProperty is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.UI.Xaml.Navigation.PageStackEntry");
      m_Factory        : access WinRt.Windows.UI.Xaml.Navigation.IPageStackEntryStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.IDependencyProperty;
   begin
      return RetVal : WinRt.Windows.UI.Xaml.DependencyProperty do
         Hr := RoGetActivationFactory (m_hString, IID_IPageStackEntryStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_SourcePageTypeProperty (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IDependencyProperty := new Windows.UI.Xaml.IDependencyProperty;
            Retval.m_IDependencyProperty.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PageStackEntry

   function get_SourcePageType
   (
      this : in out PageStackEntry
   )
   return WinRt.Windows.UI.Xaml.Interop.TypeName is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Interop.TypeName;
   begin
      Hr := this.m_IPageStackEntry.all.get_SourcePageType (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Parameter
   (
      this : in out PageStackEntry
   )
   return WinRt.IInspectable is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.IInspectable;
   begin
      Hr := this.m_IPageStackEntry.all.get_Parameter (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_NavigationTransitionInfo
   (
      this : in out PageStackEntry
   )
   return WinRt.Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo;
   begin
      return RetVal : WinRt.Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo do
         Hr := this.m_IPageStackEntry.all.get_NavigationTransitionInfo (m_ComRetVal'Access);
         Retval.m_INavigationTransitionInfo := new Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo;
         Retval.m_INavigationTransitionInfo.all := m_ComRetVal;
      end return;
   end;

end;