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
with WinRt.Windows.Foundation; use WinRt.Windows.Foundation;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground is

   package IAsyncOperation_ExtendedExecutionForegroundResult is new WinRt.Windows.Foundation.IAsyncOperation (WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult);
   package AsyncOperationCompletedHandler_ExtendedExecutionForegroundResult is new WinRt.Windows.Foundation.AsyncOperationCompletedHandler (WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult);

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ExtendedExecutionForegroundRevokedEventArgs

   procedure Initialize (this : in out ExtendedExecutionForegroundRevokedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out ExtendedExecutionForegroundRevokedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IExtendedExecutionForegroundRevokedEventArgs, IExtendedExecutionForegroundRevokedEventArgs_Ptr);
   begin
      if this.m_IExtendedExecutionForegroundRevokedEventArgs /= null then
         if this.m_IExtendedExecutionForegroundRevokedEventArgs.all /= null then
            RefCount := this.m_IExtendedExecutionForegroundRevokedEventArgs.all.Release;
            Free (this.m_IExtendedExecutionForegroundRevokedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ExtendedExecutionForegroundRevokedEventArgs

   function get_Reason
   (
      this : in out ExtendedExecutionForegroundRevokedEventArgs
   )
   return WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedReason is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedReason;
   begin
      Hr := this.m_IExtendedExecutionForegroundRevokedEventArgs.all.get_Reason (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ExtendedExecutionForegroundSession

   procedure Initialize (this : in out ExtendedExecutionForegroundSession) is
   begin
      null;
   end;

   procedure Finalize (this : in out ExtendedExecutionForegroundSession) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IExtendedExecutionForegroundSession, IExtendedExecutionForegroundSession_Ptr);
   begin
      if this.m_IExtendedExecutionForegroundSession /= null then
         if this.m_IExtendedExecutionForegroundSession.all /= null then
            RefCount := this.m_IExtendedExecutionForegroundSession.all.Release;
            Free (this.m_IExtendedExecutionForegroundSession);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for ExtendedExecutionForegroundSession

   function Constructor return ExtendedExecutionForegroundSession is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundSession");
      m_ComRetVal  : aliased Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession;
   begin
      return RetVal : ExtendedExecutionForegroundSession do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IExtendedExecutionForegroundSession := new Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession;
            Retval.m_IExtendedExecutionForegroundSession.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ExtendedExecutionForegroundSession

   function get_Description
   (
      this : in out ExtendedExecutionForegroundSession
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IExtendedExecutionForegroundSession.all.get_Description (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure put_Description
   (
      this : in out ExtendedExecutionForegroundSession;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_IExtendedExecutionForegroundSession.all.put_Description (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

   function add_Revoked
   (
      this : in out ExtendedExecutionForegroundSession;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IExtendedExecutionForegroundSession.all.add_Revoked (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_Revoked
   (
      this : in out ExtendedExecutionForegroundSession;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IExtendedExecutionForegroundSession.all.remove_Revoked (token);
   end;

   function RequestExtensionAsync
   (
      this : in out ExtendedExecutionForegroundSession
   )
   return WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_Temp           : WinRt.Int32 := 0;
      m_Completed      : WinRt.UInt32 := 0;
      m_Captured       : WinRt.UInt32 := 0;
      m_Compare        : constant WinRt.UInt32 := 0;

      use type WinRt.Windows.Foundation.AsyncStatus;
      use type IAsyncOperation_ExtendedExecutionForegroundResult.Kind;

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus);

      m_AsyncOperation : aliased IAsyncOperation_ExtendedExecutionForegroundResult.Kind;
      m_AsyncStatus    : aliased WinRt.Windows.Foundation.AsyncStatus;
      m_ComRetVal      : aliased WinRt.GenericObject := null;
      m_RetVal         : aliased WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult;
      m_IID            : aliased WinRt.IID := (2978914319, 35872, 23234, (146, 70, 62, 244, 5, 39, 31, 26 )); -- Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult;
      m_HandlerIID     : aliased WinRt.IID := (132242433, 6330, 22890, (183, 69, 121, 249, 205, 228, 76, 204 ));
      m_Handler        : AsyncOperationCompletedHandler_ExtendedExecutionForegroundResult.Kind := new AsyncOperationCompletedHandler_ExtendedExecutionForegroundResult.Kind_Delegate'(IAsyncOperation_Callback'Access, 1, m_HandlerIID'Unchecked_Access);

      function QI is new Generic_QueryInterface (GenericObject_Interface, IAsyncOperation_ExtendedExecutionForegroundResult.Kind, m_IID'Unchecked_Access);
      function Convert is new Ada.Unchecked_Conversion (AsyncOperationCompletedHandler_ExtendedExecutionForegroundResult.Kind, GenericObject);
      procedure Free is new Ada.Unchecked_Deallocation (AsyncOperationCompletedHandler_ExtendedExecutionForegroundResult.Kind_Delegate, AsyncOperationCompletedHandler_ExtendedExecutionForegroundResult.Kind);

      procedure IAsyncOperation_Callback (asyncInfo : WinRt.GenericObject; asyncStatus: WinRt.Windows.Foundation.AsyncStatus) is
         Hr        : WinRt.HResult := 0;
      begin
         if asyncStatus = Completed_e then
            m_AsyncStatus := AsyncStatus;
         end if;
         m_Completed := 1;
         WakeByAddressSingle (m_Completed'Address);
      end;

   begin
      Hr := this.m_IExtendedExecutionForegroundSession.all.RequestExtensionAsync (m_ComRetVal'Access);
      if Hr = S_OK then
         m_AsyncOperation := QI (m_ComRetVal);
         m_RefCount := m_ComRetVal.Release;
         if m_AsyncOperation /= null then
            Hr := m_AsyncOperation.Put_Completed (Convert (m_Handler));
            while m_Captured = m_Compare loop
               m_Temp := WaitOnAddress (m_Completed'Address, m_Compare'Address, 4, 4294967295);
               m_Captured := m_Completed;
            end loop;
            if m_AsyncStatus = Completed_e then
               Hr := m_AsyncOperation.GetResults (m_RetVal'Access);
            end if;
            m_RefCount := m_AsyncOperation.Release;
            m_RefCount := m_Handler.Release;
            if m_RefCount = 0 then
               Free (m_Handler);
            end if;
         end if;
      end if;
      return m_RetVal;
   end;

   function get_Reason
   (
      this : in out ExtendedExecutionForegroundSession
   )
   return WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason;
   begin
      Hr := this.m_IExtendedExecutionForegroundSession.all.get_Reason (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_Reason
   (
      this : in out ExtendedExecutionForegroundSession;
      value : Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IExtendedExecutionForegroundSession.all.put_Reason (value);
   end;

   procedure Close
   (
      this : in out ExtendedExecutionForegroundSession
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Foundation.IClosable := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession_Interface, WinRt.Windows.Foundation.IClosable, WinRt.Windows.Foundation.IID_IClosable'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IExtendedExecutionForegroundSession.all);
      Hr := m_Interface.Close;
      m_RefCount := m_Interface.Release;
   end;

end;
