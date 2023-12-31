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
with WinRt.Windows.Foundation.Collections;
with WinRt.Windows.System.Diagnostics;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Web.Http.Diagnostics is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for HttpDiagnosticProvider

   procedure Initialize (this : in out HttpDiagnosticProvider) is
   begin
      null;
   end;

   procedure Finalize (this : in out HttpDiagnosticProvider) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IHttpDiagnosticProvider, IHttpDiagnosticProvider_Ptr);
   begin
      if this.m_IHttpDiagnosticProvider /= null then
         if this.m_IHttpDiagnosticProvider.all /= null then
            RefCount := this.m_IHttpDiagnosticProvider.all.Release;
            Free (this.m_IHttpDiagnosticProvider);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for HttpDiagnosticProvider

   function CreateFromProcessDiagnosticInfo
   (
      processDiagnosticInfo : Windows.System.Diagnostics.ProcessDiagnosticInfo'Class
   )
   return WinRt.Windows.Web.Http.Diagnostics.HttpDiagnosticProvider is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Web.Http.Diagnostics.HttpDiagnosticProvider");
      m_Factory        : access WinRt.Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Web.Http.Diagnostics.IHttpDiagnosticProvider;
   begin
      return RetVal : WinRt.Windows.Web.Http.Diagnostics.HttpDiagnosticProvider do
         Hr := RoGetActivationFactory (m_hString, IID_IHttpDiagnosticProviderStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.CreateFromProcessDiagnosticInfo (processDiagnosticInfo.m_IProcessDiagnosticInfo.all, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IHttpDiagnosticProvider := new Windows.Web.Http.Diagnostics.IHttpDiagnosticProvider;
            Retval.m_IHttpDiagnosticProvider.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for HttpDiagnosticProvider

   procedure Start
   (
      this : in out HttpDiagnosticProvider
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IHttpDiagnosticProvider.all.Start;
   end;

   procedure Stop
   (
      this : in out HttpDiagnosticProvider
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IHttpDiagnosticProvider.all.Stop;
   end;

   function add_RequestSent
   (
      this : in out HttpDiagnosticProvider;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IHttpDiagnosticProvider.all.add_RequestSent (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_RequestSent
   (
      this : in out HttpDiagnosticProvider;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IHttpDiagnosticProvider.all.remove_RequestSent (token);
   end;

   function add_ResponseReceived
   (
      this : in out HttpDiagnosticProvider;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IHttpDiagnosticProvider.all.add_ResponseReceived (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_ResponseReceived
   (
      this : in out HttpDiagnosticProvider;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IHttpDiagnosticProvider.all.remove_ResponseReceived (token);
   end;

   function add_RequestResponseCompleted
   (
      this : in out HttpDiagnosticProvider;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IHttpDiagnosticProvider.all.add_RequestResponseCompleted (handler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_RequestResponseCompleted
   (
      this : in out HttpDiagnosticProvider;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IHttpDiagnosticProvider.all.remove_RequestResponseCompleted (token);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for HttpDiagnosticProviderRequestResponseCompletedEventArgs

   procedure Initialize (this : in out HttpDiagnosticProviderRequestResponseCompletedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out HttpDiagnosticProviderRequestResponseCompletedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IHttpDiagnosticProviderRequestResponseCompletedEventArgs, IHttpDiagnosticProviderRequestResponseCompletedEventArgs_Ptr);
   begin
      if this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs /= null then
         if this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs.all /= null then
            RefCount := this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs.all.Release;
            Free (this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for HttpDiagnosticProviderRequestResponseCompletedEventArgs

   function get_ActivityId
   (
      this : in out HttpDiagnosticProviderRequestResponseCompletedEventArgs
   )
   return WinRt.Guid is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Guid;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs.all.get_ActivityId (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Timestamps
   (
      this : in out HttpDiagnosticProviderRequestResponseCompletedEventArgs
   )
   return WinRt.Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseTimestamps'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps;
   begin
      return RetVal : WinRt.Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseTimestamps do
         Hr := this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs.all.get_Timestamps (m_ComRetVal'Access);
         Retval.m_IHttpDiagnosticProviderRequestResponseTimestamps := new Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps;
         Retval.m_IHttpDiagnosticProviderRequestResponseTimestamps.all := m_ComRetVal;
      end return;
   end;

   function get_RequestedUri
   (
      this : in out HttpDiagnosticProviderRequestResponseCompletedEventArgs
   )
   return WinRt.Windows.Foundation.Uri'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.IUriRuntimeClass;
   begin
      return RetVal : WinRt.Windows.Foundation.Uri do
         Hr := this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs.all.get_RequestedUri (m_ComRetVal'Access);
         Retval.m_IUriRuntimeClass := new Windows.Foundation.IUriRuntimeClass;
         Retval.m_IUriRuntimeClass.all := m_ComRetVal;
      end return;
   end;

   function get_ProcessId
   (
      this : in out HttpDiagnosticProviderRequestResponseCompletedEventArgs
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs.all.get_ProcessId (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ThreadId
   (
      this : in out HttpDiagnosticProviderRequestResponseCompletedEventArgs
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs.all.get_ThreadId (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Initiator
   (
      this : in out HttpDiagnosticProviderRequestResponseCompletedEventArgs
   )
   return WinRt.Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs.all.get_Initiator (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_SourceLocations
   (
      this : in out HttpDiagnosticProviderRequestResponseCompletedEventArgs
   )
   return IVectorView_IHttpDiagnosticSourceLocation.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVectorView_IHttpDiagnosticSourceLocation.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseCompletedEventArgs.all.get_SourceLocations (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVectorView_IHttpDiagnosticSourceLocation (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for HttpDiagnosticProviderRequestResponseTimestamps

   procedure Initialize (this : in out HttpDiagnosticProviderRequestResponseTimestamps) is
   begin
      null;
   end;

   procedure Finalize (this : in out HttpDiagnosticProviderRequestResponseTimestamps) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IHttpDiagnosticProviderRequestResponseTimestamps, IHttpDiagnosticProviderRequestResponseTimestamps_Ptr);
   begin
      if this.m_IHttpDiagnosticProviderRequestResponseTimestamps /= null then
         if this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all /= null then
            RefCount := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.Release;
            Free (this.m_IHttpDiagnosticProviderRequestResponseTimestamps);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for HttpDiagnosticProviderRequestResponseTimestamps

   function get_CacheCheckedTimestamp
   (
      this : in out HttpDiagnosticProviderRequestResponseTimestamps
   )
   return IReference_DateTime.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_DateTime.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.get_CacheCheckedTimestamp (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_DateTime (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_ConnectionInitiatedTimestamp
   (
      this : in out HttpDiagnosticProviderRequestResponseTimestamps
   )
   return IReference_DateTime.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_DateTime.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.get_ConnectionInitiatedTimestamp (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_DateTime (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_NameResolvedTimestamp
   (
      this : in out HttpDiagnosticProviderRequestResponseTimestamps
   )
   return IReference_DateTime.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_DateTime.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.get_NameResolvedTimestamp (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_DateTime (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_SslNegotiatedTimestamp
   (
      this : in out HttpDiagnosticProviderRequestResponseTimestamps
   )
   return IReference_DateTime.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_DateTime.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.get_SslNegotiatedTimestamp (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_DateTime (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_ConnectionCompletedTimestamp
   (
      this : in out HttpDiagnosticProviderRequestResponseTimestamps
   )
   return IReference_DateTime.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_DateTime.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.get_ConnectionCompletedTimestamp (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_DateTime (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_RequestSentTimestamp
   (
      this : in out HttpDiagnosticProviderRequestResponseTimestamps
   )
   return IReference_DateTime.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_DateTime.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.get_RequestSentTimestamp (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_DateTime (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_RequestCompletedTimestamp
   (
      this : in out HttpDiagnosticProviderRequestResponseTimestamps
   )
   return IReference_DateTime.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_DateTime.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.get_RequestCompletedTimestamp (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_DateTime (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_ResponseReceivedTimestamp
   (
      this : in out HttpDiagnosticProviderRequestResponseTimestamps
   )
   return IReference_DateTime.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_DateTime.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.get_ResponseReceivedTimestamp (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_DateTime (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_ResponseCompletedTimestamp
   (
      this : in out HttpDiagnosticProviderRequestResponseTimestamps
   )
   return IReference_DateTime.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IReference_DateTime.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestResponseTimestamps.all.get_ResponseCompletedTimestamp (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IReference_DateTime (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for HttpDiagnosticProviderRequestSentEventArgs

   procedure Initialize (this : in out HttpDiagnosticProviderRequestSentEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out HttpDiagnosticProviderRequestSentEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IHttpDiagnosticProviderRequestSentEventArgs, IHttpDiagnosticProviderRequestSentEventArgs_Ptr);
   begin
      if this.m_IHttpDiagnosticProviderRequestSentEventArgs /= null then
         if this.m_IHttpDiagnosticProviderRequestSentEventArgs.all /= null then
            RefCount := this.m_IHttpDiagnosticProviderRequestSentEventArgs.all.Release;
            Free (this.m_IHttpDiagnosticProviderRequestSentEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for HttpDiagnosticProviderRequestSentEventArgs

   function get_Timestamp
   (
      this : in out HttpDiagnosticProviderRequestSentEventArgs
   )
   return WinRt.Windows.Foundation.DateTime is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.DateTime;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestSentEventArgs.all.get_Timestamp (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ActivityId
   (
      this : in out HttpDiagnosticProviderRequestSentEventArgs
   )
   return WinRt.Guid is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Guid;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestSentEventArgs.all.get_ActivityId (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Message
   (
      this : in out HttpDiagnosticProviderRequestSentEventArgs
   )
   return WinRt.Windows.Web.Http.HttpRequestMessage'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Web.Http.IHttpRequestMessage;
   begin
      return RetVal : WinRt.Windows.Web.Http.HttpRequestMessage do
         Hr := this.m_IHttpDiagnosticProviderRequestSentEventArgs.all.get_Message (m_ComRetVal'Access);
         Retval.m_IHttpRequestMessage := new Windows.Web.Http.IHttpRequestMessage;
         Retval.m_IHttpRequestMessage.all := m_ComRetVal;
      end return;
   end;

   function get_ProcessId
   (
      this : in out HttpDiagnosticProviderRequestSentEventArgs
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestSentEventArgs.all.get_ProcessId (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ThreadId
   (
      this : in out HttpDiagnosticProviderRequestSentEventArgs
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestSentEventArgs.all.get_ThreadId (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Initiator
   (
      this : in out HttpDiagnosticProviderRequestSentEventArgs
   )
   return WinRt.Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestSentEventArgs.all.get_Initiator (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_SourceLocations
   (
      this : in out HttpDiagnosticProviderRequestSentEventArgs
   )
   return IVectorView_IHttpDiagnosticSourceLocation.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVectorView_IHttpDiagnosticSourceLocation.Kind;
   begin
      Hr := this.m_IHttpDiagnosticProviderRequestSentEventArgs.all.get_SourceLocations (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVectorView_IHttpDiagnosticSourceLocation (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for HttpDiagnosticProviderResponseReceivedEventArgs

   procedure Initialize (this : in out HttpDiagnosticProviderResponseReceivedEventArgs) is
   begin
      null;
   end;

   procedure Finalize (this : in out HttpDiagnosticProviderResponseReceivedEventArgs) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IHttpDiagnosticProviderResponseReceivedEventArgs, IHttpDiagnosticProviderResponseReceivedEventArgs_Ptr);
   begin
      if this.m_IHttpDiagnosticProviderResponseReceivedEventArgs /= null then
         if this.m_IHttpDiagnosticProviderResponseReceivedEventArgs.all /= null then
            RefCount := this.m_IHttpDiagnosticProviderResponseReceivedEventArgs.all.Release;
            Free (this.m_IHttpDiagnosticProviderResponseReceivedEventArgs);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for HttpDiagnosticProviderResponseReceivedEventArgs

   function get_Timestamp
   (
      this : in out HttpDiagnosticProviderResponseReceivedEventArgs
   )
   return WinRt.Windows.Foundation.DateTime is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.DateTime;
   begin
      Hr := this.m_IHttpDiagnosticProviderResponseReceivedEventArgs.all.get_Timestamp (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ActivityId
   (
      this : in out HttpDiagnosticProviderResponseReceivedEventArgs
   )
   return WinRt.Guid is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Guid;
   begin
      Hr := this.m_IHttpDiagnosticProviderResponseReceivedEventArgs.all.get_ActivityId (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_Message
   (
      this : in out HttpDiagnosticProviderResponseReceivedEventArgs
   )
   return WinRt.Windows.Web.Http.HttpResponseMessage'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Web.Http.IHttpResponseMessage;
   begin
      return RetVal : WinRt.Windows.Web.Http.HttpResponseMessage do
         Hr := this.m_IHttpDiagnosticProviderResponseReceivedEventArgs.all.get_Message (m_ComRetVal'Access);
         Retval.m_IHttpResponseMessage := new Windows.Web.Http.IHttpResponseMessage;
         Retval.m_IHttpResponseMessage.all := m_ComRetVal;
      end return;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for HttpDiagnosticSourceLocation

   procedure Initialize (this : in out HttpDiagnosticSourceLocation) is
   begin
      null;
   end;

   procedure Finalize (this : in out HttpDiagnosticSourceLocation) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IHttpDiagnosticSourceLocation, IHttpDiagnosticSourceLocation_Ptr);
   begin
      if this.m_IHttpDiagnosticSourceLocation /= null then
         if this.m_IHttpDiagnosticSourceLocation.all /= null then
            RefCount := this.m_IHttpDiagnosticSourceLocation.all.Release;
            Free (this.m_IHttpDiagnosticSourceLocation);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for HttpDiagnosticSourceLocation

   function get_SourceUri
   (
      this : in out HttpDiagnosticSourceLocation
   )
   return WinRt.Windows.Foundation.Uri'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.IUriRuntimeClass;
   begin
      return RetVal : WinRt.Windows.Foundation.Uri do
         Hr := this.m_IHttpDiagnosticSourceLocation.all.get_SourceUri (m_ComRetVal'Access);
         Retval.m_IUriRuntimeClass := new Windows.Foundation.IUriRuntimeClass;
         Retval.m_IUriRuntimeClass.all := m_ComRetVal;
      end return;
   end;

   function get_LineNumber
   (
      this : in out HttpDiagnosticSourceLocation
   )
   return WinRt.UInt64 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt64;
   begin
      Hr := this.m_IHttpDiagnosticSourceLocation.all.get_LineNumber (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   function get_ColumnNumber
   (
      this : in out HttpDiagnosticSourceLocation
   )
   return WinRt.UInt64 is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt64;
   begin
      Hr := this.m_IHttpDiagnosticSourceLocation.all.get_ColumnNumber (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

end;
