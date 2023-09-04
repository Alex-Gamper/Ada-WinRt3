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
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IExtendedExecutionForegroundRevokedEventArgs_Interface is interface and WinRt.IInspectable_Interface;
   type IExtendedExecutionForegroundRevokedEventArgs is access IExtendedExecutionForegroundRevokedEventArgs_Interface'Class;
   type IExtendedExecutionForegroundRevokedEventArgs_Ptr is access all IExtendedExecutionForegroundRevokedEventArgs;

   type IExtendedExecutionForegroundSession_Interface is interface and WinRt.IInspectable_Interface;
   type IExtendedExecutionForegroundSession is access IExtendedExecutionForegroundSession_Interface'Class;
   type IExtendedExecutionForegroundSession_Ptr is access all IExtendedExecutionForegroundSession;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type ExtendedExecutionForegroundRevokedEventArgs is new Ada.Finalization.Limited_Controlled with
      record
         m_IExtendedExecutionForegroundRevokedEventArgs : access Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundRevokedEventArgs;
      end record;
   type ExtendedExecutionForegroundRevokedEventArgs_Ptr is access all ExtendedExecutionForegroundRevokedEventArgs;

   type ExtendedExecutionForegroundSession is new Ada.Finalization.Limited_Controlled with
      record
         m_IExtendedExecutionForegroundSession : access Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession;
      end record;
   type ExtendedExecutionForegroundSession_Ptr is access all ExtendedExecutionForegroundSession;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type ExtendedExecutionForegroundReason is (
      Unspecified_e,
      SavingData_e,
      BackgroundAudio_e,
      Unconstrained_e
   );
   for ExtendedExecutionForegroundReason use (
      Unspecified_e => 0,
      SavingData_e => 1,
      BackgroundAudio_e => 2,
      Unconstrained_e => 3
   );
   type ExtendedExecutionForegroundReason_Ptr is access all ExtendedExecutionForegroundReason;

   type ExtendedExecutionForegroundResult is (
      Allowed_e,
      Denied_e
   );
   for ExtendedExecutionForegroundResult use (
      Allowed_e => 0,
      Denied_e => 1
   );
   type ExtendedExecutionForegroundResult_Ptr is access all ExtendedExecutionForegroundResult;

   type ExtendedExecutionForegroundRevokedReason is (
      Resumed_e,
      SystemPolicy_e
   );
   for ExtendedExecutionForegroundRevokedReason use (
      Resumed_e => 0,
      SystemPolicy_e => 1
   );
   type ExtendedExecutionForegroundRevokedReason_Ptr is access all ExtendedExecutionForegroundRevokedReason;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IExtendedExecutionForegroundRevokedEventArgs is interface and WinRt.IInspectable;

      function get_Reason
      (
         this : access IExtendedExecutionForegroundRevokedEventArgs_Interface;
         RetVal : access Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedReason
      )
      return WinRt.Hresult is abstract;

      IID_IExtendedExecutionForegroundRevokedEventArgs : aliased WinRt.IID := (2960972096, 38231, 44708, (44, 153, 189, 213, 109, 155, 228, 97 ));

   -----------------------------------------------------------------------------
   -- type IExtendedExecutionForegroundSession is interface and WinRt.IInspectable;

      function get_Description
      (
         this : access IExtendedExecutionForegroundSession_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_Description
      (
         this : access IExtendedExecutionForegroundSession_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function add_Revoked
      (
         this : access IExtendedExecutionForegroundSession_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_Revoked
      (
         this : access IExtendedExecutionForegroundSession_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function RequestExtensionAsync
      (
         this : access IExtendedExecutionForegroundSession_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function get_Reason
      (
         this : access IExtendedExecutionForegroundSession_Interface;
         RetVal : access Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason
      )
      return WinRt.Hresult is abstract;

      function put_Reason
      (
         this : access IExtendedExecutionForegroundSession_Interface;
         value : Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason
      )
      return WinRt.Hresult is abstract;

      IID_IExtendedExecutionForegroundSession : aliased WinRt.IID := (4227088609, 40208, 16897, (176, 30, 200, 50, 117, 41, 111, 46 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ExtendedExecutionForegroundRevokedEventArgs

   overriding procedure Initialize (this : in out ExtendedExecutionForegroundRevokedEventArgs);
   overriding procedure Finalize (this : in out ExtendedExecutionForegroundRevokedEventArgs);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ExtendedExecutionForegroundRevokedEventArgs

   function get_Reason
   (
      this : in out ExtendedExecutionForegroundRevokedEventArgs
   )
   return WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedReason;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ExtendedExecutionForegroundSession

   overriding procedure Initialize (this : in out ExtendedExecutionForegroundSession);
   overriding procedure Finalize (this : in out ExtendedExecutionForegroundSession);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for ExtendedExecutionForegroundSession

   function Constructor return ExtendedExecutionForegroundSession;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ExtendedExecutionForegroundSession

   function get_Description
   (
      this : in out ExtendedExecutionForegroundSession
   )
   return WinRt.WString;

   procedure put_Description
   (
      this : in out ExtendedExecutionForegroundSession;
      value : WinRt.WString
   );

   function add_Revoked
   (
      this : in out ExtendedExecutionForegroundSession;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_Revoked
   (
      this : in out ExtendedExecutionForegroundSession;
      token : Windows.Foundation.EventRegistrationToken
   );

   function RequestExtensionAsync
   (
      this : in out ExtendedExecutionForegroundSession
   )
   return WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult;

   function get_Reason
   (
      this : in out ExtendedExecutionForegroundSession
   )
   return WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason;

   procedure put_Reason
   (
      this : in out ExtendedExecutionForegroundSession;
      value : Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason
   );

   procedure Close
   (
      this : in out ExtendedExecutionForegroundSession
   );

end;
