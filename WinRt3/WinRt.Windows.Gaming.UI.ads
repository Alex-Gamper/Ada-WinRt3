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
limited with WinRt.Windows.ApplicationModel.Activation;
with WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Gaming.UI is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IGameBarStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IGameBarStatics is access IGameBarStatics_Interface'Class;

   type IGameChatMessageReceivedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IGameChatMessageReceivedEventArgs is access IGameChatMessageReceivedEventArgs_Interface'Class;
   type IGameChatMessageReceivedEventArgs_Ptr is access all IGameChatMessageReceivedEventArgs;

   type IGameChatOverlay_Interface is interface and WinRt.IInspectable_Interface;
   type IGameChatOverlay is access IGameChatOverlay_Interface'Class;
   type IGameChatOverlay_Ptr is access all IGameChatOverlay;

   type IGameChatOverlayMessageSource_Interface is interface and WinRt.IInspectable_Interface;
   type IGameChatOverlayMessageSource is access IGameChatOverlayMessageSource_Interface'Class;
   type IGameChatOverlayMessageSource_Ptr is access all IGameChatOverlayMessageSource;

   type IGameChatOverlayStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IGameChatOverlayStatics is access IGameChatOverlayStatics_Interface'Class;

   type IGameUIProviderActivatedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IGameUIProviderActivatedEventArgs is access IGameUIProviderActivatedEventArgs_Interface'Class;
   type IGameUIProviderActivatedEventArgs_Ptr is access all IGameUIProviderActivatedEventArgs;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type GameChatMessageReceivedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameChatMessageReceivedEventArgs : access Windows.Gaming.UI.IGameChatMessageReceivedEventArgs;
      end record;
   type GameChatMessageReceivedEventArgs_Ptr is access all GameChatMessageReceivedEventArgs;

   type GameChatOverlay is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameChatOverlay : access Windows.Gaming.UI.IGameChatOverlay;
      end record;
   type GameChatOverlay_Ptr is access all GameChatOverlay;

   type GameChatOverlayMessageSource is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameChatOverlayMessageSource : access Windows.Gaming.UI.IGameChatOverlayMessageSource;
      end record;
   type GameChatOverlayMessageSource_Ptr is access all GameChatOverlayMessageSource;

   type GameUIProviderActivatedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IGameUIProviderActivatedEventArgs : access Windows.Gaming.UI.IGameUIProviderActivatedEventArgs;
      end record;
   type GameUIProviderActivatedEventArgs_Ptr is access all GameUIProviderActivatedEventArgs;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type GameChatMessageOrigin is (
      Voice_e,
      Text_e
   );
   for GameChatMessageOrigin use (
      Voice_e => 0,
      Text_e => 1
   );
   type GameChatMessageOrigin_Ptr is access all GameChatMessageOrigin;

   type GameChatOverlayPosition is (
      BottomCenter_e,
      BottomLeft_e,
      BottomRight_e,
      MiddleRight_e,
      MiddleLeft_e,
      TopCenter_e,
      TopLeft_e,
      TopRight_e
   );
   for GameChatOverlayPosition use (
      BottomCenter_e => 0,
      BottomLeft_e => 1,
      BottomRight_e => 2,
      MiddleRight_e => 3,
      MiddleLeft_e => 4,
      TopCenter_e => 5,
      TopLeft_e => 6,
      TopRight_e => 7
   );
   type GameChatOverlayPosition_Ptr is access all GameChatOverlayPosition;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type GameChatOverlayContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type GameChatOverlayContract_Ptr is access all GameChatOverlayContract;

   type GamingUIProviderContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type GamingUIProviderContract_Ptr is access all GamingUIProviderContract;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IGameBarStatics is interface and WinRt.IInspectable;

      function add_VisibilityChanged
      (
         this : access IGameBarStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_VisibilityChanged
      (
         this : access IGameBarStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_IsInputRedirectedChanged
      (
         this : access IGameBarStatics_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_IsInputRedirectedChanged
      (
         this : access IGameBarStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_Visible
      (
         this : access IGameBarStatics_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsInputRedirected
      (
         this : access IGameBarStatics_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IGameBarStatics : aliased WinRt.IID := (498705042, 52344, 16755, (190, 69, 182, 30, 103, 40, 62, 167 ));

   -----------------------------------------------------------------------------
   -- type IGameChatMessageReceivedEventArgs is interface and WinRt.IInspectable;

      function get_AppId
      (
         this : access IGameChatMessageReceivedEventArgs_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_AppDisplayName
      (
         this : access IGameChatMessageReceivedEventArgs_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_SenderName
      (
         this : access IGameChatMessageReceivedEventArgs_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Message
      (
         this : access IGameChatMessageReceivedEventArgs_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Origin
      (
         this : access IGameChatMessageReceivedEventArgs_Interface;
         RetVal : access Windows.Gaming.UI.GameChatMessageOrigin
      )
      return WinRt.Hresult is abstract;

      IID_IGameChatMessageReceivedEventArgs : aliased WinRt.IID := (2726429169, 16313, 20034, (164, 3, 122, 252, 226, 2, 59, 30 ));

   -----------------------------------------------------------------------------
   -- type IGameChatOverlay is interface and WinRt.IInspectable;

      function get_DesiredPosition
      (
         this : access IGameChatOverlay_Interface;
         RetVal : access Windows.Gaming.UI.GameChatOverlayPosition
      )
      return WinRt.Hresult is abstract;

      function put_DesiredPosition
      (
         this : access IGameChatOverlay_Interface;
         value : Windows.Gaming.UI.GameChatOverlayPosition
      )
      return WinRt.Hresult is abstract;

      function AddMessage
      (
         this : access IGameChatOverlay_Interface;
         sender : WinRt.HString;
         message : WinRt.HString;
         origin : Windows.Gaming.UI.GameChatMessageOrigin
      )
      return WinRt.Hresult is abstract;

      IID_IGameChatOverlay : aliased WinRt.IID := (4224075877, 63228, 19016, (174, 7, 3, 172, 110, 212, 55, 4 ));

   -----------------------------------------------------------------------------
   -- type IGameChatOverlayMessageSource is interface and WinRt.IInspectable;

      function add_MessageReceived
      (
         this : access IGameChatOverlayMessageSource_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_MessageReceived
      (
         this : access IGameChatOverlayMessageSource_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function SetDelayBeforeClosingAfterMessageReceived
      (
         this : access IGameChatOverlayMessageSource_Interface;
         value : Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      IID_IGameChatOverlayMessageSource : aliased WinRt.IID := (504853399, 23035, 20303, (142, 154, 128, 172, 248, 23, 116, 60 ));

   -----------------------------------------------------------------------------
   -- type IGameChatOverlayStatics is interface and WinRt.IInspectable;

      function GetDefault
      (
         this : access IGameChatOverlayStatics_Interface;
         RetVal : access Windows.Gaming.UI.IGameChatOverlay
      )
      return WinRt.Hresult is abstract;

      IID_IGameChatOverlayStatics : aliased WinRt.IID := (2309813780, 30823, 18935, (150, 135, 37, 217, 219, 244, 68, 209 ));

   -----------------------------------------------------------------------------
   -- type IGameUIProviderActivatedEventArgs is interface and WinRt.IInspectable;

      function get_GameUIArgs
      (
         this : access IGameUIProviderActivatedEventArgs_Interface;
         RetVal : access Windows.Foundation.Collections.IPropertySet
      )
      return WinRt.Hresult is abstract;

      function ReportCompleted
      (
         this : access IGameUIProviderActivatedEventArgs_Interface;
         results : Windows.Foundation.Collections.IPropertySet
      )
      return WinRt.Hresult is abstract;

      IID_IGameUIProviderActivatedEventArgs : aliased WinRt.IID := (2813534270, 51959, 19949, (187, 210, 71, 222, 67, 187, 109, 213 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package GameBar is

      function add_VisibilityChanged
      (
         handler : GenericObject
      )
      return WinRt.Windows.Foundation.EventRegistrationToken;

      procedure remove_VisibilityChanged
      (
         token : Windows.Foundation.EventRegistrationToken
      );

      function add_IsInputRedirectedChanged
      (
         handler : GenericObject
      )
      return WinRt.Windows.Foundation.EventRegistrationToken;

      procedure remove_IsInputRedirectedChanged
      (
         token : Windows.Foundation.EventRegistrationToken
      );

      function get_Visible
      return WinRt.Boolean;

      function get_IsInputRedirected
      return WinRt.Boolean;

   end GameBar;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameChatMessageReceivedEventArgs

   overriding procedure Initialize (this : in out GameChatMessageReceivedEventArgs);
   overriding procedure Finalize (this : in out GameChatMessageReceivedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameChatMessageReceivedEventArgs

   function get_AppId
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.WString;

   function get_AppDisplayName
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.WString;

   function get_SenderName
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.WString;

   function get_Message
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.WString;

   function get_Origin
   (
      this : in out GameChatMessageReceivedEventArgs
   )
   return WinRt.Windows.Gaming.UI.GameChatMessageOrigin;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameChatOverlay

   overriding procedure Initialize (this : in out GameChatOverlay);
   overriding procedure Finalize (this : in out GameChatOverlay);

   -----------------------------------------------------------------------------
   -- Static Interfaces for GameChatOverlay

   function GetDefault
   return WinRt.Windows.Gaming.UI.GameChatOverlay;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameChatOverlay

   function get_DesiredPosition
   (
      this : in out GameChatOverlay
   )
   return WinRt.Windows.Gaming.UI.GameChatOverlayPosition;

   procedure put_DesiredPosition
   (
      this : in out GameChatOverlay;
      value : Windows.Gaming.UI.GameChatOverlayPosition
   );

   procedure AddMessage
   (
      this : in out GameChatOverlay;
      sender : WinRt.WString;
      message : WinRt.WString;
      origin : Windows.Gaming.UI.GameChatMessageOrigin
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameChatOverlayMessageSource

   overriding procedure Initialize (this : in out GameChatOverlayMessageSource);
   overriding procedure Finalize (this : in out GameChatOverlayMessageSource);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for GameChatOverlayMessageSource

   function Constructor return GameChatOverlayMessageSource;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameChatOverlayMessageSource

   function add_MessageReceived
   (
      this : in out GameChatOverlayMessageSource;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_MessageReceived
   (
      this : in out GameChatOverlayMessageSource;
      token : Windows.Foundation.EventRegistrationToken
   );

   procedure SetDelayBeforeClosingAfterMessageReceived
   (
      this : in out GameChatOverlayMessageSource;
      value : Windows.Foundation.TimeSpan
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GameUIProviderActivatedEventArgs

   overriding procedure Initialize (this : in out GameUIProviderActivatedEventArgs);
   overriding procedure Finalize (this : in out GameUIProviderActivatedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GameUIProviderActivatedEventArgs

   function get_GameUIArgs
   (
      this : in out GameUIProviderActivatedEventArgs
   )
   return WinRt.Windows.Foundation.Collections.ValueSet'Class;

   procedure ReportCompleted
   (
      this : in out GameUIProviderActivatedEventArgs;
      results : Windows.Foundation.Collections.ValueSet'Class
   );

   function get_Kind
   (
      this : in out GameUIProviderActivatedEventArgs
   )
   return WinRt.Windows.ApplicationModel.Activation.ActivationKind;

   function get_PreviousExecutionState
   (
      this : in out GameUIProviderActivatedEventArgs
   )
   return WinRt.Windows.ApplicationModel.Activation.ApplicationExecutionState;

   function get_SplashScreen
   (
      this : in out GameUIProviderActivatedEventArgs
   )
   return WinRt.Windows.ApplicationModel.Activation.SplashScreen'Class;

end;
