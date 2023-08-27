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
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Foundation.Collections is

   package IObservableMap_HString_IInspectable is new WinRt.Windows.Foundation.Collections.IObservableMap (WinRt.HString, WinRt.IInspectable);
   package IMap_HString_IInspectable is new WinRt.Windows.Foundation.Collections.IMap (WinRt.HString, WinRt.IInspectable);
   package IMap_HString_HString is new WinRt.Windows.Foundation.Collections.IMap (WinRt.HString, WinRt.HString);
   package IObservableMap_HString_HString is new WinRt.Windows.Foundation.Collections.IObservableMap (WinRt.HString, WinRt.HString);
   --------------------------------------------------------------------------------
   package body MapChangedEventHandler is

      function Invoke
      (
         this : access Kind_Delegate;
         sender : GenericObject;
         event : GenericObject
      )
      return WinRt.Hresult is
         Hr : WinRt.HResult := S_OK;
      begin
         this.Callback (sender, event);
         return Hr;
      end;

   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PropertySet

   procedure Initialize (this : in out PropertySet) is
   begin
      null;
   end;

   procedure Finalize (this : in out PropertySet) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPropertySet, IPropertySet_Ptr);
   begin
      if this.m_IPropertySet /= null then
         if this.m_IPropertySet.all /= null then
            RefCount := this.m_IPropertySet.all.Release;
            Free (this.m_IPropertySet);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for PropertySet

   function Constructor return PropertySet is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Foundation.Collections.PropertySet");
      m_ComRetVal  : aliased Windows.Foundation.Collections.IPropertySet;
   begin
      return RetVal : PropertySet do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IPropertySet := new Windows.Foundation.Collections.IPropertySet;
            Retval.m_IPropertySet.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PropertySet

   -- Generic Interface Windows.Foundation.Collections.IObservableMap`2<System.String,System.Object>
   function add_MapChanged
   (
      this : in out PropertySet;
      vhnd : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IObservableMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
      m_GenericIID     : aliased WinRt.IID := (594193565, 64274, 23629, (164, 28, 158, 68, 95, 180, 215, 236 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IObservableMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.add_MapChanged (vhnd, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   procedure remove_MapChanged
   (
      this : in out PropertySet;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IObservableMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_GenericIID     : aliased WinRt.IID := (594193565, 64274, 23629, (164, 28, 158, 68, 95, 180, 215, 236 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IObservableMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.remove_MapChanged (token);
      m_RefCount := m_Interface.Release;
   end;

   -- Generic Interface Windows.Foundation.Collections.IMap`2<System.String,System.Object>
   function Lookup
   (
      this : in out PropertySet;
      key : WinRt.WString
   )
   return WinRt.IInspectable is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased IInspectable;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.Lookup (HStr_key, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
      return m_ComRetVal;
   end;

   function get_Size
   (
      this : in out PropertySet
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.get_Size (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function HasKey
   (
      this : in out PropertySet;
      key : WinRt.WString
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.HasKey (HStr_key, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
      return m_ComRetVal;
   end;

   function GetView
   (
      this : in out PropertySet
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.GetView (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function Insert
   (
      this : in out PropertySet;
      key : WinRt.WString;
      value : WinRt.IInspectable
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.Insert (HStr_key, value, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
      return m_ComRetVal;
   end;

   procedure Remove
   (
      this : in out PropertySet;
      key : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.Remove (HStr_key);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
   end;

   procedure Clear
   (
      this : in out PropertySet
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.Clear;
      m_RefCount := m_Interface.Release;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for StringMap

   procedure Initialize (this : in out StringMap) is
   begin
      null;
   end;

   procedure Finalize (this : in out StringMap) is
   begin
      null;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for StringMap

   function Constructor return StringMap is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Foundation.Collections.StringMap");
      m_ComRetVal  : aliased GenericObject;
   begin
      return RetVal : StringMap do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_GenericObject := new GenericObject;
            Retval.m_GenericObject.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for StringMap

   -- Generic Interface Windows.Foundation.Collections.IMap`2<System.String,System.String>
   function Lookup
   (
      this : in out StringMap;
      key : WinRt.WString
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_HString.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased HString;
      AdaRetval        : WString;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (4140955392, 18882, 21166, (129, 84, 130, 111, 153, 8, 119, 60 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IMap_HString_HString.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.Lookup (HStr_key, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   function get_Size
   (
      this : in out StringMap
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_HString.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
      m_GenericIID     : aliased WinRt.IID := (4140955392, 18882, 21166, (129, 84, 130, 111, 153, 8, 119, 60 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IMap_HString_HString.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.get_Size (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function HasKey
   (
      this : in out StringMap;
      key : WinRt.WString
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_HString.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (4140955392, 18882, 21166, (129, 84, 130, 111, 153, 8, 119, 60 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IMap_HString_HString.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.HasKey (HStr_key, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
      return m_ComRetVal;
   end;

   function GetView
   (
      this : in out StringMap
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_HString.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericIID     : aliased WinRt.IID := (4140955392, 18882, 21166, (129, 84, 130, 111, 153, 8, 119, 60 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IMap_HString_HString.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.GetView (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function Insert
   (
      this : in out StringMap;
      key : WinRt.WString;
      value : WinRt.WString
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_HString.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      HStr_key : WinRt.HString := To_HString (key);
      HStr_value : WinRt.HString := To_HString (value);
      m_GenericIID     : aliased WinRt.IID := (4140955392, 18882, 21166, (129, 84, 130, 111, 153, 8, 119, 60 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IMap_HString_HString.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.Insert (HStr_key, HStr_value, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
      Hr := WindowsDeleteString (HStr_value);
      return m_ComRetVal;
   end;

   procedure Remove
   (
      this : in out StringMap;
      key : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_HString.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (4140955392, 18882, 21166, (129, 84, 130, 111, 153, 8, 119, 60 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IMap_HString_HString.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.Remove (HStr_key);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
   end;

   procedure Clear
   (
      this : in out StringMap
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_HString.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_GenericIID     : aliased WinRt.IID := (4140955392, 18882, 21166, (129, 84, 130, 111, 153, 8, 119, 60 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IMap_HString_HString.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.Clear;
      m_RefCount := m_Interface.Release;
   end;

   -- Generic Interface Windows.Foundation.Collections.IObservableMap`2<System.String,System.String>
   function add_MapChanged
   (
      this : in out StringMap;
      vhnd : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IObservableMap_HString_HString.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
      m_GenericIID     : aliased WinRt.IID := (503538294, 12128, 22006, (183, 243, 248, 96, 121, 230, 144, 11 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IObservableMap_HString_HString.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.add_MapChanged (vhnd, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   procedure remove_MapChanged
   (
      this : in out StringMap;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IObservableMap_HString_HString.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_GenericIID     : aliased WinRt.IID := (503538294, 12128, 22006, (183, 243, 248, 96, 121, 230, 144, 11 ));
      function QInterface is new Generic_QueryInterface (WinRt.GenericObject_Interface, IObservableMap_HString_HString.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_GenericObject.all);
      Hr := m_Interface.remove_MapChanged (token);
      m_RefCount := m_Interface.Release;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for ValueSet

   procedure Initialize (this : in out ValueSet) is
   begin
      null;
   end;

   procedure Finalize (this : in out ValueSet) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IPropertySet, IPropertySet_Ptr);
   begin
      if this.m_IPropertySet /= null then
         if this.m_IPropertySet.all /= null then
            RefCount := this.m_IPropertySet.all.Release;
            Free (this.m_IPropertySet);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for ValueSet

   function Constructor return ValueSet is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.Foundation.Collections.ValueSet");
      m_ComRetVal  : aliased Windows.Foundation.Collections.IPropertySet;
   begin
      return RetVal : ValueSet do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_IPropertySet := new Windows.Foundation.Collections.IPropertySet;
            Retval.m_IPropertySet.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for ValueSet

   -- Generic Interface Windows.Foundation.Collections.IObservableMap`2<System.String,System.Object>
   function add_MapChanged
   (
      this : in out ValueSet;
      vhnd : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IObservableMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
      m_GenericIID     : aliased WinRt.IID := (594193565, 64274, 23629, (164, 28, 158, 68, 95, 180, 215, 236 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IObservableMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.add_MapChanged (vhnd, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   procedure remove_MapChanged
   (
      this : in out ValueSet;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IObservableMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_GenericIID     : aliased WinRt.IID := (594193565, 64274, 23629, (164, 28, 158, 68, 95, 180, 215, 236 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IObservableMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.remove_MapChanged (token);
      m_RefCount := m_Interface.Release;
   end;

   -- Generic Interface Windows.Foundation.Collections.IMap`2<System.String,System.Object>
   function Lookup
   (
      this : in out ValueSet;
      key : WinRt.WString
   )
   return WinRt.IInspectable is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased IInspectable;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.Lookup (HStr_key, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
      return m_ComRetVal;
   end;

   function get_Size
   (
      this : in out ValueSet
   )
   return WinRt.UInt32 is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.UInt32;
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.get_Size (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function HasKey
   (
      this : in out ValueSet;
      key : WinRt.WString
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.HasKey (HStr_key, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
      return m_ComRetVal;
   end;

   function GetView
   (
      this : in out ValueSet
   )
   return WinRt.GenericObject is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased GenericObject;
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.GetView (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   function Insert
   (
      this : in out ValueSet;
      key : WinRt.WString;
      value : WinRt.IInspectable
   )
   return WinRt.Boolean is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Boolean;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.Insert (HStr_key, value, m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
      return m_ComRetVal;
   end;

   procedure Remove
   (
      this : in out ValueSet;
      key : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_key : WinRt.HString := To_HString (key);
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.Remove (HStr_key);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_key);
   end;

   procedure Clear
   (
      this : in out ValueSet
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : IMap_HString_IInspectable.Kind := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_GenericIID     : aliased WinRt.IID := (453850480, 2167, 24258, (138, 44, 59, 149, 57, 80, 106, 202 ));
      function QInterface is new Generic_QueryInterface (WinRt.Windows.Foundation.Collections.IPropertySet_Interface, IMap_HString_IInspectable.Kind, m_GenericIID'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_IPropertySet.all);
      Hr := m_Interface.Clear;
      m_RefCount := m_Interface.Release;
   end;

   --------------------------------------------------------------------------------
   package body VectorChangedEventHandler is

      function Invoke
      (
         this : access Kind_Delegate;
         sender : GenericObject;
         event : Windows.Foundation.Collections.IVectorChangedEventArgs
      )
      return WinRt.Hresult is
         Hr : WinRt.HResult := S_OK;
      begin
         this.Callback (sender, event);
         return Hr;
      end;

   end;

end;