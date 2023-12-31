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
limited with WinRt.Windows.ApplicationModel.AppService;
with WinRt.Windows.Foundation;
with WinRt.Windows.Foundation.Collections;
limited with WinRt.Windows.Networking.Sockets;
limited with WinRt.Windows.Web.Http;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.System.Diagnostics.DevicePortal is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IDevicePortalConnection_Interface is interface and WinRt.IInspectable_Interface;
   type IDevicePortalConnection is access all IDevicePortalConnection_Interface'Class;
   type IDevicePortalConnection_Ptr is access all IDevicePortalConnection;

   type IDevicePortalConnectionClosedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IDevicePortalConnectionClosedEventArgs is access all IDevicePortalConnectionClosedEventArgs_Interface'Class;
   type IDevicePortalConnectionClosedEventArgs_Ptr is access all IDevicePortalConnectionClosedEventArgs;

   type IDevicePortalConnectionRequestReceivedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IDevicePortalConnectionRequestReceivedEventArgs is access all IDevicePortalConnectionRequestReceivedEventArgs_Interface'Class;
   type IDevicePortalConnectionRequestReceivedEventArgs_Ptr is access all IDevicePortalConnectionRequestReceivedEventArgs;

   type IDevicePortalConnectionStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IDevicePortalConnectionStatics is access all IDevicePortalConnectionStatics_Interface'Class;

   type IDevicePortalWebSocketConnection_Interface is interface and WinRt.IInspectable_Interface;
   type IDevicePortalWebSocketConnection is access all IDevicePortalWebSocketConnection_Interface'Class;

   type IDevicePortalWebSocketConnectionRequestReceivedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IDevicePortalWebSocketConnectionRequestReceivedEventArgs is access all IDevicePortalWebSocketConnectionRequestReceivedEventArgs_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type DevicePortalConnection is new Ada.Finalization.Limited_Controlled with
      record
         m_IDevicePortalConnection : access Windows.System.Diagnostics.DevicePortal.IDevicePortalConnection;
      end record;
   type DevicePortalConnection_Ptr is access all DevicePortalConnection;

   type DevicePortalConnectionClosedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IDevicePortalConnectionClosedEventArgs : access Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionClosedEventArgs;
      end record;
   type DevicePortalConnectionClosedEventArgs_Ptr is access all DevicePortalConnectionClosedEventArgs;

   type DevicePortalConnectionRequestReceivedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IDevicePortalConnectionRequestReceivedEventArgs : access Windows.System.Diagnostics.DevicePortal.IDevicePortalConnectionRequestReceivedEventArgs;
      end record;
   type DevicePortalConnectionRequestReceivedEventArgs_Ptr is access all DevicePortalConnectionRequestReceivedEventArgs;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type DevicePortalConnectionClosedReason is (
      Unknown_e,
      ResourceLimitsExceeded_e,
      ProtocolError_e,
      NotAuthorized_e,
      UserNotPresent_e,
      ServiceTerminated_e
   );
   for DevicePortalConnectionClosedReason use (
      Unknown_e => 0,
      ResourceLimitsExceeded_e => 1,
      ProtocolError_e => 2,
      NotAuthorized_e => 3,
      UserNotPresent_e => 4,
      ServiceTerminated_e => 5
   );
   type DevicePortalConnectionClosedReason_Ptr is access all DevicePortalConnectionClosedReason;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_HString is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.HString);
   IID_IVectorView_HString : aliased WinRt.IID := (1998123517, 59307, 22709, (155, 161, 189, 220, 20, 175, 238, 82 ));
   function QInterface_IVectorView_HString is new Generic_QueryInterface (GenericObject_Interface, IVectorView_HString.Kind, IID_IVectorView_HString'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IDevicePortalConnection is interface and WinRt.IInspectable;

      function add_Closed
      (
         this : access IDevicePortalConnection_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_Closed
      (
         this : access IDevicePortalConnection_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_RequestReceived
      (
         this : access IDevicePortalConnection_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_RequestReceived
      (
         this : access IDevicePortalConnection_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IDevicePortalConnection : aliased WinRt.IID := (256147281, 4504, 19873, (141, 84, 189, 239, 57, 62, 9, 182 ));

   -----------------------------------------------------------------------------
   -- type IDevicePortalConnectionClosedEventArgs is interface and WinRt.IInspectable;

      function get_Reason
      (
         this : access IDevicePortalConnectionClosedEventArgs_Interface;
         RetVal : access Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedReason
      )
      return WinRt.Hresult is abstract;

      IID_IDevicePortalConnectionClosedEventArgs : aliased WinRt.IID := (4244049464, 28722, 17036, (159, 80, 148, 92, 21, 169, 240, 203 ));

   -----------------------------------------------------------------------------
   -- type IDevicePortalConnectionRequestReceivedEventArgs is interface and WinRt.IInspectable;

      function get_RequestMessage
      (
         this : access IDevicePortalConnectionRequestReceivedEventArgs_Interface;
         RetVal : access Windows.Web.Http.IHttpRequestMessage
      )
      return WinRt.Hresult is abstract;

      function get_ResponseMessage
      (
         this : access IDevicePortalConnectionRequestReceivedEventArgs_Interface;
         RetVal : access Windows.Web.Http.IHttpResponseMessage
      )
      return WinRt.Hresult is abstract;

      IID_IDevicePortalConnectionRequestReceivedEventArgs : aliased WinRt.IID := (1692065861, 28634, 17497, (158, 189, 236, 206, 34, 227, 133, 89 ));

   -----------------------------------------------------------------------------
   -- type IDevicePortalConnectionStatics is interface and WinRt.IInspectable;

      function GetForAppServiceConnection
      (
         this : access IDevicePortalConnectionStatics_Interface;
         appServiceConnection : Windows.ApplicationModel.AppService.IAppServiceConnection;
         RetVal : access Windows.System.Diagnostics.DevicePortal.IDevicePortalConnection
      )
      return WinRt.Hresult is abstract;

      IID_IDevicePortalConnectionStatics : aliased WinRt.IID := (1270755815, 59833, 17989, (143, 237, 165, 62, 234, 14, 219, 214 ));

   -----------------------------------------------------------------------------
   -- type IDevicePortalWebSocketConnection is interface and WinRt.IInspectable;

      function GetServerMessageWebSocketForRequest
      (
         this : access IDevicePortalWebSocketConnection_Interface;
         request : Windows.Web.Http.IHttpRequestMessage;
         RetVal : access Windows.Networking.Sockets.IServerMessageWebSocket
      )
      return WinRt.Hresult is abstract;

      function GetServerMessageWebSocketForRequest
      (
         this : access IDevicePortalWebSocketConnection_Interface;
         request : Windows.Web.Http.IHttpRequestMessage;
         messageType : Windows.Networking.Sockets.SocketMessageType;
         protocol : WinRt.HString;
         RetVal : access Windows.Networking.Sockets.IServerMessageWebSocket
      )
      return WinRt.Hresult is abstract;

      function GetServerMessageWebSocketForRequest
      (
         this : access IDevicePortalWebSocketConnection_Interface;
         request : Windows.Web.Http.IHttpRequestMessage;
         messageType : Windows.Networking.Sockets.SocketMessageType;
         protocol : WinRt.HString;
         outboundBufferSizeInBytes : WinRt.UInt32;
         maxMessageSize : WinRt.UInt32;
         receiveMode : Windows.Networking.Sockets.MessageWebSocketReceiveMode;
         RetVal : access Windows.Networking.Sockets.IServerMessageWebSocket
      )
      return WinRt.Hresult is abstract;

      function GetServerStreamWebSocketForRequest
      (
         this : access IDevicePortalWebSocketConnection_Interface;
         request : Windows.Web.Http.IHttpRequestMessage;
         RetVal : access Windows.Networking.Sockets.IServerStreamWebSocket
      )
      return WinRt.Hresult is abstract;

      function GetServerStreamWebSocketForRequest
      (
         this : access IDevicePortalWebSocketConnection_Interface;
         request : Windows.Web.Http.IHttpRequestMessage;
         protocol : WinRt.HString;
         outboundBufferSizeInBytes : WinRt.UInt32;
         noDelay : WinRt.Boolean;
         RetVal : access Windows.Networking.Sockets.IServerStreamWebSocket
      )
      return WinRt.Hresult is abstract;

      IID_IDevicePortalWebSocketConnection : aliased WinRt.IID := (1734703392, 54874, 17136, (174, 244, 120, 120, 8, 9, 139, 123 ));

   -----------------------------------------------------------------------------
   -- type IDevicePortalWebSocketConnectionRequestReceivedEventArgs is interface and WinRt.IInspectable;

      function get_IsWebSocketUpgradeRequest
      (
         this : access IDevicePortalWebSocketConnectionRequestReceivedEventArgs_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_WebSocketProtocolsRequested
      (
         this : access IDevicePortalWebSocketConnectionRequestReceivedEventArgs_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetDeferral
      (
         this : access IDevicePortalWebSocketConnectionRequestReceivedEventArgs_Interface;
         RetVal : access Windows.Foundation.IDeferral
      )
      return WinRt.Hresult is abstract;

      IID_IDevicePortalWebSocketConnectionRequestReceivedEventArgs : aliased WinRt.IID := (2046675642, 5980, 18233, (159, 116, 221, 167, 151, 195, 91, 63 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DevicePortalConnection

   overriding procedure Initialize (this : in out DevicePortalConnection);
   overriding procedure Finalize (this : in out DevicePortalConnection);

   -----------------------------------------------------------------------------
   -- Static Interfaces for DevicePortalConnection

   function GetForAppServiceConnection
   (
      appServiceConnection : Windows.ApplicationModel.AppService.AppServiceConnection'Class
   )
   return WinRt.Windows.System.Diagnostics.DevicePortal.DevicePortalConnection;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DevicePortalConnection

   function add_Closed
   (
      this : in out DevicePortalConnection;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_Closed
   (
      this : in out DevicePortalConnection;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_RequestReceived
   (
      this : in out DevicePortalConnection;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_RequestReceived
   (
      this : in out DevicePortalConnection;
      token : Windows.Foundation.EventRegistrationToken
   );

   function GetServerMessageWebSocketForRequest
   (
      this : in out DevicePortalConnection;
      request : Windows.Web.Http.HttpRequestMessage'Class
   )
   return WinRt.Windows.Networking.Sockets.ServerMessageWebSocket'Class;

   function GetServerMessageWebSocketForRequest
   (
      this : in out DevicePortalConnection;
      request : Windows.Web.Http.HttpRequestMessage'Class;
      messageType : Windows.Networking.Sockets.SocketMessageType;
      protocol : WinRt.WString
   )
   return WinRt.Windows.Networking.Sockets.ServerMessageWebSocket'Class;

   function GetServerMessageWebSocketForRequest
   (
      this : in out DevicePortalConnection;
      request : Windows.Web.Http.HttpRequestMessage'Class;
      messageType : Windows.Networking.Sockets.SocketMessageType;
      protocol : WinRt.WString;
      outboundBufferSizeInBytes : WinRt.UInt32;
      maxMessageSize : WinRt.UInt32;
      receiveMode : Windows.Networking.Sockets.MessageWebSocketReceiveMode
   )
   return WinRt.Windows.Networking.Sockets.ServerMessageWebSocket'Class;

   function GetServerStreamWebSocketForRequest
   (
      this : in out DevicePortalConnection;
      request : Windows.Web.Http.HttpRequestMessage'Class
   )
   return WinRt.Windows.Networking.Sockets.ServerStreamWebSocket'Class;

   function GetServerStreamWebSocketForRequest
   (
      this : in out DevicePortalConnection;
      request : Windows.Web.Http.HttpRequestMessage'Class;
      protocol : WinRt.WString;
      outboundBufferSizeInBytes : WinRt.UInt32;
      noDelay : WinRt.Boolean
   )
   return WinRt.Windows.Networking.Sockets.ServerStreamWebSocket'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DevicePortalConnectionClosedEventArgs

   overriding procedure Initialize (this : in out DevicePortalConnectionClosedEventArgs);
   overriding procedure Finalize (this : in out DevicePortalConnectionClosedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DevicePortalConnectionClosedEventArgs

   function get_Reason
   (
      this : in out DevicePortalConnectionClosedEventArgs
   )
   return WinRt.Windows.System.Diagnostics.DevicePortal.DevicePortalConnectionClosedReason;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DevicePortalConnectionRequestReceivedEventArgs

   overriding procedure Initialize (this : in out DevicePortalConnectionRequestReceivedEventArgs);
   overriding procedure Finalize (this : in out DevicePortalConnectionRequestReceivedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DevicePortalConnectionRequestReceivedEventArgs

   function get_RequestMessage
   (
      this : in out DevicePortalConnectionRequestReceivedEventArgs
   )
   return WinRt.Windows.Web.Http.HttpRequestMessage'Class;

   function get_ResponseMessage
   (
      this : in out DevicePortalConnectionRequestReceivedEventArgs
   )
   return WinRt.Windows.Web.Http.HttpResponseMessage'Class;

   function get_IsWebSocketUpgradeRequest
   (
      this : in out DevicePortalConnectionRequestReceivedEventArgs
   )
   return WinRt.Boolean;

   function get_WebSocketProtocolsRequested
   (
      this : in out DevicePortalConnectionRequestReceivedEventArgs
   )
   return IVectorView_HString.Kind;

   function GetDeferral
   (
      this : in out DevicePortalConnectionRequestReceivedEventArgs
   )
   return WinRt.Windows.Foundation.Deferral'Class;

end;
