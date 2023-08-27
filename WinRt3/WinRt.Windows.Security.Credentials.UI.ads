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
limited with WinRt.Windows.Storage.Streams;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Security.Credentials.UI is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ICredentialPickerOptions_Interface is interface and WinRt.IInspectable_Interface;
   type ICredentialPickerOptions is access all ICredentialPickerOptions_Interface'Class;
   type ICredentialPickerOptions_Ptr is access all ICredentialPickerOptions;

   type ICredentialPickerResults_Interface is interface and WinRt.IInspectable_Interface;
   type ICredentialPickerResults is access all ICredentialPickerResults_Interface'Class;
   type ICredentialPickerResults_Ptr is access all ICredentialPickerResults;

   type ICredentialPickerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ICredentialPickerStatics is access all ICredentialPickerStatics_Interface'Class;

   type IUserConsentVerifierStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IUserConsentVerifierStatics is access all IUserConsentVerifierStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type CredentialPickerOptions is new Ada.Finalization.Limited_Controlled with
      record
         m_ICredentialPickerOptions : access Windows.Security.Credentials.UI.ICredentialPickerOptions;
      end record;
   type CredentialPickerOptions_Ptr is access all CredentialPickerOptions;

   type CredentialPickerResults is new Ada.Finalization.Limited_Controlled with
      record
         m_ICredentialPickerResults : access Windows.Security.Credentials.UI.ICredentialPickerResults;
      end record;
   type CredentialPickerResults_Ptr is access all CredentialPickerResults;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type AuthenticationProtocol is (
      Basic_e,
      Digest_e,
      Ntlm_e,
      Kerberos_e,
      Negotiate_e,
      CredSsp_e,
      Custom_e
   );
   for AuthenticationProtocol use (
      Basic_e => 0,
      Digest_e => 1,
      Ntlm_e => 2,
      Kerberos_e => 3,
      Negotiate_e => 4,
      CredSsp_e => 5,
      Custom_e => 6
   );
   type AuthenticationProtocol_Ptr is access all AuthenticationProtocol;

   type CredentialSaveOption is (
      Unselected_e,
      Selected_e,
      Hidden_e
   );
   for CredentialSaveOption use (
      Unselected_e => 0,
      Selected_e => 1,
      Hidden_e => 2
   );
   type CredentialSaveOption_Ptr is access all CredentialSaveOption;

   type UserConsentVerificationResult is (
      Verified_e,
      DeviceNotPresent_e,
      NotConfiguredForUser_e,
      DisabledByPolicy_e,
      DeviceBusy_e,
      RetriesExhausted_e,
      Canceled_e
   );
   for UserConsentVerificationResult use (
      Verified_e => 0,
      DeviceNotPresent_e => 1,
      NotConfiguredForUser_e => 2,
      DisabledByPolicy_e => 3,
      DeviceBusy_e => 4,
      RetriesExhausted_e => 5,
      Canceled_e => 6
   );
   type UserConsentVerificationResult_Ptr is access all UserConsentVerificationResult;

   type UserConsentVerifierAvailability is (
      Available_e,
      DeviceNotPresent_e,
      NotConfiguredForUser_e,
      DisabledByPolicy_e,
      DeviceBusy_e
   );
   for UserConsentVerifierAvailability use (
      Available_e => 0,
      DeviceNotPresent_e => 1,
      NotConfiguredForUser_e => 2,
      DisabledByPolicy_e => 3,
      DeviceBusy_e => 4
   );
   type UserConsentVerifierAvailability_Ptr is access all UserConsentVerifierAvailability;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ICredentialPickerOptions is interface and WinRt.IInspectable;

      function put_Caption
      (
         this : access ICredentialPickerOptions_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Caption
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Message
      (
         this : access ICredentialPickerOptions_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Message
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_ErrorCode
      (
         this : access ICredentialPickerOptions_Interface;
         value : WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_ErrorCode
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function put_TargetName
      (
         this : access ICredentialPickerOptions_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_TargetName
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_AuthenticationProtocol
      (
         this : access ICredentialPickerOptions_Interface;
         value : Windows.Security.Credentials.UI.AuthenticationProtocol
      )
      return WinRt.Hresult is abstract;

      function get_AuthenticationProtocol
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access Windows.Security.Credentials.UI.AuthenticationProtocol
      )
      return WinRt.Hresult is abstract;

      function put_CustomAuthenticationProtocol
      (
         this : access ICredentialPickerOptions_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_CustomAuthenticationProtocol
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_PreviousCredential
      (
         this : access ICredentialPickerOptions_Interface;
         value : Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function get_PreviousCredential
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function put_AlwaysDisplayDialog
      (
         this : access ICredentialPickerOptions_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_AlwaysDisplayDialog
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_CallerSavesCredential
      (
         this : access ICredentialPickerOptions_Interface;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_CallerSavesCredential
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function put_CredentialSaveOption
      (
         this : access ICredentialPickerOptions_Interface;
         value : Windows.Security.Credentials.UI.CredentialSaveOption
      )
      return WinRt.Hresult is abstract;

      function get_CredentialSaveOption
      (
         this : access ICredentialPickerOptions_Interface;
         RetVal : access Windows.Security.Credentials.UI.CredentialSaveOption
      )
      return WinRt.Hresult is abstract;

      IID_ICredentialPickerOptions : aliased WinRt.IID := (2522483532, 38394, 18047, (153, 43, 11, 34, 229, 133, 155, 246 ));

   -----------------------------------------------------------------------------
   -- type ICredentialPickerResults is interface and WinRt.IInspectable;

      function get_ErrorCode
      (
         this : access ICredentialPickerResults_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_CredentialSaveOption
      (
         this : access ICredentialPickerResults_Interface;
         RetVal : access Windows.Security.Credentials.UI.CredentialSaveOption
      )
      return WinRt.Hresult is abstract;

      function get_CredentialSaved
      (
         this : access ICredentialPickerResults_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_Credential
      (
         this : access ICredentialPickerResults_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function get_CredentialDomainName
      (
         this : access ICredentialPickerResults_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_CredentialUserName
      (
         this : access ICredentialPickerResults_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_CredentialPassword
      (
         this : access ICredentialPickerResults_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_ICredentialPickerResults : aliased WinRt.IID := (424212890, 52272, 16652, (156, 56, 204, 8, 132, 197, 179, 215 ));

   -----------------------------------------------------------------------------
   -- type ICredentialPickerStatics is interface and WinRt.IInspectable;

      function PickAsync
      (
         this : access ICredentialPickerStatics_Interface;
         options : Windows.Security.Credentials.UI.ICredentialPickerOptions;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function PickAsync
      (
         this : access ICredentialPickerStatics_Interface;
         targetName : WinRt.HString;
         message : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function PickAsync
      (
         this : access ICredentialPickerStatics_Interface;
         targetName : WinRt.HString;
         message : WinRt.HString;
         caption : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_ICredentialPickerStatics : aliased WinRt.IID := (2855951475, 51690, 18306, (153, 251, 230, 215, 233, 56, 225, 45 ));

   -----------------------------------------------------------------------------
   -- type IUserConsentVerifierStatics is interface and WinRt.IInspectable;

      function CheckAvailabilityAsync
      (
         this : access IUserConsentVerifierStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RequestVerificationAsync
      (
         this : access IUserConsentVerifierStatics_Interface;
         message : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IUserConsentVerifierStatics : aliased WinRt.IID := (2941206417, 22092, 19932, (184, 181, 151, 52, 71, 98, 124, 101 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package CredentialPicker is

      function PickAsync
      (
         options : Windows.Security.Credentials.UI.CredentialPickerOptions'Class
      )
      return WinRt.Windows.Security.Credentials.UI.CredentialPickerResults;

      function PickAsync
      (
         targetName : WinRt.WString;
         message : WinRt.WString
      )
      return WinRt.Windows.Security.Credentials.UI.CredentialPickerResults;

      function PickAsync
      (
         targetName : WinRt.WString;
         message : WinRt.WString;
         caption : WinRt.WString
      )
      return WinRt.Windows.Security.Credentials.UI.CredentialPickerResults;

   end CredentialPicker;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CredentialPickerOptions

   overriding procedure Initialize (this : in out CredentialPickerOptions);
   overriding procedure Finalize (this : in out CredentialPickerOptions);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for CredentialPickerOptions

   function Constructor return CredentialPickerOptions;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CredentialPickerOptions

   procedure put_Caption
   (
      this : in out CredentialPickerOptions;
      value : WinRt.WString
   );

   function get_Caption
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.WString;

   procedure put_Message
   (
      this : in out CredentialPickerOptions;
      value : WinRt.WString
   );

   function get_Message
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.WString;

   procedure put_ErrorCode
   (
      this : in out CredentialPickerOptions;
      value : WinRt.UInt32
   );

   function get_ErrorCode
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.UInt32;

   procedure put_TargetName
   (
      this : in out CredentialPickerOptions;
      value : WinRt.WString
   );

   function get_TargetName
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.WString;

   procedure put_AuthenticationProtocol
   (
      this : in out CredentialPickerOptions;
      value : Windows.Security.Credentials.UI.AuthenticationProtocol
   );

   function get_AuthenticationProtocol
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.Windows.Security.Credentials.UI.AuthenticationProtocol;

   procedure put_CustomAuthenticationProtocol
   (
      this : in out CredentialPickerOptions;
      value : WinRt.WString
   );

   function get_CustomAuthenticationProtocol
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.WString;

   procedure put_PreviousCredential
   (
      this : in out CredentialPickerOptions;
      value : Windows.Storage.Streams.IBuffer
   );

   function get_PreviousCredential
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   procedure put_AlwaysDisplayDialog
   (
      this : in out CredentialPickerOptions;
      value : WinRt.Boolean
   );

   function get_AlwaysDisplayDialog
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.Boolean;

   procedure put_CallerSavesCredential
   (
      this : in out CredentialPickerOptions;
      value : WinRt.Boolean
   );

   function get_CallerSavesCredential
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.Boolean;

   procedure put_CredentialSaveOption
   (
      this : in out CredentialPickerOptions;
      value : Windows.Security.Credentials.UI.CredentialSaveOption
   );

   function get_CredentialSaveOption
   (
      this : in out CredentialPickerOptions
   )
   return WinRt.Windows.Security.Credentials.UI.CredentialSaveOption;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CredentialPickerResults

   overriding procedure Initialize (this : in out CredentialPickerResults);
   overriding procedure Finalize (this : in out CredentialPickerResults);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CredentialPickerResults

   function get_ErrorCode
   (
      this : in out CredentialPickerResults
   )
   return WinRt.UInt32;

   function get_CredentialSaveOption
   (
      this : in out CredentialPickerResults
   )
   return WinRt.Windows.Security.Credentials.UI.CredentialSaveOption;

   function get_CredentialSaved
   (
      this : in out CredentialPickerResults
   )
   return WinRt.Boolean;

   function get_Credential
   (
      this : in out CredentialPickerResults
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   function get_CredentialDomainName
   (
      this : in out CredentialPickerResults
   )
   return WinRt.WString;

   function get_CredentialUserName
   (
      this : in out CredentialPickerResults
   )
   return WinRt.WString;

   function get_CredentialPassword
   (
      this : in out CredentialPickerResults
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package UserConsentVerifier is

      function CheckAvailabilityAsync
      return WinRt.Windows.Security.Credentials.UI.UserConsentVerifierAvailability;

      function RequestVerificationAsync
      (
         message : WinRt.WString
      )
      return WinRt.Windows.Security.Credentials.UI.UserConsentVerificationResult;

   end UserConsentVerifier;

end;