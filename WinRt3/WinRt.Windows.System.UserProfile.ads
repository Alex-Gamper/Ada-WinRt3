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
limited with WinRt.Windows.Globalization;
limited with WinRt.Windows.Storage;
limited with WinRt.Windows.Storage.Streams;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.System.UserProfile is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IAdvertisingManagerForUser_Interface is interface and WinRt.IInspectable_Interface;
   type IAdvertisingManagerForUser is access all IAdvertisingManagerForUser_Interface'Class;
   type IAdvertisingManagerForUser_Ptr is access all IAdvertisingManagerForUser;

   type IAdvertisingManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IAdvertisingManagerStatics is access all IAdvertisingManagerStatics_Interface'Class;

   type IAdvertisingManagerStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type IAdvertisingManagerStatics2 is access all IAdvertisingManagerStatics2_Interface'Class;

   type IAssignedAccessSettings_Interface is interface and WinRt.IInspectable_Interface;
   type IAssignedAccessSettings is access all IAssignedAccessSettings_Interface'Class;
   type IAssignedAccessSettings_Ptr is access all IAssignedAccessSettings;

   type IAssignedAccessSettingsStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IAssignedAccessSettingsStatics is access all IAssignedAccessSettingsStatics_Interface'Class;

   type IDiagnosticsSettings_Interface is interface and WinRt.IInspectable_Interface;
   type IDiagnosticsSettings is access all IDiagnosticsSettings_Interface'Class;
   type IDiagnosticsSettings_Ptr is access all IDiagnosticsSettings;

   type IDiagnosticsSettingsStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IDiagnosticsSettingsStatics is access all IDiagnosticsSettingsStatics_Interface'Class;

   type IFirstSignInSettings_Interface is interface and WinRt.IInspectable_Interface;
   type IFirstSignInSettings is access all IFirstSignInSettings_Interface'Class;
   type IFirstSignInSettings_Ptr is access all IFirstSignInSettings;

   type IFirstSignInSettingsStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IFirstSignInSettingsStatics is access all IFirstSignInSettingsStatics_Interface'Class;

   type IGlobalizationPreferencesForUser_Interface is interface and WinRt.IInspectable_Interface;
   type IGlobalizationPreferencesForUser is access all IGlobalizationPreferencesForUser_Interface'Class;
   type IGlobalizationPreferencesForUser_Ptr is access all IGlobalizationPreferencesForUser;

   type IGlobalizationPreferencesStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IGlobalizationPreferencesStatics is access all IGlobalizationPreferencesStatics_Interface'Class;

   type IGlobalizationPreferencesStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type IGlobalizationPreferencesStatics2 is access all IGlobalizationPreferencesStatics2_Interface'Class;

   type IGlobalizationPreferencesStatics3_Interface is interface and WinRt.IInspectable_Interface;
   type IGlobalizationPreferencesStatics3 is access all IGlobalizationPreferencesStatics3_Interface'Class;

   type ILockScreenImageFeedStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ILockScreenImageFeedStatics is access all ILockScreenImageFeedStatics_Interface'Class;

   type ILockScreenStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ILockScreenStatics is access all ILockScreenStatics_Interface'Class;

   type IUserInformationStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IUserInformationStatics is access all IUserInformationStatics_Interface'Class;

   type IUserProfilePersonalizationSettings_Interface is interface and WinRt.IInspectable_Interface;
   type IUserProfilePersonalizationSettings is access all IUserProfilePersonalizationSettings_Interface'Class;
   type IUserProfilePersonalizationSettings_Ptr is access all IUserProfilePersonalizationSettings;

   type IUserProfilePersonalizationSettingsStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IUserProfilePersonalizationSettingsStatics is access all IUserProfilePersonalizationSettingsStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type AdvertisingManagerForUser is new Ada.Finalization.Limited_Controlled with
      record
         m_IAdvertisingManagerForUser : access Windows.System.UserProfile.IAdvertisingManagerForUser;
      end record;
   type AdvertisingManagerForUser_Ptr is access all AdvertisingManagerForUser;

   type AssignedAccessSettings is new Ada.Finalization.Limited_Controlled with
      record
         m_IAssignedAccessSettings : access Windows.System.UserProfile.IAssignedAccessSettings;
      end record;
   type AssignedAccessSettings_Ptr is access all AssignedAccessSettings;

   type DiagnosticsSettings is new Ada.Finalization.Limited_Controlled with
      record
         m_IDiagnosticsSettings : access Windows.System.UserProfile.IDiagnosticsSettings;
      end record;
   type DiagnosticsSettings_Ptr is access all DiagnosticsSettings;

   type FirstSignInSettings is new Ada.Finalization.Limited_Controlled with
      record
         m_IFirstSignInSettings : access Windows.System.UserProfile.IFirstSignInSettings;
      end record;
   type FirstSignInSettings_Ptr is access all FirstSignInSettings;

   type GlobalizationPreferencesForUser is new Ada.Finalization.Limited_Controlled with
      record
         m_IGlobalizationPreferencesForUser : access Windows.System.UserProfile.IGlobalizationPreferencesForUser;
      end record;
   type GlobalizationPreferencesForUser_Ptr is access all GlobalizationPreferencesForUser;

   type UserProfilePersonalizationSettings is new Ada.Finalization.Limited_Controlled with
      record
         m_IUserProfilePersonalizationSettings : access Windows.System.UserProfile.IUserProfilePersonalizationSettings;
      end record;
   type UserProfilePersonalizationSettings_Ptr is access all UserProfilePersonalizationSettings;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type AccountPictureKind is (
      SmallImage_e,
      LargeImage_e,
      Video_e
   );
   for AccountPictureKind use (
      SmallImage_e => 0,
      LargeImage_e => 1,
      Video_e => 2
   );
   type AccountPictureKind_Ptr is access all AccountPictureKind;

   type SetAccountPictureResult is (
      Success_e,
      ChangeDisabled_e,
      LargeOrDynamicError_e,
      VideoFrameSizeError_e,
      FileSizeError_e,
      Failure_e
   );
   for SetAccountPictureResult use (
      Success_e => 0,
      ChangeDisabled_e => 1,
      LargeOrDynamicError_e => 2,
      VideoFrameSizeError_e => 3,
      FileSizeError_e => 4,
      Failure_e => 5
   );
   type SetAccountPictureResult_Ptr is access all SetAccountPictureResult;

   type SetImageFeedResult is (
      Success_e,
      ChangeDisabled_e,
      UserCanceled_e
   );
   for SetImageFeedResult use (
      Success_e => 0,
      ChangeDisabled_e => 1,
      UserCanceled_e => 2
   );
   type SetImageFeedResult_Ptr is access all SetImageFeedResult;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type UserProfileContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type UserProfileContract_Ptr is access all UserProfileContract;

   type UserProfileLockScreenContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type UserProfileLockScreenContract_Ptr is access all UserProfileLockScreenContract;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_HString is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.HString);
   IID_IVectorView_HString : aliased WinRt.IID := (3399173929, 4795, 21596, (144, 211, 9, 199, 35, 108, 43, 14 ));
   function QInterface_IVectorView_HString is new Generic_QueryInterface (GenericObject_Interface, IVectorView_HString.Kind, IID_IVectorView_HString'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IAdvertisingManagerForUser is interface and WinRt.IInspectable;

      function get_AdvertisingId
      (
         this : access IAdvertisingManagerForUser_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_User
      (
         this : access IAdvertisingManagerForUser_Interface;
         RetVal : access Windows.System.IUser
      )
      return WinRt.Hresult is abstract;

      IID_IAdvertisingManagerForUser : aliased WinRt.IID := (2458645456, 53116, 19120, (167, 220, 109, 197, 188, 212, 66, 82 ));

   -----------------------------------------------------------------------------
   -- type IAdvertisingManagerStatics is interface and WinRt.IInspectable;

      function get_AdvertisingId
      (
         this : access IAdvertisingManagerStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IAdvertisingManagerStatics : aliased WinRt.IID := (2916304524, 41587, 18635, (179, 70, 53, 68, 82, 45, 85, 129 ));

   -----------------------------------------------------------------------------
   -- type IAdvertisingManagerStatics2 is interface and WinRt.IInspectable;

      function GetForUser
      (
         this : access IAdvertisingManagerStatics2_Interface;
         user : Windows.System.IUser;
         RetVal : access Windows.System.UserProfile.IAdvertisingManagerForUser
      )
      return WinRt.Hresult is abstract;

      IID_IAdvertisingManagerStatics2 : aliased WinRt.IID := (3708372911, 6765, 18096, (149, 188, 243, 249, 214, 190, 185, 251 ));

   -----------------------------------------------------------------------------
   -- type IAssignedAccessSettings is interface and WinRt.IInspectable;

      function get_IsEnabled
      (
         this : access IAssignedAccessSettings_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsSingleAppKioskMode
      (
         this : access IAssignedAccessSettings_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_User
      (
         this : access IAssignedAccessSettings_Interface;
         RetVal : access Windows.System.IUser
      )
      return WinRt.Hresult is abstract;

      IID_IAssignedAccessSettings : aliased WinRt.IID := (465927964, 59761, 22359, (184, 224, 81, 47, 139, 140, 70, 210 ));

   -----------------------------------------------------------------------------
   -- type IAssignedAccessSettingsStatics is interface and WinRt.IInspectable;

      function GetDefault
      (
         this : access IAssignedAccessSettingsStatics_Interface;
         RetVal : access Windows.System.UserProfile.IAssignedAccessSettings
      )
      return WinRt.Hresult is abstract;

      function GetForUser
      (
         this : access IAssignedAccessSettingsStatics_Interface;
         user : Windows.System.IUser;
         RetVal : access Windows.System.UserProfile.IAssignedAccessSettings
      )
      return WinRt.Hresult is abstract;

      IID_IAssignedAccessSettingsStatics : aliased WinRt.IID := (883432717, 35369, 24307, (167, 190, 97, 142, 106, 195, 189, 1 ));

   -----------------------------------------------------------------------------
   -- type IDiagnosticsSettings is interface and WinRt.IInspectable;

      function get_CanUseDiagnosticsToTailorExperiences
      (
         this : access IDiagnosticsSettings_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_User
      (
         this : access IDiagnosticsSettings_Interface;
         RetVal : access Windows.System.IUser
      )
      return WinRt.Hresult is abstract;

      IID_IDiagnosticsSettings : aliased WinRt.IID := (3857312973, 10001, 17632, (151, 60, 73, 29, 120, 4, 141, 36 ));

   -----------------------------------------------------------------------------
   -- type IDiagnosticsSettingsStatics is interface and WinRt.IInspectable;

      function GetDefault
      (
         this : access IDiagnosticsSettingsStatics_Interface;
         RetVal : access Windows.System.UserProfile.IDiagnosticsSettings
      )
      return WinRt.Hresult is abstract;

      function GetForUser
      (
         this : access IDiagnosticsSettingsStatics_Interface;
         user : Windows.System.IUser;
         RetVal : access Windows.System.UserProfile.IDiagnosticsSettings
      )
      return WinRt.Hresult is abstract;

      IID_IDiagnosticsSettingsStatics : aliased WinRt.IID := (1926424591, 21392, 18323, (153, 11, 60, 204, 125, 106, 201, 200 ));

   -----------------------------------------------------------------------------
   -- type IFirstSignInSettings is interface and WinRt.IInspectable;

      IID_IFirstSignInSettings : aliased WinRt.IID := (1049907539, 14942, 17710, (166, 1, 245, 186, 173, 42, 72, 112 ));

   -----------------------------------------------------------------------------
   -- type IFirstSignInSettingsStatics is interface and WinRt.IInspectable;

      function GetDefault
      (
         this : access IFirstSignInSettingsStatics_Interface;
         RetVal : access Windows.System.UserProfile.IFirstSignInSettings
      )
      return WinRt.Hresult is abstract;

      IID_IFirstSignInSettingsStatics : aliased WinRt.IID := (484544271, 7233, 20128, (183, 162, 111, 12, 28, 126, 132, 56 ));

   -----------------------------------------------------------------------------
   -- type IGlobalizationPreferencesForUser is interface and WinRt.IInspectable;

      function get_User
      (
         this : access IGlobalizationPreferencesForUser_Interface;
         RetVal : access Windows.System.IUser
      )
      return WinRt.Hresult is abstract;

      function get_Calendars
      (
         this : access IGlobalizationPreferencesForUser_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Clocks
      (
         this : access IGlobalizationPreferencesForUser_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Currencies
      (
         this : access IGlobalizationPreferencesForUser_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Languages
      (
         this : access IGlobalizationPreferencesForUser_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_HomeGeographicRegion
      (
         this : access IGlobalizationPreferencesForUser_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_WeekStartsOn
      (
         this : access IGlobalizationPreferencesForUser_Interface;
         RetVal : access Windows.Globalization.DayOfWeek
      )
      return WinRt.Hresult is abstract;

      IID_IGlobalizationPreferencesForUser : aliased WinRt.IID := (353306517, 20334, 16570, (160, 16, 226, 125, 129, 189, 167, 245 ));

   -----------------------------------------------------------------------------
   -- type IGlobalizationPreferencesStatics is interface and WinRt.IInspectable;

      function get_Calendars
      (
         this : access IGlobalizationPreferencesStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Clocks
      (
         this : access IGlobalizationPreferencesStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Currencies
      (
         this : access IGlobalizationPreferencesStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Languages
      (
         this : access IGlobalizationPreferencesStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_HomeGeographicRegion
      (
         this : access IGlobalizationPreferencesStatics_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_WeekStartsOn
      (
         this : access IGlobalizationPreferencesStatics_Interface;
         RetVal : access Windows.Globalization.DayOfWeek
      )
      return WinRt.Hresult is abstract;

      IID_IGlobalizationPreferencesStatics : aliased WinRt.IID := (29311782, 60727, 20118, (176, 233, 193, 52, 13, 30, 161, 88 ));

   -----------------------------------------------------------------------------
   -- type IGlobalizationPreferencesStatics2 is interface and WinRt.IInspectable;

      function TrySetHomeGeographicRegion
      (
         this : access IGlobalizationPreferencesStatics2_Interface;
         region : WinRt.HString;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function TrySetLanguages
      (
         this : access IGlobalizationPreferencesStatics2_Interface;
         languageTags : GenericObject;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IGlobalizationPreferencesStatics2 : aliased WinRt.IID := (4241393137, 17152, 19664, (156, 172, 26, 142, 123, 126, 24, 244 ));

   -----------------------------------------------------------------------------
   -- type IGlobalizationPreferencesStatics3 is interface and WinRt.IInspectable;

      function GetForUser
      (
         this : access IGlobalizationPreferencesStatics3_Interface;
         user : Windows.System.IUser;
         RetVal : access Windows.System.UserProfile.IGlobalizationPreferencesForUser
      )
      return WinRt.Hresult is abstract;

      IID_IGlobalizationPreferencesStatics3 : aliased WinRt.IID := (503682867, 13813, 16600, (185, 232, 174, 243, 239, 133, 111, 206 ));

   -----------------------------------------------------------------------------
   -- type ILockScreenImageFeedStatics is interface and WinRt.IInspectable;

      function RequestSetImageFeedAsync
      (
         this : access ILockScreenImageFeedStatics_Interface;
         syndicationFeedUri : Windows.Foundation.IUriRuntimeClass;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function TryRemoveImageFeed
      (
         this : access ILockScreenImageFeedStatics_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_ILockScreenImageFeedStatics : aliased WinRt.IID := (739079158, 937, 16806, (155, 1, 73, 82, 81, 255, 81, 213 ));

   -----------------------------------------------------------------------------
   -- type ILockScreenStatics is interface and WinRt.IInspectable;

      function get_OriginalImageFile
      (
         this : access ILockScreenStatics_Interface;
         RetVal : access Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function GetImageStream
      (
         this : access ILockScreenStatics_Interface;
         RetVal : access Windows.Storage.Streams.IRandomAccessStream
      )
      return WinRt.Hresult is abstract;

      function SetImageFileAsync
      (
         this : access ILockScreenStatics_Interface;
         value : Windows.Storage.IStorageFile;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function SetImageStreamAsync
      (
         this : access ILockScreenStatics_Interface;
         value : Windows.Storage.Streams.IRandomAccessStream;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_ILockScreenStatics : aliased WinRt.IID := (1055511469, 46599, 16558, (180, 38, 118, 49, 217, 130, 18, 105 ));

   -----------------------------------------------------------------------------
   -- type IUserInformationStatics is interface and WinRt.IInspectable;

      function get_AccountPictureChangeEnabled
      (
         this : access IUserInformationStatics_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_NameAccessAllowed
      (
         this : access IUserInformationStatics_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function GetAccountPicture
      (
         this : access IUserInformationStatics_Interface;
         kind : Windows.System.UserProfile.AccountPictureKind;
         RetVal : access Windows.Storage.IStorageFile
      )
      return WinRt.Hresult is abstract;

      function SetAccountPictureAsync
      (
         this : access IUserInformationStatics_Interface;
         image : Windows.Storage.IStorageFile;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SetAccountPicturesAsync
      (
         this : access IUserInformationStatics_Interface;
         smallImage : Windows.Storage.IStorageFile;
         largeImage : Windows.Storage.IStorageFile;
         video : Windows.Storage.IStorageFile;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SetAccountPictureFromStreamAsync
      (
         this : access IUserInformationStatics_Interface;
         image : Windows.Storage.Streams.IRandomAccessStream;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function SetAccountPicturesFromStreamsAsync
      (
         this : access IUserInformationStatics_Interface;
         smallImage : Windows.Storage.Streams.IRandomAccessStream;
         largeImage : Windows.Storage.Streams.IRandomAccessStream;
         video : Windows.Storage.Streams.IRandomAccessStream;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function add_AccountPictureChanged
      (
         this : access IUserInformationStatics_Interface;
         changeHandler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_AccountPictureChanged
      (
         this : access IUserInformationStatics_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function GetDisplayNameAsync
      (
         this : access IUserInformationStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetFirstNameAsync
      (
         this : access IUserInformationStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetLastNameAsync
      (
         this : access IUserInformationStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetPrincipalNameAsync
      (
         this : access IUserInformationStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetSessionInitiationProtocolUriAsync
      (
         this : access IUserInformationStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function GetDomainNameAsync
      (
         this : access IUserInformationStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IUserInformationStatics : aliased WinRt.IID := (2012457232, 18682, 18588, (147, 78, 42, 232, 91, 168, 247, 114 ));

   -----------------------------------------------------------------------------
   -- type IUserProfilePersonalizationSettings is interface and WinRt.IInspectable;

      function TrySetLockScreenImageAsync
      (
         this : access IUserProfilePersonalizationSettings_Interface;
         imageFile : Windows.Storage.IStorageFile;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function TrySetWallpaperImageAsync
      (
         this : access IUserProfilePersonalizationSettings_Interface;
         imageFile : Windows.Storage.IStorageFile;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IUserProfilePersonalizationSettings : aliased WinRt.IID := (2364398260, 31128, 18133, (141, 211, 24, 79, 28, 95, 154, 185 ));

   -----------------------------------------------------------------------------
   -- type IUserProfilePersonalizationSettingsStatics is interface and WinRt.IInspectable;

      function get_Current
      (
         this : access IUserProfilePersonalizationSettingsStatics_Interface;
         RetVal : access Windows.System.UserProfile.IUserProfilePersonalizationSettings
      )
      return WinRt.Hresult is abstract;

      function IsSupported
      (
         this : access IUserProfilePersonalizationSettingsStatics_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IUserProfilePersonalizationSettingsStatics : aliased WinRt.IID := (2444015681, 20535, 17739, (152, 131, 187, 119, 45, 8, 221, 22 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package AdvertisingManager is

      function get_AdvertisingId
      return WinRt.WString;

      function GetForUser
      (
         user : Windows.System.User'Class
      )
      return WinRt.Windows.System.UserProfile.AdvertisingManagerForUser;

   end AdvertisingManager;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AdvertisingManagerForUser

   overriding procedure Initialize (this : in out AdvertisingManagerForUser);
   overriding procedure Finalize (this : in out AdvertisingManagerForUser);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AdvertisingManagerForUser

   function get_AdvertisingId
   (
      this : in out AdvertisingManagerForUser
   )
   return WinRt.WString;

   function get_User
   (
      this : in out AdvertisingManagerForUser
   )
   return WinRt.Windows.System.User'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AssignedAccessSettings

   overriding procedure Initialize (this : in out AssignedAccessSettings);
   overriding procedure Finalize (this : in out AssignedAccessSettings);

   -----------------------------------------------------------------------------
   -- Static Interfaces for AssignedAccessSettings

   function GetDefault
   return WinRt.Windows.System.UserProfile.AssignedAccessSettings;

   function GetForUser
   (
      user : Windows.System.User'Class
   )
   return WinRt.Windows.System.UserProfile.AssignedAccessSettings;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AssignedAccessSettings

   function get_IsEnabled
   (
      this : in out AssignedAccessSettings
   )
   return WinRt.Boolean;

   function get_IsSingleAppKioskMode
   (
      this : in out AssignedAccessSettings
   )
   return WinRt.Boolean;

   function get_User
   (
      this : in out AssignedAccessSettings
   )
   return WinRt.Windows.System.User'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DiagnosticsSettings

   overriding procedure Initialize (this : in out DiagnosticsSettings);
   overriding procedure Finalize (this : in out DiagnosticsSettings);

   -----------------------------------------------------------------------------
   -- Static Interfaces for DiagnosticsSettings

   function GetDefault
   return WinRt.Windows.System.UserProfile.DiagnosticsSettings;

   function GetForUser
   (
      user : Windows.System.User'Class
   )
   return WinRt.Windows.System.UserProfile.DiagnosticsSettings;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DiagnosticsSettings

   function get_CanUseDiagnosticsToTailorExperiences
   (
      this : in out DiagnosticsSettings
   )
   return WinRt.Boolean;

   function get_User
   (
      this : in out DiagnosticsSettings
   )
   return WinRt.Windows.System.User'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for FirstSignInSettings

   overriding procedure Initialize (this : in out FirstSignInSettings);
   overriding procedure Finalize (this : in out FirstSignInSettings);

   -----------------------------------------------------------------------------
   -- Static Interfaces for FirstSignInSettings

   function GetDefault
   return WinRt.Windows.System.UserProfile.FirstSignInSettings;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for FirstSignInSettings

   -- Generic Interface Windows.Foundation.Collections.IMapView`2<System.String,System.Object>
   function Lookup
   (
      this : in out FirstSignInSettings;
      key : WinRt.WString
   )
   return WinRt.IInspectable;

   function get_Size
   (
      this : in out FirstSignInSettings
   )
   return WinRt.UInt32;

   function HasKey
   (
      this : in out FirstSignInSettings;
      key : WinRt.WString
   )
   return WinRt.Boolean;

   procedure Split
   (
      this : in out FirstSignInSettings;
      first : access GenericObject_Ptr;
      second : access GenericObject_Ptr
   );

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package GlobalizationPreferences is

      function get_Calendars
      return IVectorView_HString.Kind;

      function get_Clocks
      return IVectorView_HString.Kind;

      function get_Currencies
      return IVectorView_HString.Kind;

      function get_Languages
      return IVectorView_HString.Kind;

      function get_HomeGeographicRegion
      return WinRt.WString;

      function get_WeekStartsOn
      return WinRt.Windows.Globalization.DayOfWeek;

      function GetForUser
      (
         user : Windows.System.User'Class
      )
      return WinRt.Windows.System.UserProfile.GlobalizationPreferencesForUser;

      function TrySetHomeGeographicRegion
      (
         region : WinRt.WString
      )
      return WinRt.Boolean;

      function TrySetLanguages
      (
         languageTags : GenericObject
      )
      return WinRt.Boolean;

   end GlobalizationPreferences;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for GlobalizationPreferencesForUser

   overriding procedure Initialize (this : in out GlobalizationPreferencesForUser);
   overriding procedure Finalize (this : in out GlobalizationPreferencesForUser);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for GlobalizationPreferencesForUser

   function get_User
   (
      this : in out GlobalizationPreferencesForUser
   )
   return WinRt.Windows.System.User'Class;

   function get_Calendars
   (
      this : in out GlobalizationPreferencesForUser
   )
   return IVectorView_HString.Kind;

   function get_Clocks
   (
      this : in out GlobalizationPreferencesForUser
   )
   return IVectorView_HString.Kind;

   function get_Currencies
   (
      this : in out GlobalizationPreferencesForUser
   )
   return IVectorView_HString.Kind;

   function get_Languages
   (
      this : in out GlobalizationPreferencesForUser
   )
   return IVectorView_HString.Kind;

   function get_HomeGeographicRegion
   (
      this : in out GlobalizationPreferencesForUser
   )
   return WinRt.WString;

   function get_WeekStartsOn
   (
      this : in out GlobalizationPreferencesForUser
   )
   return WinRt.Windows.Globalization.DayOfWeek;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package LockScreen is

      function get_OriginalImageFile
      return WinRt.Windows.Foundation.Uri;

      function GetImageStream
      return WinRt.Windows.Storage.Streams.IRandomAccessStream;

      procedure SetImageFileAsync
      (
         value : Windows.Storage.IStorageFile
      );

      procedure SetImageStreamAsync
      (
         value : Windows.Storage.Streams.IRandomAccessStream
      );

      function RequestSetImageFeedAsync
      (
         syndicationFeedUri : Windows.Foundation.Uri'Class
      )
      return WinRt.Windows.System.UserProfile.SetImageFeedResult;

      function TryRemoveImageFeed
      return WinRt.Boolean;

   end LockScreen;

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package UserInformation is

      function get_AccountPictureChangeEnabled
      return WinRt.Boolean;

      function get_NameAccessAllowed
      return WinRt.Boolean;

      function GetAccountPicture
      (
         kind : Windows.System.UserProfile.AccountPictureKind
      )
      return WinRt.Windows.Storage.IStorageFile;

      function SetAccountPictureAsync
      (
         image : Windows.Storage.IStorageFile
      )
      return WinRt.Windows.System.UserProfile.SetAccountPictureResult;

      function SetAccountPicturesAsync
      (
         smallImage : Windows.Storage.IStorageFile;
         largeImage : Windows.Storage.IStorageFile;
         video : Windows.Storage.IStorageFile
      )
      return WinRt.Windows.System.UserProfile.SetAccountPictureResult;

      function SetAccountPictureFromStreamAsync
      (
         image : Windows.Storage.Streams.IRandomAccessStream
      )
      return WinRt.Windows.System.UserProfile.SetAccountPictureResult;

      function SetAccountPicturesFromStreamsAsync
      (
         smallImage : Windows.Storage.Streams.IRandomAccessStream;
         largeImage : Windows.Storage.Streams.IRandomAccessStream;
         video : Windows.Storage.Streams.IRandomAccessStream
      )
      return WinRt.Windows.System.UserProfile.SetAccountPictureResult;

      function add_AccountPictureChanged
      (
         changeHandler : GenericObject
      )
      return WinRt.Windows.Foundation.EventRegistrationToken;

      procedure remove_AccountPictureChanged
      (
         token : Windows.Foundation.EventRegistrationToken
      );

      function GetDisplayNameAsync
      return WinRt.WString;

      function GetFirstNameAsync
      return WinRt.WString;

      function GetLastNameAsync
      return WinRt.WString;

      function GetPrincipalNameAsync
      return WinRt.WString;

      function GetSessionInitiationProtocolUriAsync
      return WinRt.Windows.Foundation.Uri;

      function GetDomainNameAsync
      return WinRt.WString;

   end UserInformation;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for UserProfilePersonalizationSettings

   overriding procedure Initialize (this : in out UserProfilePersonalizationSettings);
   overriding procedure Finalize (this : in out UserProfilePersonalizationSettings);

   -----------------------------------------------------------------------------
   -- Static Interfaces for UserProfilePersonalizationSettings

   function get_Current
   return WinRt.Windows.System.UserProfile.UserProfilePersonalizationSettings;

   function IsSupported
   return WinRt.Boolean;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for UserProfilePersonalizationSettings

   function TrySetLockScreenImageAsync
   (
      this : in out UserProfilePersonalizationSettings;
      imageFile : Windows.Storage.StorageFile'Class
   )
   return WinRt.Boolean;

   function TrySetWallpaperImageAsync
   (
      this : in out UserProfilePersonalizationSettings;
      imageFile : Windows.Storage.StorageFile'Class
   )
   return WinRt.Boolean;

end;
