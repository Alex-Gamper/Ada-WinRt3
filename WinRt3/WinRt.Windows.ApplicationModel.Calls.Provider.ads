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
limited with WinRt.Windows.Storage;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.Calls.Provider is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPhoneCallOrigin_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneCallOrigin is access all IPhoneCallOrigin_Interface'Class;
   type IPhoneCallOrigin_Ptr is access all IPhoneCallOrigin;

   type IPhoneCallOrigin2_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneCallOrigin2 is access all IPhoneCallOrigin2_Interface'Class;

   type IPhoneCallOrigin3_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneCallOrigin3 is access all IPhoneCallOrigin3_Interface'Class;

   type IPhoneCallOriginManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneCallOriginManagerStatics is access all IPhoneCallOriginManagerStatics_Interface'Class;

   type IPhoneCallOriginManagerStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneCallOriginManagerStatics2 is access all IPhoneCallOriginManagerStatics2_Interface'Class;

   type IPhoneCallOriginManagerStatics3_Interface is interface and WinRt.IInspectable_Interface;
   type IPhoneCallOriginManagerStatics3 is access all IPhoneCallOriginManagerStatics3_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type PhoneCallOrigin is new Ada.Finalization.Limited_Controlled with
      record
         m_IPhoneCallOrigin : access Windows.ApplicationModel.Calls.Provider.IPhoneCallOrigin;
      end record;
   type PhoneCallOrigin_Ptr is access all PhoneCallOrigin;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPhoneCallOrigin is interface and WinRt.IInspectable;

      function get_Category
      (
         this : access IPhoneCallOrigin_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Category
      (
         this : access IPhoneCallOrigin_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_CategoryDescription
      (
         this : access IPhoneCallOrigin_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_CategoryDescription
      (
         this : access IPhoneCallOrigin_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Location
      (
         this : access IPhoneCallOrigin_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Location
      (
         this : access IPhoneCallOrigin_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneCallOrigin : aliased WinRt.IID := (543241337, 3833, 17492, (135, 28, 175, 182, 106, 20, 182, 165 ));

   -----------------------------------------------------------------------------
   -- type IPhoneCallOrigin2 is interface and WinRt.IInspectable;

      function get_DisplayName
      (
         this : access IPhoneCallOrigin2_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_DisplayName
      (
         this : access IPhoneCallOrigin2_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneCallOrigin2 : aliased WinRt.IID := (80210304, 39618, 18280, (181, 54, 182, 141, 164, 149, 125, 2 ));

   -----------------------------------------------------------------------------
   -- type IPhoneCallOrigin3 is interface and WinRt.IInspectable;

      function get_DisplayPicture
      (
         this : access IPhoneCallOrigin3_Interface;
         RetVal : access Windows.Storage.IStorageFile
      )
      return WinRt.Hresult is abstract;

      function put_DisplayPicture
      (
         this : access IPhoneCallOrigin3_Interface;
         value : Windows.Storage.IStorageFile
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneCallOrigin3 : aliased WinRt.IID := (1228083124, 53671, 17314, (174, 238, 192, 123, 109, 186, 240, 104 ));

   -----------------------------------------------------------------------------
   -- type IPhoneCallOriginManagerStatics is interface and WinRt.IInspectable;

      function get_IsCurrentAppActiveCallOriginApp
      (
         this : access IPhoneCallOriginManagerStatics_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function ShowPhoneCallOriginSettingsUI
      (
         this : access IPhoneCallOriginManagerStatics_Interface
      )
      return WinRt.Hresult is abstract;

      function SetCallOrigin
      (
         this : access IPhoneCallOriginManagerStatics_Interface;
         requestId : WinRt.Guid;
         callOrigin : Windows.ApplicationModel.Calls.Provider.IPhoneCallOrigin
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneCallOriginManagerStatics : aliased WinRt.IID := (3439090186, 39671, 24905, (57, 208, 224, 118, 252, 206, 19, 149 ));

   -----------------------------------------------------------------------------
   -- type IPhoneCallOriginManagerStatics2 is interface and WinRt.IInspectable;

      function RequestSetAsActiveCallOriginAppAsync
      (
         this : access IPhoneCallOriginManagerStatics2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneCallOriginManagerStatics2 : aliased WinRt.IID := (2348019263, 16628, 17280, (140, 124, 174, 162, 201, 184, 221, 122 ));

   -----------------------------------------------------------------------------
   -- type IPhoneCallOriginManagerStatics3 is interface and WinRt.IInspectable;

      function get_IsSupported
      (
         this : access IPhoneCallOriginManagerStatics3_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IPhoneCallOriginManagerStatics3 : aliased WinRt.IID := (785815396, 42723, 20720, (183, 106, 214, 124, 179, 155, 223, 222 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PhoneCallOrigin

   overriding procedure Initialize (this : in out PhoneCallOrigin);
   overriding procedure Finalize (this : in out PhoneCallOrigin);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PhoneCallOrigin

   function Constructor return PhoneCallOrigin;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PhoneCallOrigin

   function get_Category
   (
      this : in out PhoneCallOrigin
   )
   return WinRt.WString;

   procedure put_Category
   (
      this : in out PhoneCallOrigin;
      value : WinRt.WString
   );

   function get_CategoryDescription
   (
      this : in out PhoneCallOrigin
   )
   return WinRt.WString;

   procedure put_CategoryDescription
   (
      this : in out PhoneCallOrigin;
      value : WinRt.WString
   );

   function get_Location
   (
      this : in out PhoneCallOrigin
   )
   return WinRt.WString;

   procedure put_Location
   (
      this : in out PhoneCallOrigin;
      value : WinRt.WString
   );

   function get_DisplayName
   (
      this : in out PhoneCallOrigin
   )
   return WinRt.WString;

   procedure put_DisplayName
   (
      this : in out PhoneCallOrigin;
      value : WinRt.WString
   );

   function get_DisplayPicture
   (
      this : in out PhoneCallOrigin
   )
   return WinRt.Windows.Storage.StorageFile'Class;

   procedure put_DisplayPicture
   (
      this : in out PhoneCallOrigin;
      value : Windows.Storage.StorageFile'Class
   );

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package PhoneCallOriginManager is

      function get_IsCurrentAppActiveCallOriginApp
      return WinRt.Boolean;

      procedure ShowPhoneCallOriginSettingsUI;

      procedure SetCallOrigin
      (
         requestId : WinRt.Guid;
         callOrigin : Windows.ApplicationModel.Calls.Provider.PhoneCallOrigin'Class
      );

      function get_IsSupported
      return WinRt.Boolean;

      function RequestSetAsActiveCallOriginAppAsync
      return WinRt.Boolean;

   end PhoneCallOriginManager;

end;