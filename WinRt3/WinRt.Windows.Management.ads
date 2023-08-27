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
package WinRt.Windows.Management is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IMdmAlert_Interface is interface and WinRt.IInspectable_Interface;
   type IMdmAlert is access all IMdmAlert_Interface'Class;
   type IMdmAlert_Ptr is access all IMdmAlert;

   type IMdmSession_Interface is interface and WinRt.IInspectable_Interface;
   type IMdmSession is access all IMdmSession_Interface'Class;
   type IMdmSession_Ptr is access all IMdmSession;

   type IMdmSessionManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IMdmSessionManagerStatics is access all IMdmSessionManagerStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type MdmAlert is new Ada.Finalization.Limited_Controlled with
      record
         m_IMdmAlert : access Windows.Management.IMdmAlert;
      end record;
   type MdmAlert_Ptr is access all MdmAlert;

   type MdmSession is new Ada.Finalization.Limited_Controlled with
      record
         m_IMdmSession : access Windows.Management.IMdmSession;
      end record;
   type MdmSession_Ptr is access all MdmSession;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type MdmAlertDataType is (
      String_e,
      Base64_e,
      Boolean_e,
      Integer_e
   );
   for MdmAlertDataType use (
      String_e => 0,
      Base64_e => 1,
      Boolean_e => 2,
      Integer_e => 3
   );
   type MdmAlertDataType_Ptr is access all MdmAlertDataType;

   type MdmAlertMark is (
      None_e,
      Fatal_e,
      Critical_e,
      Warning_e,
      Informational_e
   );
   for MdmAlertMark use (
      None_e => 0,
      Fatal_e => 1,
      Critical_e => 2,
      Warning_e => 3,
      Informational_e => 4
   );
   type MdmAlertMark_Ptr is access all MdmAlertMark;

   type MdmSessionState is (
      NotStarted_e,
      Starting_e,
      Connecting_e,
      Communicating_e,
      AlertStatusAvailable_e,
      Retrying_e,
      Completed_e
   );
   for MdmSessionState use (
      NotStarted_e => 0,
      Starting_e => 1,
      Connecting_e => 2,
      Communicating_e => 3,
      AlertStatusAvailable_e => 4,
      Retrying_e => 5,
      Completed_e => 6
   );
   type MdmSessionState_Ptr is access all MdmSessionState;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IVectorView_IMdmAlert is new WinRt.Windows.Foundation.Collections.IVectorView (WinRt.Windows.Management.IMdmAlert);
   IID_IVectorView_IMdmAlert : aliased WinRt.IID := (2338063432, 60555, 22457, (162, 98, 70, 63, 109, 220, 156, 118 ));
   function QInterface_IVectorView_IMdmAlert is new Generic_QueryInterface (GenericObject_Interface, IVectorView_IMdmAlert.Kind, IID_IVectorView_IMdmAlert'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IMdmAlert is interface and WinRt.IInspectable;

      function get_Data
      (
         this : access IMdmAlert_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Data
      (
         this : access IMdmAlert_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Format
      (
         this : access IMdmAlert_Interface;
         RetVal : access Windows.Management.MdmAlertDataType
      )
      return WinRt.Hresult is abstract;

      function put_Format
      (
         this : access IMdmAlert_Interface;
         value : Windows.Management.MdmAlertDataType
      )
      return WinRt.Hresult is abstract;

      function get_Mark
      (
         this : access IMdmAlert_Interface;
         RetVal : access Windows.Management.MdmAlertMark
      )
      return WinRt.Hresult is abstract;

      function put_Mark
      (
         this : access IMdmAlert_Interface;
         value : Windows.Management.MdmAlertMark
      )
      return WinRt.Hresult is abstract;

      function get_Source
      (
         this : access IMdmAlert_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Source
      (
         this : access IMdmAlert_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Status
      (
         this : access IMdmAlert_Interface;
         RetVal : access WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function get_Target
      (
         this : access IMdmAlert_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Target
      (
         this : access IMdmAlert_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_Type
      (
         this : access IMdmAlert_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Type
      (
         this : access IMdmAlert_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      IID_IMdmAlert : aliased WinRt.IID := (2969289511, 10433, 19282, (165, 72, 197, 128, 124, 175, 112, 182 ));

   -----------------------------------------------------------------------------
   -- type IMdmSession is interface and WinRt.IInspectable;

      function get_Alerts
      (
         this : access IMdmSession_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_ExtendedError
      (
         this : access IMdmSession_Interface;
         RetVal : access Windows.Foundation.HResult
      )
      return WinRt.Hresult is abstract;

      function get_Id
      (
         this : access IMdmSession_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_State
      (
         this : access IMdmSession_Interface;
         RetVal : access Windows.Management.MdmSessionState
      )
      return WinRt.Hresult is abstract;

      function AttachAsync
      (
         this : access IMdmSession_Interface;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function Delete
      (
         this : access IMdmSession_Interface
      )
      return WinRt.Hresult is abstract;

      function StartAsync
      (
         this : access IMdmSession_Interface;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      function StartAsync
      (
         this : access IMdmSession_Interface;
         alerts : GenericObject;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_IMdmSession : aliased WinRt.IID := (4270403916, 36708, 18327, (169, 215, 157, 136, 248, 106, 225, 102 ));

   -----------------------------------------------------------------------------
   -- type IMdmSessionManagerStatics is interface and WinRt.IInspectable;

      function get_SessionIds
      (
         this : access IMdmSessionManagerStatics_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function TryCreateSession
      (
         this : access IMdmSessionManagerStatics_Interface;
         RetVal : access Windows.Management.IMdmSession
      )
      return WinRt.Hresult is abstract;

      function DeleteSessionById
      (
         this : access IMdmSessionManagerStatics_Interface;
         sessionId : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetSessionById
      (
         this : access IMdmSessionManagerStatics_Interface;
         sessionId : WinRt.HString;
         RetVal : access Windows.Management.IMdmSession
      )
      return WinRt.Hresult is abstract;

      IID_IMdmSessionManagerStatics : aliased WinRt.IID := (3477789017, 63301, 19321, (155, 92, 222, 11, 248, 239, 228, 75 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for MdmAlert

   overriding procedure Initialize (this : in out MdmAlert);
   overriding procedure Finalize (this : in out MdmAlert);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for MdmAlert

   function Constructor return MdmAlert;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for MdmAlert

   function get_Data
   (
      this : in out MdmAlert
   )
   return WinRt.WString;

   procedure put_Data
   (
      this : in out MdmAlert;
      value : WinRt.WString
   );

   function get_Format
   (
      this : in out MdmAlert
   )
   return WinRt.Windows.Management.MdmAlertDataType;

   procedure put_Format
   (
      this : in out MdmAlert;
      value : Windows.Management.MdmAlertDataType
   );

   function get_Mark
   (
      this : in out MdmAlert
   )
   return WinRt.Windows.Management.MdmAlertMark;

   procedure put_Mark
   (
      this : in out MdmAlert;
      value : Windows.Management.MdmAlertMark
   );

   function get_Source
   (
      this : in out MdmAlert
   )
   return WinRt.WString;

   procedure put_Source
   (
      this : in out MdmAlert;
      value : WinRt.WString
   );

   function get_Status
   (
      this : in out MdmAlert
   )
   return WinRt.UInt32;

   function get_Target
   (
      this : in out MdmAlert
   )
   return WinRt.WString;

   procedure put_Target
   (
      this : in out MdmAlert;
      value : WinRt.WString
   );

   function get_Type
   (
      this : in out MdmAlert
   )
   return WinRt.WString;

   procedure put_Type
   (
      this : in out MdmAlert;
      value : WinRt.WString
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for MdmSession

   overriding procedure Initialize (this : in out MdmSession);
   overriding procedure Finalize (this : in out MdmSession);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for MdmSession

   function get_Alerts
   (
      this : in out MdmSession
   )
   return IVectorView_IMdmAlert.Kind;

   function get_ExtendedError
   (
      this : in out MdmSession
   )
   return WinRt.Windows.Foundation.HResult;

   function get_Id
   (
      this : in out MdmSession
   )
   return WinRt.WString;

   function get_State
   (
      this : in out MdmSession
   )
   return WinRt.Windows.Management.MdmSessionState;

   procedure AttachAsync
   (
      this : in out MdmSession
   );

   procedure Delete
   (
      this : in out MdmSession
   );

   procedure StartAsync
   (
      this : in out MdmSession
   );

   procedure StartAsync
   (
      this : in out MdmSession;
      alerts : GenericObject
   );

   -----------------------------------------------------------------------------
   -- Static RuntimeClass
   package MdmSessionManager is

      function get_SessionIds
      return WinRt.GenericObject;

      function TryCreateSession
      return WinRt.Windows.Management.MdmSession;

      procedure DeleteSessionById
      (
         sessionId : WinRt.WString
      );

      function GetSessionById
      (
         sessionId : WinRt.WString
      )
      return WinRt.Windows.Management.MdmSession;

   end MdmSessionManager;

end;
