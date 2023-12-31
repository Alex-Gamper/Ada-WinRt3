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
with WinRt.Windows.ApplicationModel.Contacts;
with WinRt.Windows.Foundation.Collections;
with WinRt.Windows.Storage.Streams;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for QuickLink

   procedure Initialize (this : in out QuickLink) is
   begin
      null;
   end;

   procedure Finalize (this : in out QuickLink) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IQuickLink, IQuickLink_Ptr);
   begin
      if this.m_IQuickLink /= null then
         if this.m_IQuickLink.all /= null then
            RefCount := this.m_IQuickLink.all.Release;
            Free (this.m_IQuickLink);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for QuickLink

   function Constructor return QuickLink is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink");
      m_ComRetVal  : aliased Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink;
   begin
      return RetVal : QuickLink do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IQuickLink := new Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink;
            Retval.m_IQuickLink.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for QuickLink

   function get_Title
   (
      this : in out QuickLink
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IQuickLink.all.get_Title (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure put_Title
   (
      this : in out QuickLink;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_IQuickLink.all.put_Title (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

   function get_Thumbnail
   (
      this : in out QuickLink
   )
   return WinRt.Windows.Storage.Streams.RandomAccessStreamReference'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Storage.Streams.IRandomAccessStreamReference;
   begin
      return RetVal : WinRt.Windows.Storage.Streams.RandomAccessStreamReference do
         Hr := this.m_IQuickLink.all.get_Thumbnail (m_ComRetVal'Access);
         Retval.m_IRandomAccessStreamReference := new Windows.Storage.Streams.IRandomAccessStreamReference;
         Retval.m_IRandomAccessStreamReference.all := m_ComRetVal;
      end return;
   end;

   procedure put_Thumbnail
   (
      this : in out QuickLink;
      value : Windows.Storage.Streams.RandomAccessStreamReference'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IQuickLink.all.put_Thumbnail (value.m_IRandomAccessStreamReference.all);
   end;

   function get_Id
   (
      this : in out QuickLink
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IQuickLink.all.get_Id (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure put_Id
   (
      this : in out QuickLink;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_IQuickLink.all.put_Id (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

   function get_SupportedDataFormats
   (
      this : in out QuickLink
   )
   return IVector_HString.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVector_HString.Kind;
   begin
      Hr := this.m_IQuickLink.all.get_SupportedDataFormats (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVector_HString (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   function get_SupportedFileTypes
   (
      this : in out QuickLink
   )
   return IVector_HString.Kind is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericRetval  : aliased IVector_HString.Kind;
   begin
      Hr := this.m_IQuickLink.all.get_SupportedFileTypes (m_ComRetVal'Access);
      m_GenericRetVal := QInterface_IVector_HString (m_ComRetVal);
      m_RefCount := m_ComRetVal.Release;
      return m_GenericRetVal;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ShareOperation

   procedure Initialize (this : in out ShareOperation) is
   begin
      null;
   end;

   procedure Finalize (this : in out ShareOperation) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IShareOperation, IShareOperation_Ptr);
   begin
      if this.m_IShareOperation /= null then
         if this.m_IShareOperation.all /= null then
            RefCount := this.m_IShareOperation.all.Release;
            Free (this.m_IShareOperation);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ShareOperation

   function get_Data
   (
      this : in out ShareOperation
   )
   return WinRt.Windows.ApplicationModel.DataTransfer.DataPackageView'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.ApplicationModel.DataTransfer.IDataPackageView;
   begin
      return RetVal : WinRt.Windows.ApplicationModel.DataTransfer.DataPackageView do
         Hr := this.m_IShareOperation.all.get_Data (m_ComRetVal'Access);
         Retval.m_IDataPackageView := new Windows.ApplicationModel.DataTransfer.IDataPackageView;
         Retval.m_IDataPackageView.all := m_ComRetVal;
      end return;
   end;

   function get_QuickLinkId
   (
      this : in out ShareOperation
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
   begin
      Hr := this.m_IShareOperation.all.get_QuickLinkId (m_ComRetVal'Access);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure RemoveThisQuickLink
   (
      this : in out ShareOperation
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IShareOperation.all.RemoveThisQuickLink;
   end;

   procedure ReportStarted
   (
      this : in out ShareOperation
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IShareOperation.all.ReportStarted;
   end;

   procedure ReportDataRetrieved
   (
      this : in out ShareOperation
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IShareOperation.all.ReportDataRetrieved;
   end;

   procedure ReportSubmittedBackgroundTask
   (
      this : in out ShareOperation
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IShareOperation.all.ReportSubmittedBackgroundTask;
   end;

   procedure ReportCompleted
   (
      this : in out ShareOperation;
      quicklink_p : Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IShareOperation.all.ReportCompleted (quicklink_p.m_IQuickLink.all);
   end;

   procedure ReportCompleted
   (
      this : in out ShareOperation
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IShareOperation.all.ReportCompleted;
   end;

   procedure ReportError
   (
      this : in out ShareOperation;
      value : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_value : WinRt.HString := To_HString (value);
   begin
      Hr := this.m_IShareOperation.all.ReportError (HStr_value);
      Hr := WindowsDeleteString (HStr_value);
   end;

   procedure DismissUI
   (
      this : in out ShareOperation
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation_Interface, WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation2, WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget.IID_IShareOperation2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IShareOperation.all);
      Hr := m_Interface.DismissUI;
      m_RefCount := m_Interface.Release;
   end;

   function get_Contacts
   (
      this : in out ShareOperation
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation3 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation_Interface, WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation3, WinRt.Windows.ApplicationModel.DataTransfer.ShareTarget.IID_IShareOperation3'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IShareOperation.all);
      Hr := m_Interface.get_Contacts (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

end;
