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
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.Contacts.Provider is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IContactPickerUI_Interface is interface and WinRt.IInspectable_Interface;
   type IContactPickerUI is access all IContactPickerUI_Interface'Class;
   type IContactPickerUI_Ptr is access all IContactPickerUI;

   type IContactPickerUI2_Interface is interface and WinRt.IInspectable_Interface;
   type IContactPickerUI2 is access all IContactPickerUI2_Interface'Class;

   type IContactRemovedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IContactRemovedEventArgs is access all IContactRemovedEventArgs_Interface'Class;
   type IContactRemovedEventArgs_Ptr is access all IContactRemovedEventArgs;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type ContactPickerUI is new Ada.Finalization.Limited_Controlled with
      record
         m_IContactPickerUI : access Windows.ApplicationModel.Contacts.Provider.IContactPickerUI;
      end record;
   type ContactPickerUI_Ptr is access all ContactPickerUI;

   type ContactRemovedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IContactRemovedEventArgs : access Windows.ApplicationModel.Contacts.Provider.IContactRemovedEventArgs;
      end record;
   type ContactRemovedEventArgs_Ptr is access all ContactRemovedEventArgs;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type AddContactResult is (
      Added_e,
      AlreadyAdded_e,
      Unavailable_e
   );
   for AddContactResult use (
      Added_e => 0,
      AlreadyAdded_e => 1,
      Unavailable_e => 2
   );
   type AddContactResult_Ptr is access all AddContactResult;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_HString is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.HString);
   IID_IVectorView_HString : aliased WinRt.IID := (1876249280, 53067, 22264, (158, 149, 37, 211, 47, 96, 202, 222 ));
   function QInterface_IVectorView_HString is new Generic_QueryInterface (GenericObject_Interface, IVectorView_HString.Kind, IID_IVectorView_HString'Access);

   package IVector_ContactFieldType is new WinRt.Windows.Foundation.Collections.IVector (WinRt.Windows.ApplicationModel.Contacts.ContactFieldType);
   IID_IVector_ContactFieldType : aliased WinRt.IID := (1407643354, 30083, 24355, (170, 171, 200, 157, 83, 3, 186, 241 ));
   function QInterface_IVector_ContactFieldType is new Generic_QueryInterface (GenericObject_Interface, IVector_ContactFieldType.Kind, IID_IVector_ContactFieldType'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IContactPickerUI is interface and WinRt.IInspectable;

      function AddContact
      (
         this : access IContactPickerUI_Interface;
         id : WinRt.HString;
         contact : Windows.ApplicationModel.Contacts.IContact;
         RetVal : access Windows.ApplicationModel.Contacts.Provider.AddContactResult
      )
      return WinRt.Hresult is abstract;

      function RemoveContact
      (
         this : access IContactPickerUI_Interface;
         id : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function ContainsContact
      (
         this : access IContactPickerUI_Interface;
         id : WinRt.HString;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_DesiredFields
      (
         this : access IContactPickerUI_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_SelectionMode
      (
         this : access IContactPickerUI_Interface;
         RetVal : access Windows.ApplicationModel.Contacts.ContactSelectionMode
      )
      return WinRt.Hresult is abstract;

      function add_ContactRemoved
      (
         this : access IContactPickerUI_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_ContactRemoved
      (
         this : access IContactPickerUI_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      IID_IContactPickerUI : aliased WinRt.IID := (3805025126, 53094, 17348, (169, 106, 165, 161, 18, 219, 71, 70 ));

   -----------------------------------------------------------------------------
   -- type IContactPickerUI2 is interface and WinRt.IInspectable;

      function AddContact
      (
         this : access IContactPickerUI2_Interface;
         contact : Windows.ApplicationModel.Contacts.IContact;
         RetVal : access Windows.ApplicationModel.Contacts.Provider.AddContactResult
      )
      return WinRt.Hresult is abstract;

      function get_DesiredFieldsWithContactFieldType
      (
         this : access IContactPickerUI2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IContactPickerUI2 : aliased WinRt.IID := (1849990696, 31525, 18841, (155, 11, 135, 84, 0, 161, 232, 200 ));

   -----------------------------------------------------------------------------
   -- type IContactRemovedEventArgs is interface and WinRt.IInspectable;

      function get_Id
      (
         this : access IContactRemovedEventArgs_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IContactRemovedEventArgs : aliased WinRt.IID := (1865761592, 13058, 19731, (173, 141, 173, 204, 15, 249, 228, 124 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ContactPickerUI

   overriding procedure Initialize (this : in out ContactPickerUI);
   overriding procedure Finalize (this : in out ContactPickerUI);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ContactPickerUI

   function AddContact
   (
      this : in out ContactPickerUI;
      id : WinRt.WString;
      contact : Windows.ApplicationModel.Contacts.Contact'Class
   )
   return WinRt.Windows.ApplicationModel.Contacts.Provider.AddContactResult;

   procedure RemoveContact
   (
      this : in out ContactPickerUI;
      id : WinRt.WString
   );

   function ContainsContact
   (
      this : in out ContactPickerUI;
      id : WinRt.WString
   )
   return WinRt.Boolean;

   function get_DesiredFields
   (
      this : in out ContactPickerUI
   )
   return IVectorView_HString.Kind;

   function get_SelectionMode
   (
      this : in out ContactPickerUI
   )
   return WinRt.Windows.ApplicationModel.Contacts.ContactSelectionMode;

   function add_ContactRemoved
   (
      this : in out ContactPickerUI;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_ContactRemoved
   (
      this : in out ContactPickerUI;
      token : Windows.Foundation.EventRegistrationToken
   );

   function AddContact
   (
      this : in out ContactPickerUI;
      contact : Windows.ApplicationModel.Contacts.Contact'Class
   )
   return WinRt.Windows.ApplicationModel.Contacts.Provider.AddContactResult;

   function get_DesiredFieldsWithContactFieldType
   (
      this : in out ContactPickerUI
   )
   return IVector_ContactFieldType.Kind;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ContactRemovedEventArgs

   overriding procedure Initialize (this : in out ContactRemovedEventArgs);
   overriding procedure Finalize (this : in out ContactRemovedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ContactRemovedEventArgs

   function get_Id
   (
      this : in out ContactRemovedEventArgs
   )
   return WinRt.WString;

end;
