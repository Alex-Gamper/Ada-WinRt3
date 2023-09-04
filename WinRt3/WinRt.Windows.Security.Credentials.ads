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
limited with WinRt.Windows.Security.Cryptography.Core;
limited with WinRt.Windows.Storage.Streams;
limited with WinRt.Windows.System;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Security.Credentials is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ICredentialFactory_Interface is interface and WinRt.IInspectable_Interface;
   type ICredentialFactory is access ICredentialFactory_Interface'Class;

   type IKeyCredential_Interface is interface and WinRt.IInspectable_Interface;
   type IKeyCredential is access IKeyCredential_Interface'Class;
   type IKeyCredential_Ptr is access all IKeyCredential;

   type IKeyCredentialAttestationResult_Interface is interface and WinRt.IInspectable_Interface;
   type IKeyCredentialAttestationResult is access IKeyCredentialAttestationResult_Interface'Class;
   type IKeyCredentialAttestationResult_Ptr is access all IKeyCredentialAttestationResult;

   type IKeyCredentialManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IKeyCredentialManagerStatics is access IKeyCredentialManagerStatics_Interface'Class;

   type IKeyCredentialOperationResult_Interface is interface and WinRt.IInspectable_Interface;
   type IKeyCredentialOperationResult is access IKeyCredentialOperationResult_Interface'Class;
   type IKeyCredentialOperationResult_Ptr is access all IKeyCredentialOperationResult;

   type IKeyCredentialRetrievalResult_Interface is interface and WinRt.IInspectable_Interface;
   type IKeyCredentialRetrievalResult is access IKeyCredentialRetrievalResult_Interface'Class;
   type IKeyCredentialRetrievalResult_Ptr is access all IKeyCredentialRetrievalResult;

   type IPasswordCredential_Interface is interface and WinRt.IInspectable_Interface;
   type IPasswordCredential is access IPasswordCredential_Interface'Class;
   type IPasswordCredential_Ptr is access all IPasswordCredential;

   type IPasswordVault_Interface is interface and WinRt.IInspectable_Interface;
   type IPasswordVault is access IPasswordVault_Interface'Class;
   type IPasswordVault_Ptr is access all IPasswordVault;

   type IWebAccount_Interface is interface and WinRt.IInspectable_Interface;
   type IWebAccount is access IWebAccount_Interface'Class;
   type IWebAccount_Ptr is access all IWebAccount;

   type IWebAccount2_Interface is interface and WinRt.IInspectable_Interface;
   type IWebAccount2 is access IWebAccount2_Interface'Class;

   type IWebAccountFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IWebAccountFactory is access IWebAccountFactory_Interface'Class;

   type IWebAccountProvider_Interface is interface and WinRt.IInspectable_Interface;
   type IWebAccountProvider is access IWebAccountProvider_Interface'Class;
   type IWebAccountProvider_Ptr is access all IWebAccountProvider;

   type IWebAccountProvider2_Interface is interface and WinRt.IInspectable_Interface;
   type IWebAccountProvider2 is access IWebAccountProvider2_Interface'Class;

   type IWebAccountProvider3_Interface is interface and WinRt.IInspectable_Interface;
   type IWebAccountProvider3 is access IWebAccountProvider3_Interface'Class;

   type IWebAccountProvider4_Interface is interface and WinRt.IInspectable_Interface;
   type IWebAccountProvider4 is access IWebAccountProvider4_Interface'Class;

   type IWebAccountProviderFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IWebAccountProviderFactory is access IWebAccountProviderFactory_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type KeyCredential is new Ada.Finalization.Limited_Controlled with
      record
         m_IKeyCredential : access Windows.Security.Credentials.IKeyCredential;
      end record;
   type KeyCredential_Ptr is access all KeyCredential;

   type KeyCredentialAttestationResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IKeyCredentialAttestationResult : access Windows.Security.Credentials.IKeyCredentialAttestationResult;
      end record;
   type KeyCredentialAttestationResult_Ptr is access all KeyCredentialAttestationResult;

   type KeyCredentialOperationResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IKeyCredentialOperationResult : access Windows.Security.Credentials.IKeyCredentialOperationResult;
      end record;
   type KeyCredentialOperationResult_Ptr is access all KeyCredentialOperationResult;

   type KeyCredentialRetrievalResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IKeyCredentialRetrievalResult : access Windows.Security.Credentials.IKeyCredentialRetrievalResult;
      end record;
   type KeyCredentialRetrievalResult_Ptr is access all KeyCredentialRetrievalResult;

   type PasswordCredential is new Ada.Finalization.Limited_Controlled with
      record
         m_IPasswordCredential : access Windows.Security.Credentials.IPasswordCredential;
      end record;
   type PasswordCredential_Ptr is access all PasswordCredential;

   type PasswordCredentialPropertyStore is new Ada.Finalization.Limited_Controlled with
      record
         m_IPropertySet : access Windows.Foundation.Collections.IPropertySet;
      end record;
   type PasswordCredentialPropertyStore_Ptr is access all PasswordCredentialPropertyStore;

   type PasswordVault is new Ada.Finalization.Limited_Controlled with
      record
         m_IPasswordVault : access Windows.Security.Credentials.IPasswordVault;
      end record;
   type PasswordVault_Ptr is access all PasswordVault;

   type WebAccount is new Ada.Finalization.Limited_Controlled with
      record
         m_IWebAccount : access Windows.Security.Credentials.IWebAccount;
      end record;
   type WebAccount_Ptr is access all WebAccount;

   type WebAccountProvider is new Ada.Finalization.Limited_Controlled with
      record
         m_IWebAccountProvider : access Windows.Security.Credentials.IWebAccountProvider;
      end record;
   type WebAccountProvider_Ptr is access all WebAccountProvider;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type KeyCredentialAttestationStatus is (
      Success_e,
      UnknownError_e,
      NotSupported_e,
      TemporaryFailure_e
   );
   for KeyCredentialAttestationStatus use (
      Success_e => 0,
      UnknownError_e => 1,
      NotSupported_e => 2,
      TemporaryFailure_e => 3
   );
   type KeyCredentialAttestationStatus_Ptr is access all KeyCredentialAttestationStatus;

   type KeyCredentialCreationOption is (
      ReplaceExisting_e,
      FailIfExists_e
   );
   for KeyCredentialCreationOption use (
      ReplaceExisting_e => 0,
      FailIfExists_e => 1
   );
   type KeyCredentialCreationOption_Ptr is access all KeyCredentialCreationOption;

   type KeyCredentialStatus is (
      Success_e,
      UnknownError_e,
      NotFound_e,
      UserCanceled_e,
      UserPrefersPassword_e,
      CredentialAlreadyExists_e,
      SecurityDeviceLocked_e
   );
   for KeyCredentialStatus use (
      Success_e => 0,
      UnknownError_e => 1,
      NotFound_e => 2,
      UserCanceled_e => 3,
      UserPrefersPassword_e => 4,
      CredentialAlreadyExists_e => 5,
      SecurityDeviceLocked_e => 6
   );
   type KeyCredentialStatus_Ptr is access all KeyCredentialStatus;

   type WebAccountPictureSize is (
      Size64x64_e,
      Size208x208_e,
      Size424x424_e,
      Size1080x1080_e
   );
   for WebAccountPictureSize use (
      Size64x64_e => 64,
      Size208x208_e => 208,
      Size424x424_e => 424,
      Size1080x1080_e => 1080
   );
   type WebAccountPictureSize_Ptr is access all WebAccountPictureSize;

   type WebAccountState is (
      None_e,
      Connected_e,
      Error_e
   );
   for WebAccountState use (
      None_e => 0,
      Connected_e => 1,
      Error_e => 2
   );
   type WebAccountState_Ptr is access all WebAccountState;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_IPasswordCredential is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.Security.Credentials.IPasswordCredential);
   IID_IVectorView_IPasswordCredential : aliased WinRt.IID := (225576644, 36748, 23730, (183, 41, 105, 145, 105, 3, 163, 228 ));
   function QInterface_IVectorView_IPasswordCredential is new Generic_QueryInterface (GenericObject_Interface, IVectorView_IPasswordCredential.Kind, IID_IVectorView_IPasswordCredential'Access);

   package IMapView_HString_HString is new WinRt.Windows.Foundation.Collections.IMapView (WinRt.HString, WinRt.HString);
   IID_IMapView_HString_HString : aliased WinRt.IID := (963509129, 1436, 22682, (160, 51, 186, 247, 93, 161, 0, 127 ));
   function QInterface_IMapView_HString_HString is new Generic_QueryInterface (GenericObject_Interface, IMapView_HString_HString.Kind, IID_IMapView_HString_HString'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ICredentialFactory is interface and WinRt.IInspectable;

      function CreatePasswordCredential
      (
         this : access ICredentialFactory_Interface;
         resource : WinRt.HString;
         userName : WinRt.HString;
         password : WinRt.HString;
         RetVal : access Windows.Security.Credentials.IPasswordCredential
      )
      return WinRt.Hresult is abstract;

      IID_ICredentialFactory : aliased WinRt.IID := (1424954273, 48934, 18357, (151, 221, 222, 119, 155, 124, 173, 88 ));

   -----------------------------------------------------------------------------
   -- type IKeyCredential is interface and WinRt.IInspectable;

      function get_Name
      (
         this : access IKeyCredential_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function RetrievePublicKey
      (
         this : access IKeyCredential_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function RetrievePublicKey
      (
         this : access IKeyCredential_Interface;
         blobType : Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function RequestSignAsync
      (
         this : access IKeyCredential_Interface;
         data : Windows.Storage.Streams.IBuffer;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetAttestationAsync
      (
         this : access IKeyCredential_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IKeyCredential : aliased WinRt.IID := (2508582797, 17787, 18503, (177, 26, 250, 150, 11, 189, 177, 56 ));

   -----------------------------------------------------------------------------
   -- type IKeyCredentialAttestationResult is interface and WinRt.IInspectable;

      function get_CertificateChainBuffer
      (
         this : access IKeyCredentialAttestationResult_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function get_AttestationBuffer
      (
         this : access IKeyCredentialAttestationResult_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function get_Status
      (
         this : access IKeyCredentialAttestationResult_Interface;
         RetVal : access Windows.Security.Credentials.KeyCredentialAttestationStatus
      )
      return WinRt.Hresult is abstract;

      IID_IKeyCredentialAttestationResult : aliased WinRt.IID := (2024453025, 41921, 16643, (182, 204, 71, 44, 68, 23, 28, 187 ));

   -----------------------------------------------------------------------------
   -- type IKeyCredentialManagerStatics is interface and WinRt.IInspectable;

      function IsSupportedAsync
      (
         this : access IKeyCredentialManagerStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RenewAttestationAsync
      (
         this : access IKeyCredentialManagerStatics_Interface;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function RequestCreateAsync
      (
         this : access IKeyCredentialManagerStatics_Interface;
         name : WinRt.HString;
         option : Windows.Security.Credentials.KeyCredentialCreationOption;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function OpenAsync
      (
         this : access IKeyCredentialManagerStatics_Interface;
         name : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function DeleteAsync
      (
         this : access IKeyCredentialManagerStatics_Interface;
         name : WinRt.HString;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_IKeyCredentialManagerStatics : aliased WinRt.IID := (1789675147, 3825, 19680, (130, 144, 65, 6, 218, 106, 99, 181 ));

   -----------------------------------------------------------------------------
   -- type IKeyCredentialOperationResult is interface and WinRt.IInspectable;

      function get_Result
      (
         this : access IKeyCredentialOperationResult_Interface;
         RetVal : access Windows.Storage.Streams.IBuffer
      )
      return WinRt.Hresult is abstract;

      function get_Status
      (
         this : access IKeyCredentialOperationResult_Interface;
         RetVal : access Windows.Security.Credentials.KeyCredentialStatus
      )
      return WinRt.Hresult is abstract;

      IID_IKeyCredentialOperationResult : aliased WinRt.IID := (4114056897, 21089, 19677, (151, 109, 204, 144, 154, 199, 22, 32 ));

   -----------------------------------------------------------------------------
   -- type IKeyCredentialRetrievalResult is interface and WinRt.IInspectable;

      function get_Credential
      (
         this : access IKeyCredentialRetrievalResult_Interface;
         RetVal : access Windows.Security.Credentials.IKeyCredential
      )
      return WinRt.Hresult is abstract;

      function get_Status
      (
         this : access IKeyCredentialRetrievalResult_Interface;
         RetVal : access Windows.Security.Credentials.KeyCredentialStatus
      )
      return WinRt.Hresult is abstract;

      IID_IKeyCredentialRetrievalResult : aliased WinRt.IID := (1489860355, 36231, 16969, (155, 88, 246, 89, 140, 201, 100, 78 ));

   -----------------------------------------------------------------------------
   -- type IPasswordCredential is interface and WinRt.IInspectable;

      function get_Resource
      (
         this : access IPasswordCredential_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Resource
      (
         this : access IPasswordCredential_Interface;
         resource : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_UserName
      (
         this : access IPasswordCredential_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_UserName
      (
         this : access IPasswordCredential_Interface;
         userName : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Password
      (
         this : access IPasswordCredential_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Password
      (
         this : access IPasswordCredential_Interface;
         password : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function RetrievePassword
      (
         this : access IPasswordCredential_Interface
      )
      return WinRt.Hresult is abstract;

      function get_Properties
      (
         this : access IPasswordCredential_Interface;
         RetVal : access Windows.Foundation.Collections.IPropertySet
      )
      return WinRt.Hresult is abstract;

      IID_IPasswordCredential : aliased WinRt.IID := (1790019977, 50976, 16807, (166, 193, 254, 173, 179, 99, 41, 160 ));

   -----------------------------------------------------------------------------
   -- type IPasswordVault is interface and WinRt.IInspectable;

      function Add
      (
         this : access IPasswordVault_Interface;
         credential : Windows.Security.Credentials.IPasswordCredential
      )
      return WinRt.Hresult is abstract;

      function Remove
      (
         this : access IPasswordVault_Interface;
         credential : Windows.Security.Credentials.IPasswordCredential
      )
      return WinRt.Hresult is abstract;

      function Retrieve
      (
         this : access IPasswordVault_Interface;
         resource : WinRt.HString;
         userName : WinRt.HString;
         RetVal : access Windows.Security.Credentials.IPasswordCredential
      )
      return WinRt.Hresult is abstract;

      function FindAllByResource
      (
         this : access IPasswordVault_Interface;
         resource : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function FindAllByUserName
      (
         this : access IPasswordVault_Interface;
         userName : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RetrieveAll
      (
         this : access IPasswordVault_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPasswordVault : aliased WinRt.IID := (1643981835, 51412, 18625, (165, 79, 188, 90, 100, 32, 90, 242 ));

   -----------------------------------------------------------------------------
   -- type IWebAccount is interface and WinRt.IInspectable;

      function get_WebAccountProvider
      (
         this : access IWebAccount_Interface;
         RetVal : access Windows.Security.Credentials.IWebAccountProvider
      )
      return WinRt.Hresult is abstract;

      function get_UserName
      (
         this : access IWebAccount_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_State
      (
         this : access IWebAccount_Interface;
         RetVal : access Windows.Security.Credentials.WebAccountState
      )
      return WinRt.Hresult is abstract;

      IID_IWebAccount : aliased WinRt.IID := (1766276786, 32817, 18878, (128, 187, 150, 203, 70, 217, 154, 186 ));

   -----------------------------------------------------------------------------
   -- type IWebAccount2 is interface and WinRt.IInspectable;

      function get_Id
      (
         this : access IWebAccount2_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Properties
      (
         this : access IWebAccount2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetPictureAsync
      (
         this : access IWebAccount2_Interface;
         desizedSize : Windows.Security.Credentials.WebAccountPictureSize;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SignOutAsync
      (
         this : access IWebAccount2_Interface;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function SignOutAsync
      (
         this : access IWebAccount2_Interface;
         clientId : WinRt.HString;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_IWebAccount2 : aliased WinRt.IID := (2069288696, 39179, 20149, (148, 167, 86, 33, 243, 168, 184, 36 ));

   -----------------------------------------------------------------------------
   -- type IWebAccountFactory is interface and WinRt.IInspectable;

      function CreateWebAccount
      (
         this : access IWebAccountFactory_Interface;
         webAccountProvider_p : Windows.Security.Credentials.IWebAccountProvider;
         userName : WinRt.HString;
         state : Windows.Security.Credentials.WebAccountState;
         RetVal : access Windows.Security.Credentials.IWebAccount
      )
      return WinRt.Hresult is abstract;

      IID_IWebAccountFactory : aliased WinRt.IID := (2895838009, 7657, 20114, (183, 143, 5, 129, 168, 127, 110, 92 ));

   -----------------------------------------------------------------------------
   -- type IWebAccountProvider is interface and WinRt.IInspectable;

      function get_Id
      (
         this : access IWebAccountProvider_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_DisplayName
      (
         this : access IWebAccountProvider_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_IconUri
      (
         this : access IWebAccountProvider_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      IID_IWebAccountProvider : aliased WinRt.IID := (702335171, 31417, 19068, (163, 54, 185, 66, 249, 219, 247, 199 ));

   -----------------------------------------------------------------------------
   -- type IWebAccountProvider2 is interface and WinRt.IInspectable;

      function get_DisplayPurpose
      (
         this : access IWebAccountProvider2_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Authority
      (
         this : access IWebAccountProvider2_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IWebAccountProvider2 : aliased WinRt.IID := (1241639685, 20034, 16852, (181, 24, 224, 8, 165, 22, 54, 20 ));

   -----------------------------------------------------------------------------
   -- type IWebAccountProvider3 is interface and WinRt.IInspectable;

      function get_User
      (
         this : access IWebAccountProvider3_Interface;
         RetVal : access Windows.System.IUser
      )
      return WinRt.Hresult is abstract;

      IID_IWebAccountProvider3 : aliased WinRt.IID := (3659288971, 38669, 19785, (130, 92, 242, 112, 111, 140, 167, 254 ));

   -----------------------------------------------------------------------------
   -- type IWebAccountProvider4 is interface and WinRt.IInspectable;

      function get_IsSystemProvider
      (
         this : access IWebAccountProvider4_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IWebAccountProvider4 : aliased WinRt.IID := (1905252571, 59286, 16912, (183, 78, 132, 210, 152, 148, 176, 128 ));

   -----------------------------------------------------------------------------
   -- type IWebAccountProviderFactory is interface and WinRt.IInspectable;

      function CreateWebAccountProvider
      (
         this : access IWebAccountProviderFactory_Interface;
         id : WinRt.HString;
         displayName : WinRt.HString;
         iconUri : Windows.Foundation.IUriRuntimeClass;
         RetVal : access Windows.Security.Credentials.IWebAccountProvider
      )
      return WinRt.Hresult is abstract;

      IID_IWebAccountProviderFactory : aliased WinRt.IID := (494304753, 57825, 19354, (167, 116, 92, 124, 126, 59, 243, 113 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for KeyCredential

   overriding procedure Initialize (this : in out KeyCredential);
   overriding procedure Finalize (this : in out KeyCredential);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for KeyCredential

   function get_Name
   (
      this : in out KeyCredential
   )
   return WinRt.WString;

   function RetrievePublicKey
   (
      this : in out KeyCredential
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   function RetrievePublicKey
   (
      this : in out KeyCredential;
      blobType : Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   function RequestSignAsync
   (
      this : in out KeyCredential;
      data : Windows.Storage.Streams.IBuffer
   )
   return WinRt.Windows.Security.Credentials.KeyCredentialOperationResult'Class;

   function GetAttestationAsync
   (
      this : in out KeyCredential
   )
   return WinRt.Windows.Security.Credentials.KeyCredentialAttestationResult'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for KeyCredentialAttestationResult

   overriding procedure Initialize (this : in out KeyCredentialAttestationResult);
   overriding procedure Finalize (this : in out KeyCredentialAttestationResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for KeyCredentialAttestationResult

   function get_CertificateChainBuffer
   (
      this : in out KeyCredentialAttestationResult
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   function get_AttestationBuffer
   (
      this : in out KeyCredentialAttestationResult
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   function get_Status
   (
      this : in out KeyCredentialAttestationResult
   )
   return WinRt.Windows.Security.Credentials.KeyCredentialAttestationStatus;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package KeyCredentialManager is

      function IsSupportedAsync
      return WinRt.Boolean;

      procedure RenewAttestationAsync;

      function RequestCreateAsync
      (
         name : WinRt.WString;
         option : Windows.Security.Credentials.KeyCredentialCreationOption
      )
      return WinRt.Windows.Security.Credentials.KeyCredentialRetrievalResult;

      function OpenAsync
      (
         name : WinRt.WString
      )
      return WinRt.Windows.Security.Credentials.KeyCredentialRetrievalResult;

      procedure DeleteAsync
      (
         name : WinRt.WString
      );

   end KeyCredentialManager;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for KeyCredentialOperationResult

   overriding procedure Initialize (this : in out KeyCredentialOperationResult);
   overriding procedure Finalize (this : in out KeyCredentialOperationResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for KeyCredentialOperationResult

   function get_Result
   (
      this : in out KeyCredentialOperationResult
   )
   return WinRt.Windows.Storage.Streams.IBuffer;

   function get_Status
   (
      this : in out KeyCredentialOperationResult
   )
   return WinRt.Windows.Security.Credentials.KeyCredentialStatus;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for KeyCredentialRetrievalResult

   overriding procedure Initialize (this : in out KeyCredentialRetrievalResult);
   overriding procedure Finalize (this : in out KeyCredentialRetrievalResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for KeyCredentialRetrievalResult

   function get_Credential
   (
      this : in out KeyCredentialRetrievalResult
   )
   return WinRt.Windows.Security.Credentials.KeyCredential'Class;

   function get_Status
   (
      this : in out KeyCredentialRetrievalResult
   )
   return WinRt.Windows.Security.Credentials.KeyCredentialStatus;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PasswordCredential

   overriding procedure Initialize (this : in out PasswordCredential);
   overriding procedure Finalize (this : in out PasswordCredential);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PasswordCredential

   function Constructor return PasswordCredential;

   function Constructor
   (
      resource : WinRt.WString;
      userName : WinRt.WString;
      password : WinRt.WString
   )
   return PasswordCredential;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PasswordCredential

   function get_Resource
   (
      this : in out PasswordCredential
   )
   return WinRt.WString;

   procedure put_Resource
   (
      this : in out PasswordCredential;
      resource : WinRt.WString
   );

   function get_UserName
   (
      this : in out PasswordCredential
   )
   return WinRt.WString;

   procedure put_UserName
   (
      this : in out PasswordCredential;
      userName : WinRt.WString
   );

   function get_Password
   (
      this : in out PasswordCredential
   )
   return WinRt.WString;

   procedure put_Password
   (
      this : in out PasswordCredential;
      password : WinRt.WString
   );

   procedure RetrievePassword
   (
      this : in out PasswordCredential
   );

   function get_Properties
   (
      this : in out PasswordCredential
   )
   return WinRt.Windows.Foundation.Collections.IPropertySet;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PasswordCredentialPropertyStore

   overriding procedure Initialize (this : in out PasswordCredentialPropertyStore);
   overriding procedure Finalize (this : in out PasswordCredentialPropertyStore);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PasswordCredentialPropertyStore

   function Constructor return PasswordCredentialPropertyStore;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PasswordCredentialPropertyStore

   -- Generic Interface Windows.Foundation.Collections.IObservableMap`2<System.String,System.Object>
   function add_MapChanged
   (
      this : in out PasswordCredentialPropertyStore;
      vhnd : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_MapChanged
   (
      this : in out PasswordCredentialPropertyStore;
      token : Windows.Foundation.EventRegistrationToken
   );

   -- Generic Interface Windows.Foundation.Collections.IMap`2<System.String,System.Object>
   function Lookup
   (
      this : in out PasswordCredentialPropertyStore;
      key : WinRt.WString
   )
   return WinRt.IInspectable;

   function get_Size
   (
      this : in out PasswordCredentialPropertyStore
   )
   return WinRt.UInt32;

   function HasKey
   (
      this : in out PasswordCredentialPropertyStore;
      key : WinRt.WString
   )
   return WinRt.Boolean;

   function GetView
   (
      this : in out PasswordCredentialPropertyStore
   )
   return WinRt.GenericObject;

   function Insert
   (
      this : in out PasswordCredentialPropertyStore;
      key : WinRt.WString;
      value : WinRt.IInspectable
   )
   return WinRt.Boolean;

   procedure Remove
   (
      this : in out PasswordCredentialPropertyStore;
      key : WinRt.WString
   );

   procedure Clear
   (
      this : in out PasswordCredentialPropertyStore
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PasswordVault

   overriding procedure Initialize (this : in out PasswordVault);
   overriding procedure Finalize (this : in out PasswordVault);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PasswordVault

   function Constructor return PasswordVault;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PasswordVault

   procedure Add
   (
      this : in out PasswordVault;
      credential : Windows.Security.Credentials.PasswordCredential'Class
   );

   procedure Remove
   (
      this : in out PasswordVault;
      credential : Windows.Security.Credentials.PasswordCredential'Class
   );

   function Retrieve
   (
      this : in out PasswordVault;
      resource : WinRt.WString;
      userName : WinRt.WString
   )
   return WinRt.Windows.Security.Credentials.PasswordCredential'Class;

   function FindAllByResource
   (
      this : in out PasswordVault;
      resource : WinRt.WString
   )
   return IVectorView_IPasswordCredential.Kind;

   function FindAllByUserName
   (
      this : in out PasswordVault;
      userName : WinRt.WString
   )
   return IVectorView_IPasswordCredential.Kind;

   function RetrieveAll
   (
      this : in out PasswordVault
   )
   return IVectorView_IPasswordCredential.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for WebAccount

   overriding procedure Initialize (this : in out WebAccount);
   overriding procedure Finalize (this : in out WebAccount);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for WebAccount

   function Constructor
   (
      webAccountProvider_p : Windows.Security.Credentials.WebAccountProvider'Class;
      userName : WinRt.WString;
      state : Windows.Security.Credentials.WebAccountState
   )
   return WebAccount;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for WebAccount

   function get_WebAccountProvider
   (
      this : in out WebAccount
   )
   return WinRt.Windows.Security.Credentials.WebAccountProvider'Class;

   function get_UserName
   (
      this : in out WebAccount
   )
   return WinRt.WString;

   function get_State
   (
      this : in out WebAccount
   )
   return WinRt.Windows.Security.Credentials.WebAccountState;

   function get_Id
   (
      this : in out WebAccount
   )
   return WinRt.WString;

   function get_Properties
   (
      this : in out WebAccount
   )
   return IMapView_HString_HString.Kind;

   function GetPictureAsync
   (
      this : in out WebAccount;
      desizedSize : Windows.Security.Credentials.WebAccountPictureSize
   )
   return WinRt.Windows.Storage.Streams.IRandomAccessStream;

   procedure SignOutAsync
   (
      this : in out WebAccount
   );

   procedure SignOutAsync
   (
      this : in out WebAccount;
      clientId : WinRt.WString
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for WebAccountProvider

   overriding procedure Initialize (this : in out WebAccountProvider);
   overriding procedure Finalize (this : in out WebAccountProvider);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for WebAccountProvider

   function Constructor
   (
      id : WinRt.WString;
      displayName : WinRt.WString;
      iconUri : Windows.Foundation.Uri'Class
   )
   return WebAccountProvider;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for WebAccountProvider

   function get_Id
   (
      this : in out WebAccountProvider
   )
   return WinRt.WString;

   function get_DisplayName
   (
      this : in out WebAccountProvider
   )
   return WinRt.WString;

   function get_IconUri
   (
      this : in out WebAccountProvider
   )
   return WinRt.Windows.Foundation.Uri'Class;

   function get_DisplayPurpose
   (
      this : in out WebAccountProvider
   )
   return WinRt.WString;

   function get_Authority
   (
      this : in out WebAccountProvider
   )
   return WinRt.WString;

   function get_User
   (
      this : in out WebAccountProvider
   )
   return WinRt.Windows.System.User'Class;

   function get_IsSystemProvider
   (
      this : in out WebAccountProvider
   )
   return WinRt.Boolean;

end;
