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
with WinRt.Windows.ApplicationModel.Activation;
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Gaming.UI is

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package body GameBar is

      function add_VisibilityChanged
      (
         handler : GenericObject
      )
      return WinRt.Windows.Foundation.EventRegistrationToken is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Gaming.UI.GameBar");
         m_Factory        : access WinRt.Windows.Gaming.UI.IGameBarStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameBarStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.add_VisibilityChanged (handler, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         return m_ComRetVal;
      end;

      procedure remove_VisibilityChanged
      (
         token : Windows.Foundation.EventRegistrationToken
      ) is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Gaming.UI.GameBar");
         m_Factory        : access WinRt.Windows.Gaming.UI.IGameBarStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameBarStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.remove_VisibilityChanged (token);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end;

      function add_IsInputRedirectedChanged
      (
         handler : GenericObject
      )
      return WinRt.Windows.Foundation.EventRegistrationToken is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Gaming.UI.GameBar");
         m_Factory        : access WinRt.Windows.Gaming.UI.IGameBarStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameBarStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.add_IsInputRedirectedChanged (handler, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         return m_ComRetVal;
      end;

      procedure remove_IsInputRedirectedChanged
      (
         token : Windows.Foundation.EventRegistrationToken
      ) is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Gaming.UI.GameBar");
         m_Factory        : access WinRt.Windows.Gaming.UI.IGameBarStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameBarStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.remove_IsInputRedirectedChanged (token);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end;

      function get_Visible
      return WinRt.Boolean is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Gaming.UI.GameBar");
         m_Factory        : access WinRt.Windows.Gaming.UI.IGameBarStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased WinRt.Boolean;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameBarStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_Visible (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         return m_ComRetVal;
      end;

      function get_IsInputRedirected
      return WinRt.Boolean is
         Hr               : WinRt.HResult := S_OK;
         m_hString        : WinRt.HString := To_HString ("Windows.Gaming.UI.GameBar");
         m_Factory        : access WinRt.Windows.Gaming.UI.IGameBarStatics_Interface'Class := null;
         m_RefCount       : WinRt.UInt32 := 0;
         m_ComRetVal      : aliased WinRt.Boolean;
      begin
         Hr := RoGetActivationFactory (m_hString, IID_IGameBarStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.get_IsInputRedirected (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
         end if;
         Hr := WindowsDeleteString (m_hString);
         return m_ComRetVal;
      end;

   end GameBar;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameChatMessageReceivedEventArgs

   procedure Initialize (this : in out GameChatMessageReceivedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out GameChatMessageReceivedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGameChatMessageReceivedEventArgs, IGameChatMessageReceivedEventArgs_Ptr);
   begin
      if this.m_IGameChatMessageReceivedEventArgs /= null then
         if this.m_IGameChatMessageReceivedEventArgs.all /= null then
            RefCount := this.m_IGameChatMessageReceivedEventArgs.all.Release;
            Free (this.m_IGameChatMessageReceivedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameChatMessageReceivedEventArgs

   function get_AppId
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IGameChatMessageReceivedEventArgs.all.get_AppId (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_AppDisplayName
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IGameChatMessageReceivedEventArgs.all.get_AppDisplayName (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_SenderName
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IGameChatMessageReceivedEventArgs.all.get_SenderName (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_Message
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IGameChatMessageReceivedEventArgs.all.get_Message (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_Origin
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.Windows.Gaming.UI.GameChatMessageOrigin is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Gaming.UI.GameChatMessageOrigin;
   begin
      Hr := this.m_IGameChatMessageReceivedEventArgs.all.get_Origin (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameChatOverlay

   procedure Initialize (this : in out GameChatOverlay) is
   begin
      null;
   end;

   procedure Finalize (this : in out GameChatOverlay) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGameChatOverlay, IGameChatOverlay_Ptr);
   begin
      if this.m_IGameChatOverlay /= null then
         if this.m_IGameChatOverlay.all /= null then
            RefCount := this.m_IGameChatOverlay.all.Release;
            Free (this.m_IGameChatOverlay);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for GameChatOverlay

   function GetDefault
   return WinRt.Windows.Gaming.UI.GameChatOverlay is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Gaming.UI.GameChatOverlay");
      m_Factory        : access WinRt.Windows.Gaming.UI.IGameChatOverlayStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Gaming.UI.IGameChatOverlay;
   begin
      return RetVal : WinRt.Windows.Gaming.UI.GameChatOverlay do
         Hr := RoGetActivationFactory (m_hString, IID_IGameChatOverlayStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetDefault (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IGameChatOverlay := new Windows.Gaming.UI.IGameChatOverlay;
            Retval.m_IGameChatOverlay.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameChatOverlay

   function get_DesiredPosition
   (
      this : in out GameChatOverlay
   )
   return WinRt.Windows.Gaming.UI.GameChatOverlayPosition is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Gaming.UI.GameChatOverlayPosition;
   begin
      Hr := this.m_IGameChatOverlay.all.get_DesiredPosition (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_DesiredPosition
   (
      this : in out GameChatOverlay;
      value : Windows.Gaming.UI.GameChatOverlayPosition
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGameChatOverlay.all.put_DesiredPosition (value);
   end;

   procedure AddMessage
   (
      this : in out GameChatOverlay;
      sender : WinRt.WString;
      message : WinRt.WString;
      origin : Windows.Gaming.UI.GameChatMessageOrigin
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_sender : WinRt.HString := To_HString (sender);
      HStr_message : WinRt.HString := To_HString (message);
   begin
      Hr := this.m_IGameChatOverlay.all.AddMessage (HStr_sender, HStr_message, origin);
      Hr := WindowsDeleteString (HStr_sender);
      Hr := WindowsDeleteString (HStr_message);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameChatOverlayMessageSource

   procedure Initialize (this : in out GameChatOverlayMessageSource) is
   begin
      null;
   end;

   procedure Finalize (this : in out GameChatOverlayMessageSource) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGameChatOverlayMessageSource, IGameChatOverlayMessageSource_Ptr);
   begin
      if this.m_IGameChatOverlayMessageSource /= null then
         if this.m_IGameChatOverlayMessageSource.all /= null then
            RefCount := this.m_IGameChatOverlayMessageSource.all.Release;
            Free (this.m_IGameChatOverlayMessageSource);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for GameChatOverlayMessageSource

   function Constructor return GameChatOverlayMessageSource is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Gaming.UI.GameChatOverlayMessageSource");
      m_ComRetVal  : aliased Windows.Gaming.UI.IGameChatOverlayMessageSource;
   begin
      return RetVal : GameChatOverlayMessageSource do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IGameChatOverlayMessageSource := new Windows.Gaming.UI.IGameChatOverlayMessageSource;
            Retval.m_IGameChatOverlayMessageSource.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameChatOverlayMessageSource

   function add_MessageReceived
   (
      this : in out GameChatOverlayMessageSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IGameChatOverlayMessageSource.all.add_MessageReceived (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_MessageReceived
   (
      this : in out GameChatOverlayMessageSource;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGameChatOverlayMessageSource.all.remove_MessageReceived (token);
   end;

   procedure SetDelayBeforeClosingAfterMessageReceived
   (
      this : in out GameChatOverlayMessageSource;
      value : Windows.Foundation.TimeSpan
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGameChatOverlayMessageSource.all.SetDelayBeforeClosingAfterMessageReceived (value);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameUIProviderActivatedEventArgs

   procedure Initialize (this : in out GameUIProviderActivatedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out GameUIProviderActivatedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IGameUIProviderActivatedEventArgs, IGameUIProviderActivatedEventArgs_Ptr);
   begin
      if this.m_IGameUIProviderActivatedEventArgs /= null then
         if this.m_IGameUIProviderActivatedEventArgs.all /= null then
            RefCount := this.m_IGameUIProviderActivatedEventArgs.all.Release;
            Free (this.m_IGameUIProviderActivatedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameUIProviderActivatedEventArgs

   function get_GameUIArgs
   (
      this : in out GameUIProviderActivatedEventArgs
   )
   return WinRt.Windows.Foundation.Collections.ValueSet'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.Collections.IPropertySet;
   begin
      return RetVal : WinRt.Windows.Foundation.Collections.ValueSet do
         Hr := this.m_IGameUIProviderActivatedEventArgs.all.get_GameUIArgs (m_ComRetVal'Access);
         Retval.m_IPropertySet := new Windows.Foundation.Collections.IPropertySet;
         Retval.m_IPropertySet.all := m_ComRetVal;
      end return;
   end;

   procedure ReportCompleted
   (
      this : in out GameUIProviderActivatedEventArgs;
      results : Windows.Foundation.Collections.ValueSet'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IGameUIProviderActivatedEventArgs.all.ReportCompleted (results.m_IPropertySet.all);
   end;

   function get_Kind
   (
      this : in out GameUIProviderActivatedEventArgs
   )
   return WinRt.Windows.ApplicationModel.Activation.ActivationKind is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.ApplicationModel.Activation.IActivatedEventArgs := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.Activation.ActivationKind;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Gaming.UI.IGameUIProviderActivatedEventArgs_Interface, WinRt.Windows.ApplicationModel.Activation.IActivatedEventArgs, WinRt.Windows.ApplicationModel.Activation.IID_IActivatedEventArgs'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IGameUIProviderActivatedEventArgs.all);
      Hr := m_Interface.get_Kind (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function get_PreviousExecutionState
   (
      this : in out GameUIProviderActivatedEventArgs
   )
   return WinRt.Windows.ApplicationModel.Activation.ApplicationExecutionState is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.ApplicationModel.Activation.IActivatedEventArgs := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.Activation.ApplicationExecutionState;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Gaming.UI.IGameUIProviderActivatedEventArgs_Interface, WinRt.Windows.ApplicationModel.Activation.IActivatedEventArgs, WinRt.Windows.ApplicationModel.Activation.IID_IActivatedEventArgs'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IGameUIProviderActivatedEventArgs.all);
      Hr := m_Interface.get_PreviousExecutionState (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function get_SplashScreen
   (
      this : in out GameUIProviderActivatedEventArgs
   )
   return WinRt.Windows.ApplicationModel.Activation.SplashScreen'Class is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.ApplicationModel.Activation.IActivatedEventArgs := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.Activation.ISplashScreen;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Gaming.UI.IGameUIProviderActivatedEventArgs_Interface, WinRt.Windows.ApplicationModel.Activation.IActivatedEventArgs, WinRt.Windows.ApplicationModel.Activation.IID_IActivatedEventArgs'Unchecked_Access);
   begin
      return RetVal : WinRt.Windows.ApplicationModel.Activation.SplashScreen do
         m_Interface := QInterface (this.m_IGameUIProviderActivatedEventArgs.all);
         Hr := m_Interface.get_SplashScreen (m_ComRetVal'Access);
         m_RefCount := m_Interface.Release;
         Retval.m_ISplashScreen := new Windows.ApplicationModel.Activation.ISplashScreen;
         Retval.m_ISplashScreen.all := m_ComRetVal;
      end return;
   end;

end;
