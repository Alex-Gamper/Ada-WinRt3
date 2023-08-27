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
with WinRt.Windows.Foundation.Collections;
limited with WinRt.Windows.System;
limited with WinRt.Windows.System.RemoteSystems;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.AppService is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IAppServiceCatalogStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceCatalogStatics is access all IAppServiceCatalogStatics_Interface'Class;

   type IAppServiceClosedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceClosedEventArgs is access all IAppServiceClosedEventArgs_Interface'Class;
   type IAppServiceClosedEventArgs_Ptr is access all IAppServiceClosedEventArgs;

   type IAppServiceConnection_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceConnection is access all IAppServiceConnection_Interface'Class;
   type IAppServiceConnection_Ptr is access all IAppServiceConnection;

   type IAppServiceConnection2_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceConnection2 is access all IAppServiceConnection2_Interface'Class;

   type IAppServiceConnectionStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceConnectionStatics is access all IAppServiceConnectionStatics_Interface'Class;

   type IAppServiceDeferral_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceDeferral is access all IAppServiceDeferral_Interface'Class;
   type IAppServiceDeferral_Ptr is access all IAppServiceDeferral;

   type IAppServiceRequest_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceRequest is access all IAppServiceRequest_Interface'Class;
   type IAppServiceRequest_Ptr is access all IAppServiceRequest;

   type IAppServiceRequestReceivedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceRequestReceivedEventArgs is access all IAppServiceRequestReceivedEventArgs_Interface'Class;
   type IAppServiceRequestReceivedEventArgs_Ptr is access all IAppServiceRequestReceivedEventArgs;

   type IAppServiceResponse_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceResponse is access all IAppServiceResponse_Interface'Class;
   type IAppServiceResponse_Ptr is access all IAppServiceResponse;

   type IAppServiceTriggerDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceTriggerDetails is access all IAppServiceTriggerDetails_Interface'Class;
   type IAppServiceTriggerDetails_Ptr is access all IAppServiceTriggerDetails;

   type IAppServiceTriggerDetails2_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceTriggerDetails2 is access all IAppServiceTriggerDetails2_Interface'Class;

   type IAppServiceTriggerDetails3_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceTriggerDetails3 is access all IAppServiceTriggerDetails3_Interface'Class;

   type IAppServiceTriggerDetails4_Interface is interface and WinRt.IInspectable_Interface;
   type IAppServiceTriggerDetails4 is access all IAppServiceTriggerDetails4_Interface'Class;

   type IStatelessAppServiceResponse_Interface is interface and WinRt.IInspectable_Interface;
   type IStatelessAppServiceResponse is access all IStatelessAppServiceResponse_Interface'Class;
   type IStatelessAppServiceResponse_Ptr is access all IStatelessAppServiceResponse;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type AppServiceClosedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IAppServiceClosedEventArgs : access Windows.ApplicationModel.AppService.IAppServiceClosedEventArgs;
      end record;
   type AppServiceClosedEventArgs_Ptr is access all AppServiceClosedEventArgs;

   type AppServiceConnection is new Ada.Finalization.Limited_Controlled with
      record
         m_IAppServiceConnection : access Windows.ApplicationModel.AppService.IAppServiceConnection;
      end record;
   type AppServiceConnection_Ptr is access all AppServiceConnection;

   type AppServiceDeferral is new Ada.Finalization.Limited_Controlled with
      record
         m_IAppServiceDeferral : access Windows.ApplicationModel.AppService.IAppServiceDeferral;
      end record;
   type AppServiceDeferral_Ptr is access all AppServiceDeferral;

   type AppServiceRequest is new Ada.Finalization.Limited_Controlled with
      record
         m_IAppServiceRequest : access Windows.ApplicationModel.AppService.IAppServiceRequest;
      end record;
   type AppServiceRequest_Ptr is access all AppServiceRequest;

   type AppServiceRequestReceivedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IAppServiceRequestReceivedEventArgs : access Windows.ApplicationModel.AppService.IAppServiceRequestReceivedEventArgs;
      end record;
   type AppServiceRequestReceivedEventArgs_Ptr is access all AppServiceRequestReceivedEventArgs;

   type AppServiceResponse is new Ada.Finalization.Limited_Controlled with
      record
         m_IAppServiceResponse : access Windows.ApplicationModel.AppService.IAppServiceResponse;
      end record;
   type AppServiceResponse_Ptr is access all AppServiceResponse;

   type AppServiceTriggerDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IAppServiceTriggerDetails : access Windows.ApplicationModel.AppService.IAppServiceTriggerDetails;
      end record;
   type AppServiceTriggerDetails_Ptr is access all AppServiceTriggerDetails;

   type StatelessAppServiceResponse is new Ada.Finalization.Limited_Controlled with
      record
         m_IStatelessAppServiceResponse : access Windows.ApplicationModel.AppService.IStatelessAppServiceResponse;
      end record;
   type StatelessAppServiceResponse_Ptr is access all StatelessAppServiceResponse;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type AppServiceClosedStatus is (
      Completed_e,
      Canceled_e,
      ResourceLimitsExceeded_e,
      Unknown_e
   );
   for AppServiceClosedStatus use (
      Completed_e => 0,
      Canceled_e => 1,
      ResourceLimitsExceeded_e => 2,
      Unknown_e => 3
   );
   type AppServiceClosedStatus_Ptr is access all AppServiceClosedStatus;

   type AppServiceConnectionStatus is (
      Success_e,
      AppNotInstalled_e,
      AppUnavailable_e,
      AppServiceUnavailable_e,
      Unknown_e,
      RemoteSystemUnavailable_e,
      RemoteSystemNotSupportedByApp_e,
      NotAuthorized_e,
      AuthenticationError_e,
      NetworkNotAvailable_e,
      DisabledByPolicy_e,
      WebServiceUnavailable_e
   );
   for AppServiceConnectionStatus use (
      Success_e => 0,
      AppNotInstalled_e => 1,
      AppUnavailable_e => 2,
      AppServiceUnavailable_e => 3,
      Unknown_e => 4,
      RemoteSystemUnavailable_e => 5,
      RemoteSystemNotSupportedByApp_e => 6,
      NotAuthorized_e => 7,
      AuthenticationError_e => 8,
      NetworkNotAvailable_e => 9,
      DisabledByPolicy_e => 10,
      WebServiceUnavailable_e => 11
   );
   type AppServiceConnectionStatus_Ptr is access all AppServiceConnectionStatus;

   type AppServiceResponseStatus is (
      Success_e,
      Failure_e,
      ResourceLimitsExceeded_e,
      Unknown_e,
      RemoteSystemUnavailable_e,
      MessageSizeTooLarge_e,
      AppUnavailable_e,
      AuthenticationError_e,
      NetworkNotAvailable_e,
      DisabledByPolicy_e,
      WebServiceUnavailable_e
   );
   for AppServiceResponseStatus use (
      Success_e => 0,
      Failure_e => 1,
      ResourceLimitsExceeded_e => 2,
      Unknown_e => 3,
      RemoteSystemUnavailable_e => 4,
      MessageSizeTooLarge_e => 5,
      AppUnavailable_e => 6,
      AuthenticationError_e => 7,
      NetworkNotAvailable_e => 8,
      DisabledByPolicy_e => 9,
      WebServiceUnavailable_e => 10
   );
   type AppServiceResponseStatus_Ptr is access all AppServiceResponseStatus;

   type StatelessAppServiceResponseStatus is (
      Success_e,
      AppNotInstalled_e,
      AppUnavailable_e,
      AppServiceUnavailable_e,
      RemoteSystemUnavailable_e,
      RemoteSystemNotSupportedByApp_e,
      NotAuthorized_e,
      ResourceLimitsExceeded_e,
      MessageSizeTooLarge_e,
      Failure_e,
      Unknown_e,
      AuthenticationError_e,
      NetworkNotAvailable_e,
      DisabledByPolicy_e,
      WebServiceUnavailable_e
   );
   for StatelessAppServiceResponseStatus use (
      Success_e => 0,
      AppNotInstalled_e => 1,
      AppUnavailable_e => 2,
      AppServiceUnavailable_e => 3,
      RemoteSystemUnavailable_e => 4,
      RemoteSystemNotSupportedByApp_e => 5,
      NotAuthorized_e => 6,
      ResourceLimitsExceeded_e => 7,
      MessageSizeTooLarge_e => 8,
      Failure_e => 9,
      Unknown_e => 10,
      AuthenticationError_e => 11,
      NetworkNotAvailable_e => 12,
      DisabledByPolicy_e => 13,
      WebServiceUnavailable_e => 14
   );
   type StatelessAppServiceResponseStatus_Ptr is access all StatelessAppServiceResponseStatus;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IAppServiceCatalogStatics is interface and WinRt.IInspectable;

      function FindAppServiceProvidersAsync
      (
         this : access IAppServiceCatalogStatics_Interface;
         appServiceName : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceCatalogStatics : aliased WinRt.IID := (4010616071, 53554, 19589, (131, 149, 60, 49, 213, 161, 233, 65 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceClosedEventArgs is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IAppServiceClosedEventArgs_Interface;
         RetVal : access Windows.ApplicationModel.AppService.AppServiceClosedStatus
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceClosedEventArgs : aliased WinRt.IID := (3730839286, 51971, 19765, (172, 141, 204, 99, 3, 35, 151, 49 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceConnection is interface and WinRt.IInspectable;

      function get_AppServiceName
      (
         this : access IAppServiceConnection_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_AppServiceName
      (
         this : access IAppServiceConnection_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_PackageFamilyName
      (
         this : access IAppServiceConnection_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_PackageFamilyName
      (
         this : access IAppServiceConnection_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function OpenAsync
      (
         this : access IAppServiceConnection_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SendMessageAsync
      (
         this : access IAppServiceConnection_Interface;
         message : Windows.Foundation.Collections.IPropertySet;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function add_RequestReceived
      (
         this : access IAppServiceConnection_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_RequestReceived
      (
         this : access IAppServiceConnection_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_ServiceClosed
      (
         this : access IAppServiceConnection_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ServiceClosed
      (
         this : access IAppServiceConnection_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceConnection : aliased WinRt.IID := (2647946402, 34591, 19794, (137, 169, 158, 9, 5, 49, 189, 39 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceConnection2 is interface and WinRt.IInspectable;

      function OpenRemoteAsync
      (
         this : access IAppServiceConnection2_Interface;
         remoteSystemConnectionRequest : Windows.System.RemoteSystems.IRemoteSystemConnectionRequest;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_User
      (
         this : access IAppServiceConnection2_Interface;
         RetVal : access Windows.System.IUser
      )
      return WinRt.Hresult is abstract;

      function put_User
      (
         this : access IAppServiceConnection2_Interface;
         value : Windows.System.IUser
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceConnection2 : aliased WinRt.IID := (2346700127, 8962, 20413, (128, 97, 82, 81, 28, 47, 139, 249 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceConnectionStatics is interface and WinRt.IInspectable;

      function SendStatelessMessageAsync
      (
         this : access IAppServiceConnectionStatics_Interface;
         connection : Windows.ApplicationModel.AppService.IAppServiceConnection;
         connectionRequest : Windows.System.RemoteSystems.IRemoteSystemConnectionRequest;
         message : Windows.Foundation.Collections.IPropertySet;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceConnectionStatics : aliased WinRt.IID := (2915396841, 54280, 22131, (134, 55, 130, 122, 75, 39, 65, 104 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceDeferral is interface and WinRt.IInspectable;

      function Complete
      (
         this : access IAppServiceDeferral_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceDeferral : aliased WinRt.IID := (2115719970, 60080, 16968, (174, 4, 253, 249, 56, 56, 228, 114 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceRequest is interface and WinRt.IInspectable;

      function get_Message
      (
         this : access IAppServiceRequest_Interface;
         RetVal : access Windows.Foundation.Collections.IPropertySet
      )
      return WinRt.Hresult is abstract;

      function SendResponseAsync
      (
         this : access IAppServiceRequest_Interface;
         message : Windows.Foundation.Collections.IPropertySet;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceRequest : aliased WinRt.IID := (551914909, 6366, 19201, (128, 186, 144, 167, 98, 4, 227, 200 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceRequestReceivedEventArgs is interface and WinRt.IInspectable;

      function get_Request
      (
         this : access IAppServiceRequestReceivedEventArgs_Interface;
         RetVal : access Windows.ApplicationModel.AppService.IAppServiceRequest
      )
      return WinRt.Hresult is abstract;

      function GetDeferral
      (
         this : access IAppServiceRequestReceivedEventArgs_Interface;
         RetVal : access Windows.ApplicationModel.AppService.IAppServiceDeferral
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceRequestReceivedEventArgs : aliased WinRt.IID := (1846682464, 65381, 17582, (158, 69, 133, 127, 228, 24, 6, 129 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceResponse is interface and WinRt.IInspectable;

      function get_Message
      (
         this : access IAppServiceResponse_Interface;
         RetVal : access Windows.Foundation.Collections.IPropertySet
      )
      return WinRt.Hresult is abstract;

      function get_Status
      (
         this : access IAppServiceResponse_Interface;
         RetVal : access Windows.ApplicationModel.AppService.AppServiceResponseStatus
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceResponse : aliased WinRt.IID := (2370845932, 39587, 20072, (149, 89, 157, 230, 62, 55, 44, 228 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceTriggerDetails is interface and WinRt.IInspectable;

      function get_Name
      (
         this : access IAppServiceTriggerDetails_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_CallerPackageFamilyName
      (
         this : access IAppServiceTriggerDetails_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_AppServiceConnection
      (
         this : access IAppServiceTriggerDetails_Interface;
         RetVal : access Windows.ApplicationModel.AppService.IAppServiceConnection
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceTriggerDetails : aliased WinRt.IID := (2292374700, 44328, 16824, (128, 187, 189, 241, 178, 22, 158, 25 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceTriggerDetails2 is interface and WinRt.IInspectable;

      function get_IsRemoteSystemConnection
      (
         this : access IAppServiceTriggerDetails2_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceTriggerDetails2 : aliased WinRt.IID := (3896333490, 10444, 17394, (180, 101, 192, 72, 46, 89, 226, 220 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceTriggerDetails3 is interface and WinRt.IInspectable;

      function CheckCallerForCapabilityAsync
      (
         this : access IAppServiceTriggerDetails3_Interface;
         capabilityName : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceTriggerDetails3 : aliased WinRt.IID := (4225179169, 31033, 20072, (158, 60, 119, 128, 20, 122, 171, 182 ));

   -----------------------------------------------------------------------------
   -- type IAppServiceTriggerDetails4 is interface and WinRt.IInspectable;

      function get_CallerRemoteConnectionToken
      (
         this : access IAppServiceTriggerDetails4_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IAppServiceTriggerDetails4 : aliased WinRt.IID := (293974400, 34913, 24112, (171, 85, 28, 244, 208, 139, 191, 109 ));

   -----------------------------------------------------------------------------
   -- type IStatelessAppServiceResponse is interface and WinRt.IInspectable;

      function get_Message
      (
         this : access IStatelessAppServiceResponse_Interface;
         RetVal : access Windows.Foundation.Collections.IPropertySet
      )
      return WinRt.Hresult is abstract;

      function get_Status
      (
         this : access IStatelessAppServiceResponse_Interface;
         RetVal : access Windows.ApplicationModel.AppService.StatelessAppServiceResponseStatus
      )
      return WinRt.Hresult is abstract;

      IID_IStatelessAppServiceResponse : aliased WinRt.IID := (1131760375, 43500, 21246, (130, 231, 147, 155, 104, 220, 147, 136 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package AppServiceCatalog is

      function FindAppServiceProvidersAsync
      (
         appServiceName : WinRt.WString
      )
      return WinRt.GenericObject;

   end AppServiceCatalog;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AppServiceClosedEventArgs

   overriding procedure Initialize (this : in out AppServiceClosedEventArgs);
   overriding procedure Finalize (this : in out AppServiceClosedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AppServiceClosedEventArgs

   function get_Status
   (
      this : in out AppServiceClosedEventArgs
   )
   return WinRt.Windows.ApplicationModel.AppService.AppServiceClosedStatus;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AppServiceConnection

   overriding procedure Initialize (this : in out AppServiceConnection);
   overriding procedure Finalize (this : in out AppServiceConnection);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for AppServiceConnection

   function Constructor return AppServiceConnection;

   -----------------------------------------------------------------------------
   -- Static Interfaces for AppServiceConnection

   function SendStatelessMessageAsync
   (
      connection : Windows.ApplicationModel.AppService.AppServiceConnection'Class;
      connectionRequest : Windows.System.RemoteSystems.RemoteSystemConnectionRequest'Class;
      message : Windows.Foundation.Collections.ValueSet'Class
   )
   return WinRt.Windows.ApplicationModel.AppService.StatelessAppServiceResponse;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AppServiceConnection

   function get_AppServiceName
   (
      this : in out AppServiceConnection
   )
   return WinRt.WString;

   procedure put_AppServiceName
   (
      this : in out AppServiceConnection;
      value : WinRt.WString
   );

   function get_PackageFamilyName
   (
      this : in out AppServiceConnection
   )
   return WinRt.WString;

   procedure put_PackageFamilyName
   (
      this : in out AppServiceConnection;
      value : WinRt.WString
   );

   function OpenAsync
   (
      this : in out AppServiceConnection
   )
   return WinRt.Windows.ApplicationModel.AppService.AppServiceConnectionStatus;

   function SendMessageAsync
   (
      this : in out AppServiceConnection;
      message : Windows.Foundation.Collections.ValueSet'Class
   )
   return WinRt.Windows.ApplicationModel.AppService.AppServiceResponse'Class;

   function add_RequestReceived
   (
      this : in out AppServiceConnection;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_RequestReceived
   (
      this : in out AppServiceConnection;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_ServiceClosed
   (
      this : in out AppServiceConnection;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ServiceClosed
   (
      this : in out AppServiceConnection;
      token : Windows.Foundation.EventRegistrationToken
   );

   function OpenRemoteAsync
   (
      this : in out AppServiceConnection;
      remoteSystemConnectionRequest : Windows.System.RemoteSystems.RemoteSystemConnectionRequest'Class
   )
   return WinRt.Windows.ApplicationModel.AppService.AppServiceConnectionStatus;

   function get_User
   (
      this : in out AppServiceConnection
   )
   return WinRt.Windows.System.User'Class;

   procedure put_User
   (
      this : in out AppServiceConnection;
      value : Windows.System.User'Class
   );

   procedure Close
   (
      this : in out AppServiceConnection
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AppServiceDeferral

   overriding procedure Initialize (this : in out AppServiceDeferral);
   overriding procedure Finalize (this : in out AppServiceDeferral);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AppServiceDeferral

   procedure Complete
   (
      this : in out AppServiceDeferral
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AppServiceRequest

   overriding procedure Initialize (this : in out AppServiceRequest);
   overriding procedure Finalize (this : in out AppServiceRequest);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AppServiceRequest

   function get_Message
   (
      this : in out AppServiceRequest
   )
   return WinRt.Windows.Foundation.Collections.ValueSet'Class;

   function SendResponseAsync
   (
      this : in out AppServiceRequest;
      message : Windows.Foundation.Collections.ValueSet'Class
   )
   return WinRt.Windows.ApplicationModel.AppService.AppServiceResponseStatus;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AppServiceRequestReceivedEventArgs

   overriding procedure Initialize (this : in out AppServiceRequestReceivedEventArgs);
   overriding procedure Finalize (this : in out AppServiceRequestReceivedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AppServiceRequestReceivedEventArgs

   function get_Request
   (
      this : in out AppServiceRequestReceivedEventArgs
   )
   return WinRt.Windows.ApplicationModel.AppService.AppServiceRequest'Class;

   function GetDeferral
   (
      this : in out AppServiceRequestReceivedEventArgs
   )
   return WinRt.Windows.ApplicationModel.AppService.AppServiceDeferral'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AppServiceResponse

   overriding procedure Initialize (this : in out AppServiceResponse);
   overriding procedure Finalize (this : in out AppServiceResponse);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AppServiceResponse

   function get_Message
   (
      this : in out AppServiceResponse
   )
   return WinRt.Windows.Foundation.Collections.ValueSet'Class;

   function get_Status
   (
      this : in out AppServiceResponse
   )
   return WinRt.Windows.ApplicationModel.AppService.AppServiceResponseStatus;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AppServiceTriggerDetails

   overriding procedure Initialize (this : in out AppServiceTriggerDetails);
   overriding procedure Finalize (this : in out AppServiceTriggerDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AppServiceTriggerDetails

   function get_Name
   (
      this : in out AppServiceTriggerDetails
   )
   return WinRt.WString;

   function get_CallerPackageFamilyName
   (
      this : in out AppServiceTriggerDetails
   )
   return WinRt.WString;

   function get_AppServiceConnection
   (
      this : in out AppServiceTriggerDetails
   )
   return WinRt.Windows.ApplicationModel.AppService.AppServiceConnection'Class;

   function get_IsRemoteSystemConnection
   (
      this : in out AppServiceTriggerDetails
   )
   return WinRt.Boolean;

   function CheckCallerForCapabilityAsync
   (
      this : in out AppServiceTriggerDetails;
      capabilityName : WinRt.WString
   )
   return WinRt.Boolean;

   function get_CallerRemoteConnectionToken
   (
      this : in out AppServiceTriggerDetails
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for StatelessAppServiceResponse

   overriding procedure Initialize (this : in out StatelessAppServiceResponse);
   overriding procedure Finalize (this : in out StatelessAppServiceResponse);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for StatelessAppServiceResponse

   function get_Message
   (
      this : in out StatelessAppServiceResponse
   )
   return WinRt.Windows.Foundation.Collections.ValueSet'Class;

   function get_Status
   (
      this : in out StatelessAppServiceResponse
   )
   return WinRt.Windows.ApplicationModel.AppService.StatelessAppServiceResponseStatus;

end;