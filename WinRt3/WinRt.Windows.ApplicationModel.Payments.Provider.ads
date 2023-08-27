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
package WinRt.Windows.ApplicationModel.Payments.Provider is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPaymentAppCanMakePaymentTriggerDetails_Interface is interface and WinRt.IInspectable_Interface;
   type IPaymentAppCanMakePaymentTriggerDetails is access all IPaymentAppCanMakePaymentTriggerDetails_Interface'Class;
   type IPaymentAppCanMakePaymentTriggerDetails_Ptr is access all IPaymentAppCanMakePaymentTriggerDetails;

   type IPaymentAppManager_Interface is interface and WinRt.IInspectable_Interface;
   type IPaymentAppManager is access all IPaymentAppManager_Interface'Class;
   type IPaymentAppManager_Ptr is access all IPaymentAppManager;

   type IPaymentAppManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPaymentAppManagerStatics is access all IPaymentAppManagerStatics_Interface'Class;

   type IPaymentTransaction_Interface is interface and WinRt.IInspectable_Interface;
   type IPaymentTransaction is access all IPaymentTransaction_Interface'Class;
   type IPaymentTransaction_Ptr is access all IPaymentTransaction;

   type IPaymentTransactionAcceptResult_Interface is interface and WinRt.IInspectable_Interface;
   type IPaymentTransactionAcceptResult is access all IPaymentTransactionAcceptResult_Interface'Class;
   type IPaymentTransactionAcceptResult_Ptr is access all IPaymentTransactionAcceptResult;

   type IPaymentTransactionStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPaymentTransactionStatics is access all IPaymentTransactionStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type PaymentAppCanMakePaymentTriggerDetails is new Ada.Finalization.Limited_Controlled with
      record
         m_IPaymentAppCanMakePaymentTriggerDetails : access Windows.ApplicationModel.Payments.Provider.IPaymentAppCanMakePaymentTriggerDetails;
      end record;
   type PaymentAppCanMakePaymentTriggerDetails_Ptr is access all PaymentAppCanMakePaymentTriggerDetails;

   type PaymentAppManager is new Ada.Finalization.Limited_Controlled with
      record
         m_IPaymentAppManager : access Windows.ApplicationModel.Payments.Provider.IPaymentAppManager;
      end record;
   type PaymentAppManager_Ptr is access all PaymentAppManager;

   type PaymentTransaction is new Ada.Finalization.Limited_Controlled with
      record
         m_IPaymentTransaction : access Windows.ApplicationModel.Payments.Provider.IPaymentTransaction;
      end record;
   type PaymentTransaction_Ptr is access all PaymentTransaction;

   type PaymentTransactionAcceptResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IPaymentTransactionAcceptResult : access Windows.ApplicationModel.Payments.Provider.IPaymentTransactionAcceptResult;
      end record;
   type PaymentTransactionAcceptResult_Ptr is access all PaymentTransactionAcceptResult;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPaymentAppCanMakePaymentTriggerDetails is interface and WinRt.IInspectable;

      function get_Request
      (
         this : access IPaymentAppCanMakePaymentTriggerDetails_Interface;
         RetVal : access Windows.ApplicationModel.Payments.IPaymentRequest
      )
      return WinRt.Hresult is abstract;

      function ReportCanMakePaymentResult
      (
         this : access IPaymentAppCanMakePaymentTriggerDetails_Interface;
         value : Windows.ApplicationModel.Payments.IPaymentCanMakePaymentResult
      )
      return WinRt.Hresult is abstract;

      IID_IPaymentAppCanMakePaymentTriggerDetails : aliased WinRt.IID := (216138224, 35731, 20150, (140, 70, 46, 74, 108, 106, 38, 246 ));

   -----------------------------------------------------------------------------
   -- type IPaymentAppManager is interface and WinRt.IInspectable;

      function RegisterAsync
      (
         this : access IPaymentAppManager_Interface;
         supportedPaymentMethodIds : GenericObject;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function UnregisterAsync
      (
         this : access IPaymentAppManager_Interface;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_IPaymentAppManager : aliased WinRt.IID := (239577683, 34081, 18793, (169, 87, 223, 37, 56, 163, 169, 143 ));

   -----------------------------------------------------------------------------
   -- type IPaymentAppManagerStatics is interface and WinRt.IInspectable;

      function get_Current
      (
         this : access IPaymentAppManagerStatics_Interface;
         RetVal : access Windows.ApplicationModel.Payments.Provider.IPaymentAppManager
      )
      return WinRt.Hresult is abstract;

      IID_IPaymentAppManagerStatics : aliased WinRt.IID := (2738990120, 64649, 17414, (180, 217, 52, 231, 254, 121, 223, 182 ));

   -----------------------------------------------------------------------------
   -- type IPaymentTransaction is interface and WinRt.IInspectable;

      function get_PaymentRequest
      (
         this : access IPaymentTransaction_Interface;
         RetVal : access Windows.ApplicationModel.Payments.IPaymentRequest
      )
      return WinRt.Hresult is abstract;

      function get_PayerEmail
      (
         this : access IPaymentTransaction_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_PayerEmail
      (
         this : access IPaymentTransaction_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_PayerName
      (
         this : access IPaymentTransaction_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_PayerName
      (
         this : access IPaymentTransaction_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_PayerPhoneNumber
      (
         this : access IPaymentTransaction_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_PayerPhoneNumber
      (
         this : access IPaymentTransaction_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function UpdateShippingAddressAsync
      (
         this : access IPaymentTransaction_Interface;
         shippingAddress : Windows.ApplicationModel.Payments.IPaymentAddress;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function UpdateSelectedShippingOptionAsync
      (
         this : access IPaymentTransaction_Interface;
         selectedShippingOption : Windows.ApplicationModel.Payments.IPaymentShippingOption;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function AcceptAsync
      (
         this : access IPaymentTransaction_Interface;
         paymentToken : Windows.ApplicationModel.Payments.IPaymentToken;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function Reject
      (
         this : access IPaymentTransaction_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IPaymentTransaction : aliased WinRt.IID := (1649941920, 9893, 20123, (166, 235, 102, 96, 108, 240, 1, 211 ));

   -----------------------------------------------------------------------------
   -- type IPaymentTransactionAcceptResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IPaymentTransactionAcceptResult_Interface;
         RetVal : access Windows.ApplicationModel.Payments.PaymentRequestCompletionStatus
      )
      return WinRt.Hresult is abstract;

      IID_IPaymentTransactionAcceptResult : aliased WinRt.IID := (101593718, 54028, 18455, (149, 162, 223, 122, 233, 39, 59, 86 ));

   -----------------------------------------------------------------------------
   -- type IPaymentTransactionStatics is interface and WinRt.IInspectable;

      function FromIdAsync
      (
         this : access IPaymentTransactionStatics_Interface;
         id : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPaymentTransactionStatics : aliased WinRt.IID := (2372114256, 60938, 19957, (155, 30, 28, 15, 158, 197, 152, 129 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PaymentAppCanMakePaymentTriggerDetails

   overriding procedure Initialize (this : in out PaymentAppCanMakePaymentTriggerDetails);
   overriding procedure Finalize (this : in out PaymentAppCanMakePaymentTriggerDetails);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PaymentAppCanMakePaymentTriggerDetails

   function get_Request
   (
      this : in out PaymentAppCanMakePaymentTriggerDetails
   )
   return WinRt.Windows.ApplicationModel.Payments.PaymentRequest'Class;

   procedure ReportCanMakePaymentResult
   (
      this : in out PaymentAppCanMakePaymentTriggerDetails;
      value : Windows.ApplicationModel.Payments.PaymentCanMakePaymentResult'Class
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PaymentAppManager

   overriding procedure Initialize (this : in out PaymentAppManager);
   overriding procedure Finalize (this : in out PaymentAppManager);

   -----------------------------------------------------------------------------
   -- Static Interfaces for PaymentAppManager

   function get_Current
   return WinRt.Windows.ApplicationModel.Payments.Provider.PaymentAppManager;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PaymentAppManager

   procedure RegisterAsync
   (
      this : in out PaymentAppManager;
      supportedPaymentMethodIds : GenericObject
   );

   procedure UnregisterAsync
   (
      this : in out PaymentAppManager
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PaymentTransaction

   overriding procedure Initialize (this : in out PaymentTransaction);
   overriding procedure Finalize (this : in out PaymentTransaction);

   -----------------------------------------------------------------------------
   -- Static Interfaces for PaymentTransaction

   function FromIdAsync
   (
      id : WinRt.WString
   )
   return WinRt.Windows.ApplicationModel.Payments.Provider.PaymentTransaction;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PaymentTransaction

   function get_PaymentRequest
   (
      this : in out PaymentTransaction
   )
   return WinRt.Windows.ApplicationModel.Payments.PaymentRequest'Class;

   function get_PayerEmail
   (
      this : in out PaymentTransaction
   )
   return WinRt.WString;

   procedure put_PayerEmail
   (
      this : in out PaymentTransaction;
      value : WinRt.WString
   );

   function get_PayerName
   (
      this : in out PaymentTransaction
   )
   return WinRt.WString;

   procedure put_PayerName
   (
      this : in out PaymentTransaction;
      value : WinRt.WString
   );

   function get_PayerPhoneNumber
   (
      this : in out PaymentTransaction
   )
   return WinRt.WString;

   procedure put_PayerPhoneNumber
   (
      this : in out PaymentTransaction;
      value : WinRt.WString
   );

   function UpdateShippingAddressAsync
   (
      this : in out PaymentTransaction;
      shippingAddress : Windows.ApplicationModel.Payments.PaymentAddress'Class
   )
   return WinRt.Windows.ApplicationModel.Payments.PaymentRequestChangedResult'Class;

   function UpdateSelectedShippingOptionAsync
   (
      this : in out PaymentTransaction;
      selectedShippingOption : Windows.ApplicationModel.Payments.PaymentShippingOption'Class
   )
   return WinRt.Windows.ApplicationModel.Payments.PaymentRequestChangedResult'Class;

   function AcceptAsync
   (
      this : in out PaymentTransaction;
      paymentToken : Windows.ApplicationModel.Payments.PaymentToken'Class
   )
   return WinRt.Windows.ApplicationModel.Payments.Provider.PaymentTransactionAcceptResult'Class;

   procedure Reject
   (
      this : in out PaymentTransaction
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PaymentTransactionAcceptResult

   overriding procedure Initialize (this : in out PaymentTransactionAcceptResult);
   overriding procedure Finalize (this : in out PaymentTransactionAcceptResult);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PaymentTransactionAcceptResult

   function get_Status
   (
      this : in out PaymentTransactionAcceptResult
   )
   return WinRt.Windows.ApplicationModel.Payments.PaymentRequestCompletionStatus;

end;