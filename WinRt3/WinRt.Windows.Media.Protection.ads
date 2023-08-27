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
limited with WinRt.Windows.Media.Playback;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Media.Protection is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Delegates declarations
   -----------------------------------------------------------------------------

   type ComponentLoadFailedEventHandler_Delegate;
   type ComponentLoadFailedEventHandler is access all ComponentLoadFailedEventHandler_Delegate;

   type RebootNeededEventHandler_Delegate;
   type RebootNeededEventHandler is access all RebootNeededEventHandler_Delegate;

   type ServiceRequestedEventHandler_Delegate;
   type ServiceRequestedEventHandler is access all ServiceRequestedEventHandler_Delegate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IComponentLoadFailedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IComponentLoadFailedEventArgs is access all IComponentLoadFailedEventArgs_Interface'Class;
   type IComponentLoadFailedEventArgs_Ptr is access all IComponentLoadFailedEventArgs;

   type IComponentRenewalStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IComponentRenewalStatics is access all IComponentRenewalStatics_Interface'Class;

   type IHdcpSession_Interface is interface and WinRt.IInspectable_Interface;
   type IHdcpSession is access all IHdcpSession_Interface'Class;
   type IHdcpSession_Ptr is access all IHdcpSession;

   type IMediaProtectionManager_Interface is interface and WinRt.IInspectable_Interface;
   type IMediaProtectionManager is access all IMediaProtectionManager_Interface'Class;
   type IMediaProtectionManager_Ptr is access all IMediaProtectionManager;

   type IMediaProtectionPMPServer_Interface is interface and WinRt.IInspectable_Interface;
   type IMediaProtectionPMPServer is access all IMediaProtectionPMPServer_Interface'Class;
   type IMediaProtectionPMPServer_Ptr is access all IMediaProtectionPMPServer;

   type IMediaProtectionPMPServerFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IMediaProtectionPMPServerFactory is access all IMediaProtectionPMPServerFactory_Interface'Class;

   type IMediaProtectionServiceCompletion_Interface is interface and WinRt.IInspectable_Interface;
   type IMediaProtectionServiceCompletion is access all IMediaProtectionServiceCompletion_Interface'Class;
   type IMediaProtectionServiceCompletion_Ptr is access all IMediaProtectionServiceCompletion;

   type IMediaProtectionServiceRequest_Interface is interface and WinRt.IInspectable_Interface;
   type IMediaProtectionServiceRequest is access all IMediaProtectionServiceRequest_Interface'Class;

   type IProtectionCapabilities_Interface is interface and WinRt.IInspectable_Interface;
   type IProtectionCapabilities is access all IProtectionCapabilities_Interface'Class;
   type IProtectionCapabilities_Ptr is access all IProtectionCapabilities;

   type IRevocationAndRenewalInformation_Interface is interface and WinRt.IInspectable_Interface;
   type IRevocationAndRenewalInformation is access all IRevocationAndRenewalInformation_Interface'Class;
   type IRevocationAndRenewalInformation_Ptr is access all IRevocationAndRenewalInformation;

   type IRevocationAndRenewalItem_Interface is interface and WinRt.IInspectable_Interface;
   type IRevocationAndRenewalItem is access all IRevocationAndRenewalItem_Interface'Class;
   type IRevocationAndRenewalItem_Ptr is access all IRevocationAndRenewalItem;

   type IServiceRequestedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IServiceRequestedEventArgs is access all IServiceRequestedEventArgs_Interface'Class;
   type IServiceRequestedEventArgs_Ptr is access all IServiceRequestedEventArgs;

   type IServiceRequestedEventArgs2_Interface is interface and WinRt.IInspectable_Interface;
   type IServiceRequestedEventArgs2 is access all IServiceRequestedEventArgs2_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type ComponentLoadFailedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IComponentLoadFailedEventArgs : access Windows.Media.Protection.IComponentLoadFailedEventArgs;
      end record;
   type ComponentLoadFailedEventArgs_Ptr is access all ComponentLoadFailedEventArgs;

   type HdcpSession is new Ada.Finalization.Limited_Controlled with
      record
         m_IHdcpSession : access Windows.Media.Protection.IHdcpSession;
      end record;
   type HdcpSession_Ptr is access all HdcpSession;

   type MediaProtectionManager is new Ada.Finalization.Limited_Controlled with
      record
         m_IMediaProtectionManager : access Windows.Media.Protection.IMediaProtectionManager;
      end record;
   type MediaProtectionManager_Ptr is access all MediaProtectionManager;

   type MediaProtectionPMPServer is new Ada.Finalization.Limited_Controlled with
      record
         m_IMediaProtectionPMPServer : access Windows.Media.Protection.IMediaProtectionPMPServer;
      end record;
   type MediaProtectionPMPServer_Ptr is access all MediaProtectionPMPServer;

   type MediaProtectionServiceCompletion is new Ada.Finalization.Limited_Controlled with
      record
         m_IMediaProtectionServiceCompletion : access Windows.Media.Protection.IMediaProtectionServiceCompletion;
      end record;
   type MediaProtectionServiceCompletion_Ptr is access all MediaProtectionServiceCompletion;

   type ProtectionCapabilities is new Ada.Finalization.Limited_Controlled with
      record
         m_IProtectionCapabilities : access Windows.Media.Protection.IProtectionCapabilities;
      end record;
   type ProtectionCapabilities_Ptr is access all ProtectionCapabilities;

   type RevocationAndRenewalInformation is new Ada.Finalization.Limited_Controlled with
      record
         m_IRevocationAndRenewalInformation : access Windows.Media.Protection.IRevocationAndRenewalInformation;
      end record;
   type RevocationAndRenewalInformation_Ptr is access all RevocationAndRenewalInformation;

   type RevocationAndRenewalItem is new Ada.Finalization.Limited_Controlled with
      record
         m_IRevocationAndRenewalItem : access Windows.Media.Protection.IRevocationAndRenewalItem;
      end record;
   type RevocationAndRenewalItem_Ptr is access all RevocationAndRenewalItem;

   type ServiceRequestedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IServiceRequestedEventArgs : access Windows.Media.Protection.IServiceRequestedEventArgs;
      end record;
   type ServiceRequestedEventArgs_Ptr is access all ServiceRequestedEventArgs;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type GraphicsTrustStatus is (
      TrustNotRequired_e,
      TrustEstablished_e,
      EnvironmentNotSupported_e,
      DriverNotSupported_e,
      DriverSigningFailure_e,
      UnknownFailure_e
   );
   for GraphicsTrustStatus use (
      TrustNotRequired_e => 0,
      TrustEstablished_e => 1,
      EnvironmentNotSupported_e => 2,
      DriverNotSupported_e => 3,
      DriverSigningFailure_e => 4,
      UnknownFailure_e => 5
   );
   type GraphicsTrustStatus_Ptr is access all GraphicsTrustStatus;

   type HdcpProtection is (
      Off_e,
      On_e,
      OnWithTypeEnforcement_e
   );
   for HdcpProtection use (
      Off_e => 0,
      On_e => 1,
      OnWithTypeEnforcement_e => 2
   );
   type HdcpProtection_Ptr is access all HdcpProtection;

   type HdcpSetProtectionResult is (
      Success_e,
      TimedOut_e,
      NotSupported_e,
      UnknownFailure_e
   );
   for HdcpSetProtectionResult use (
      Success_e => 0,
      TimedOut_e => 1,
      NotSupported_e => 2,
      UnknownFailure_e => 3
   );
   type HdcpSetProtectionResult_Ptr is access all HdcpSetProtectionResult;

   type ProtectionCapabilityResult is (
      NotSupported_e,
      Maybe_e,
      Probably_e
   );
   for ProtectionCapabilityResult use (
      NotSupported_e => 0,
      Maybe_e => 1,
      Probably_e => 2
   );
   type ProtectionCapabilityResult_Ptr is access all ProtectionCapabilityResult;

   type RenewalStatus is (
      NotStarted_e,
      UpdatesInProgress_e,
      UserCancelled_e,
      AppComponentsMayNeedUpdating_e,
      NoComponentsFound_e
   );
   for RenewalStatus use (
      NotStarted_e => 0,
      UpdatesInProgress_e => 1,
      UserCancelled_e => 2,
      AppComponentsMayNeedUpdating_e => 3,
      NoComponentsFound_e => 4
   );
   type RenewalStatus_Ptr is access all RenewalStatus;

   type RevocationAndRenewalReasons is (
      UserModeComponentLoad_e,
      KernelModeComponentLoad_e,
      AppComponent_e,
      GlobalRevocationListLoadFailed_e,
      InvalidGlobalRevocationListSignature_e,
      GlobalRevocationListAbsent_e,
      ComponentRevoked_e,
      InvalidComponentCertificateExtendedKeyUse_e,
      ComponentCertificateRevoked_e,
      InvalidComponentCertificateRoot_e,
      ComponentHighSecurityCertificateRevoked_e,
      ComponentLowSecurityCertificateRevoked_e,
      BootDriverVerificationFailed_e,
      ComponentSignedWithTestCertificate_e,
      EncryptionFailure_e
   );
   for RevocationAndRenewalReasons use (
      UserModeComponentLoad_e => 1,
      KernelModeComponentLoad_e => 2,
      AppComponent_e => 4,
      GlobalRevocationListLoadFailed_e => 16,
      InvalidGlobalRevocationListSignature_e => 32,
      GlobalRevocationListAbsent_e => 4096,
      ComponentRevoked_e => 8192,
      InvalidComponentCertificateExtendedKeyUse_e => 16384,
      ComponentCertificateRevoked_e => 32768,
      InvalidComponentCertificateRoot_e => 65536,
      ComponentHighSecurityCertificateRevoked_e => 131072,
      ComponentLowSecurityCertificateRevoked_e => 262144,
      BootDriverVerificationFailed_e => 1048576,
      ComponentSignedWithTestCertificate_e => 16777216,
      EncryptionFailure_e => 268435456
   );
   type RevocationAndRenewalReasons_Ptr is access all RevocationAndRenewalReasons;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type ProtectionRenewalContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type ProtectionRenewalContract_Ptr is access all ProtectionRenewalContract;

   -----------------------------------------------------------------------------
   -- Delegate declarations
   -----------------------------------------------------------------------------

   IID_ComponentLoadFailedEventHandler : aliased WinRt.IID := (2514117692, 28089, 16971, (134, 202, 9, 26, 244, 50, 8, 28 ));
   type ComponentLoadFailedEventHandler_Delegate (Callback : access procedure  (sender : Windows.Media.Protection.IMediaProtectionManager;e : Windows.Media.Protection.IComponentLoadFailedEventArgs)) is new WinRt.IMulticastDelegate_Interface (IID_ComponentLoadFailedEventHandler'Access) with null record;
      function Invoke
      (
         this : access ComponentLoadFailedEventHandler_Delegate;
         sender : Windows.Media.Protection.IMediaProtectionManager;
         e : Windows.Media.Protection.IComponentLoadFailedEventArgs
      )
      return WinRt.Hresult;

   IID_RebootNeededEventHandler : aliased WinRt.IID := (1692478021, 38715, 19002, (178, 96, 145, 137, 138, 73, 168, 44 ));
   type RebootNeededEventHandler_Delegate (Callback : access procedure  (sender : Windows.Media.Protection.IMediaProtectionManager)) is new WinRt.IMulticastDelegate_Interface (IID_RebootNeededEventHandler'Access) with null record;
      function Invoke
      (
         this : access RebootNeededEventHandler_Delegate;
         sender : Windows.Media.Protection.IMediaProtectionManager
      )
      return WinRt.Hresult;

   IID_ServiceRequestedEventHandler : aliased WinRt.IID := (3537277114, 51913, 18657, (149, 192, 211, 132, 149, 168, 64, 85 ));
   type ServiceRequestedEventHandler_Delegate (Callback : access procedure  (sender : Windows.Media.Protection.IMediaProtectionManager;e : Windows.Media.Protection.IServiceRequestedEventArgs)) is new WinRt.IMulticastDelegate_Interface (IID_ServiceRequestedEventHandler'Access) with null record;
      function Invoke
      (
         this : access ServiceRequestedEventHandler_Delegate;
         sender : Windows.Media.Protection.IMediaProtectionManager;
         e : Windows.Media.Protection.IServiceRequestedEventArgs
      )
      return WinRt.Hresult;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IReference_HdcpProtection is new WinRt.Windows.Foundation.IReference (WinRt.Windows.Media.Protection.HdcpProtection);
   IID_IReference_HdcpProtection : aliased WinRt.IID := (4131202068, 7530, 22799, (144, 2, 189, 170, 165, 114, 179, 108 ));
   function QInterface_IReference_HdcpProtection is new Generic_QueryInterface (GenericObject_Interface, IReference_HdcpProtection.Kind, IID_IReference_HdcpProtection'Access);

   package IVector_IRevocationAndRenewalItem is new WinRt.Windows.Foundation.Collections.IVector (WinRt.Windows.Media.Protection.IRevocationAndRenewalItem);
   IID_IVector_IRevocationAndRenewalItem : aliased WinRt.IID := (3819185849, 40179, 23081, (175, 11, 88, 244, 118, 47, 61, 29 ));
   function QInterface_IVector_IRevocationAndRenewalItem is new Generic_QueryInterface (GenericObject_Interface, IVector_IRevocationAndRenewalItem.Kind, IID_IVector_IRevocationAndRenewalItem'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IComponentLoadFailedEventArgs is interface and WinRt.IInspectable;

      function get_Information
      (
         this : access IComponentLoadFailedEventArgs_Interface;
         RetVal : access Windows.Media.Protection.IRevocationAndRenewalInformation
      )
      return WinRt.Hresult is abstract;

      function get_Completion
      (
         this : access IComponentLoadFailedEventArgs_Interface;
         RetVal : access Windows.Media.Protection.IMediaProtectionServiceCompletion
      )
      return WinRt.Hresult is abstract;

      IID_IComponentLoadFailedEventArgs : aliased WinRt.IID := (2509713043, 30534, 16766, (132, 149, 240, 49, 187, 197, 134, 44 ));

   -----------------------------------------------------------------------------
   -- type IComponentRenewalStatics is interface and WinRt.IInspectable;

      function RenewSystemComponentsAsync
      (
         this : access IComponentRenewalStatics_Interface;
         information : Windows.Media.Protection.IRevocationAndRenewalInformation;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IComponentRenewalStatics : aliased WinRt.IID := (1878773095, 46997, 18629, (139, 123, 167, 196, 239, 226, 2, 227 ));

   -----------------------------------------------------------------------------
   -- type IHdcpSession is interface and WinRt.IInspectable;

      function IsEffectiveProtectionAtLeast
      (
         this : access IHdcpSession_Interface;
         protection : Windows.Media.Protection.HdcpProtection;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function GetEffectiveProtection
      (
         this : access IHdcpSession_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SetDesiredMinProtectionAsync
      (
         this : access IHdcpSession_Interface;
         protection : Windows.Media.Protection.HdcpProtection;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function add_ProtectionChanged
      (
         this : access IHdcpSession_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ProtectionChanged
      (
         this : access IHdcpSession_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IHdcpSession : aliased WinRt.IID := (1904756201, 25815, 17005, (128, 155, 27, 228, 97, 148, 26, 42 ));

   -----------------------------------------------------------------------------
   -- type IMediaProtectionManager is interface and WinRt.IInspectable;

      function add_ServiceRequested
      (
         this : access IMediaProtectionManager_Interface;
         handler : Windows.Media.Protection.ServiceRequestedEventHandler;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ServiceRequested
      (
         this : access IMediaProtectionManager_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_RebootNeeded
      (
         this : access IMediaProtectionManager_Interface;
         handler : Windows.Media.Protection.RebootNeededEventHandler;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_RebootNeeded
      (
         this : access IMediaProtectionManager_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_ComponentLoadFailed
      (
         this : access IMediaProtectionManager_Interface;
         handler : Windows.Media.Protection.ComponentLoadFailedEventHandler;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ComponentLoadFailed
      (
         this : access IMediaProtectionManager_Interface;
         cookie : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_Properties
      (
         this : access IMediaProtectionManager_Interface;
         RetVal : access Windows.Foundation.Collections.IPropertySet
      )
      return WinRt.Hresult is abstract;

      IID_IMediaProtectionManager : aliased WinRt.IID := (1164527943, 51009, 17227, (167, 158, 71, 76, 18, 217, 61, 47 ));

   -----------------------------------------------------------------------------
   -- type IMediaProtectionPMPServer is interface and WinRt.IInspectable;

      function get_Properties
      (
         this : access IMediaProtectionPMPServer_Interface;
         RetVal : access Windows.Foundation.Collections.IPropertySet
      )
      return WinRt.Hresult is abstract;

      IID_IMediaProtectionPMPServer : aliased WinRt.IID := (202445350, 31526, 19761, (149, 187, 156, 27, 8, 239, 127, 192 ));

   -----------------------------------------------------------------------------
   -- type IMediaProtectionPMPServerFactory is interface and WinRt.IInspectable;

      function CreatePMPServer
      (
         this : access IMediaProtectionPMPServerFactory_Interface;
         pProperties : Windows.Foundation.Collections.IPropertySet;
         RetVal : access Windows.Media.Protection.IMediaProtectionPMPServer
      )
      return WinRt.Hresult is abstract;

      IID_IMediaProtectionPMPServerFactory : aliased WinRt.IID := (1613532766, 63442, 18558, (175, 145, 219, 196, 37, 43, 33, 130 ));

   -----------------------------------------------------------------------------
   -- type IMediaProtectionServiceCompletion is interface and WinRt.IInspectable;

      function Complete
      (
         this : access IMediaProtectionServiceCompletion_Interface;
         success : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IMediaProtectionServiceCompletion : aliased WinRt.IID := (2338114072, 53205, 17646, (162, 237, 223, 118, 1, 12, 20, 181 ));

   -----------------------------------------------------------------------------
   -- type IMediaProtectionServiceRequest is interface and WinRt.IInspectable;

      function get_ProtectionSystem
      (
         this : access IMediaProtectionServiceRequest_Interface;
         RetVal : access WinRt.Guid
      )
      return WinRt.Hresult is abstract;

      function get_Type
      (
         this : access IMediaProtectionServiceRequest_Interface;
         RetVal : access WinRt.Guid
      )
      return WinRt.Hresult is abstract;

      IID_IMediaProtectionServiceRequest : aliased WinRt.IID := (2984119974, 8340, 18317, (135, 164, 139, 149, 32, 15, 133, 198 ));

   -----------------------------------------------------------------------------
   -- type IProtectionCapabilities is interface and WinRt.IInspectable;

      function IsTypeSupported
      (
         this : access IProtectionCapabilities_Interface;
         type_x : WinRt.HString;
         keySystem : WinRt.HString;
         RetVal : access Windows.Media.Protection.ProtectionCapabilityResult
      )
      return WinRt.Hresult is abstract;

      IID_IProtectionCapabilities : aliased WinRt.IID := (3349962110, 29824, 19753, (164, 100, 123, 205, 145, 61, 216, 228 ));

   -----------------------------------------------------------------------------
   -- type IRevocationAndRenewalInformation is interface and WinRt.IInspectable;

      function get_Items
      (
         this : access IRevocationAndRenewalInformation_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IRevocationAndRenewalInformation : aliased WinRt.IID := (4087452539, 9473, 17310, (166, 231, 111, 201, 94, 23, 95, 207 ));

   -----------------------------------------------------------------------------
   -- type IRevocationAndRenewalItem is interface and WinRt.IInspectable;

      function get_Reasons
      (
         this : access IRevocationAndRenewalItem_Interface;
         RetVal : access Windows.Media.Protection.RevocationAndRenewalReasons
      )
      return WinRt.Hresult is abstract;

      function get_HeaderHash
      (
         this : access IRevocationAndRenewalItem_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_PublicKeyHash
      (
         this : access IRevocationAndRenewalItem_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Name
      (
         this : access IRevocationAndRenewalItem_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_RenewalId
      (
         this : access IRevocationAndRenewalItem_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IRevocationAndRenewalItem : aliased WinRt.IID := (815383052, 15600, 18922, (144, 45, 202, 243, 45, 45, 222, 44 ));

   -----------------------------------------------------------------------------
   -- type IServiceRequestedEventArgs is interface and WinRt.IInspectable;

      function get_Request
      (
         this : access IServiceRequestedEventArgs_Interface;
         RetVal : access Windows.Media.Protection.IMediaProtectionServiceRequest
      )
      return WinRt.Hresult is abstract;

      function get_Completion
      (
         this : access IServiceRequestedEventArgs_Interface;
         RetVal : access Windows.Media.Protection.IMediaProtectionServiceCompletion
      )
      return WinRt.Hresult is abstract;

      IID_IServiceRequestedEventArgs : aliased WinRt.IID := (875051951, 43956, 20417, (189, 137, 147, 241, 6, 87, 58, 73 ));

   -----------------------------------------------------------------------------
   -- type IServiceRequestedEventArgs2 is interface and WinRt.IInspectable;

      function get_MediaPlaybackItem
      (
         this : access IServiceRequestedEventArgs2_Interface;
         RetVal : access Windows.Media.Playback.IMediaPlaybackItem
      )
      return WinRt.Hresult is abstract;

      IID_IServiceRequestedEventArgs2 : aliased WinRt.IID := (1430022614, 64254, 16680, (141, 250, 19, 14, 57, 138, 19, 167 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ComponentLoadFailedEventArgs

   overriding procedure Initialize (this : in out ComponentLoadFailedEventArgs);
   overriding procedure Finalize (this : in out ComponentLoadFailedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ComponentLoadFailedEventArgs

   function get_Information
   (
      this : in out ComponentLoadFailedEventArgs
   )
   return WinRt.Windows.Media.Protection.RevocationAndRenewalInformation'Class;

   function get_Completion
   (
      this : in out ComponentLoadFailedEventArgs
   )
   return WinRt.Windows.Media.Protection.MediaProtectionServiceCompletion'Class;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package ComponentRenewal is

      function RenewSystemComponentsAsync
      (
         information : Windows.Media.Protection.RevocationAndRenewalInformation'Class
      )
      return WinRt.Windows.Media.Protection.RenewalStatus;

   end ComponentRenewal;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for HdcpSession

   overriding procedure Initialize (this : in out HdcpSession);
   overriding procedure Finalize (this : in out HdcpSession);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for HdcpSession

   function Constructor return HdcpSession;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for HdcpSession

   function IsEffectiveProtectionAtLeast
   (
      this : in out HdcpSession;
      protection : Windows.Media.Protection.HdcpProtection
   )
   return WinRt.Boolean;

   function GetEffectiveProtection
   (
      this : in out HdcpSession
   )
   return IReference_HdcpProtection.Kind;

   function SetDesiredMinProtectionAsync
   (
      this : in out HdcpSession;
      protection : Windows.Media.Protection.HdcpProtection
   )
   return WinRt.Windows.Media.Protection.HdcpSetProtectionResult;

   function add_ProtectionChanged
   (
      this : in out HdcpSession;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ProtectionChanged
   (
      this : in out HdcpSession;
      token : Windows.Foundation.EventRegistrationToken
   );

   procedure Close
   (
      this : in out HdcpSession
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for MediaProtectionManager

   overriding procedure Initialize (this : in out MediaProtectionManager);
   overriding procedure Finalize (this : in out MediaProtectionManager);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for MediaProtectionManager

   function Constructor return MediaProtectionManager;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for MediaProtectionManager

   function add_ServiceRequested
   (
      this : in out MediaProtectionManager;
      handler : Windows.Media.Protection.ServiceRequestedEventHandler
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ServiceRequested
   (
      this : in out MediaProtectionManager;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_RebootNeeded
   (
      this : in out MediaProtectionManager;
      handler : Windows.Media.Protection.RebootNeededEventHandler
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_RebootNeeded
   (
      this : in out MediaProtectionManager;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function add_ComponentLoadFailed
   (
      this : in out MediaProtectionManager;
      handler : Windows.Media.Protection.ComponentLoadFailedEventHandler
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ComponentLoadFailed
   (
      this : in out MediaProtectionManager;
      cookie : Windows.Foundation.EventRegistrationToken
   );

   function get_Properties
   (
      this : in out MediaProtectionManager
   )
   return WinRt.Windows.Foundation.Collections.IPropertySet;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for MediaProtectionPMPServer

   overriding procedure Initialize (this : in out MediaProtectionPMPServer);
   overriding procedure Finalize (this : in out MediaProtectionPMPServer);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for MediaProtectionPMPServer

   function Constructor
   (
      pProperties : Windows.Foundation.Collections.IPropertySet
   )
   return MediaProtectionPMPServer;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for MediaProtectionPMPServer

   function get_Properties
   (
      this : in out MediaProtectionPMPServer
   )
   return WinRt.Windows.Foundation.Collections.IPropertySet;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for MediaProtectionServiceCompletion

   overriding procedure Initialize (this : in out MediaProtectionServiceCompletion);
   overriding procedure Finalize (this : in out MediaProtectionServiceCompletion);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for MediaProtectionServiceCompletion

   procedure Complete
   (
      this : in out MediaProtectionServiceCompletion;
      success : WinRt.Boolean
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ProtectionCapabilities

   overriding procedure Initialize (this : in out ProtectionCapabilities);
   overriding procedure Finalize (this : in out ProtectionCapabilities);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for ProtectionCapabilities

   function Constructor return ProtectionCapabilities;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ProtectionCapabilities

   function IsTypeSupported
   (
      this : in out ProtectionCapabilities;
      type_x : WinRt.WString;
      keySystem : WinRt.WString
   )
   return WinRt.Windows.Media.Protection.ProtectionCapabilityResult;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for RevocationAndRenewalInformation

   overriding procedure Initialize (this : in out RevocationAndRenewalInformation);
   overriding procedure Finalize (this : in out RevocationAndRenewalInformation);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for RevocationAndRenewalInformation

   function get_Items
   (
      this : in out RevocationAndRenewalInformation
   )
   return IVector_IRevocationAndRenewalItem.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for RevocationAndRenewalItem

   overriding procedure Initialize (this : in out RevocationAndRenewalItem);
   overriding procedure Finalize (this : in out RevocationAndRenewalItem);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for RevocationAndRenewalItem

   function get_Reasons
   (
      this : in out RevocationAndRenewalItem
   )
   return WinRt.Windows.Media.Protection.RevocationAndRenewalReasons;

   function get_HeaderHash
   (
      this : in out RevocationAndRenewalItem
   )
   return WinRt.WString;

   function get_PublicKeyHash
   (
      this : in out RevocationAndRenewalItem
   )
   return WinRt.WString;

   function get_Name
   (
      this : in out RevocationAndRenewalItem
   )
   return WinRt.WString;

   function get_RenewalId
   (
      this : in out RevocationAndRenewalItem
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ServiceRequestedEventArgs

   overriding procedure Initialize (this : in out ServiceRequestedEventArgs);
   overriding procedure Finalize (this : in out ServiceRequestedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ServiceRequestedEventArgs

   function get_Request
   (
      this : in out ServiceRequestedEventArgs
   )
   return WinRt.Windows.Media.Protection.IMediaProtectionServiceRequest;

   function get_Completion
   (
      this : in out ServiceRequestedEventArgs
   )
   return WinRt.Windows.Media.Protection.MediaProtectionServiceCompletion'Class;

   function get_MediaPlaybackItem
   (
      this : in out ServiceRequestedEventArgs
   )
   return WinRt.Windows.Media.Playback.MediaPlaybackItem'Class;

end;