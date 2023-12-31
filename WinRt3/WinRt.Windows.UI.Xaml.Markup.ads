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
limited with WinRt.Windows.Storage.Streams;
limited with WinRt.Windows.UI.Xaml.Interop;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.UI.Xaml.Markup is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IComponentConnector_Interface is interface and WinRt.IInspectable_Interface;
   type IComponentConnector is access all IComponentConnector_Interface'Class;

   type IComponentConnector2_Interface is interface and WinRt.IInspectable_Interface;
   type IComponentConnector2 is access all IComponentConnector2_Interface'Class;

   type IDataTemplateComponent_Interface is interface and WinRt.IInspectable_Interface;
   type IDataTemplateComponent is access all IDataTemplateComponent_Interface'Class;

   type IMarkupExtension_Interface is interface and WinRt.IInspectable_Interface;
   type IMarkupExtension is access all IMarkupExtension_Interface'Class;
   type IMarkupExtension_Ptr is access all IMarkupExtension;

   type IMarkupExtensionFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IMarkupExtensionFactory is access all IMarkupExtensionFactory_Interface'Class;

   type IMarkupExtensionOverrides_Interface is interface and WinRt.IInspectable_Interface;
   type IMarkupExtensionOverrides is access all IMarkupExtensionOverrides_Interface'Class;

   type IXamlBinaryWriter_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlBinaryWriter is access all IXamlBinaryWriter_Interface'Class;
   type IXamlBinaryWriter_Ptr is access all IXamlBinaryWriter;

   type IXamlBinaryWriterStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlBinaryWriterStatics is access all IXamlBinaryWriterStatics_Interface'Class;

   type IXamlBindScopeDiagnostics_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlBindScopeDiagnostics is access all IXamlBindScopeDiagnostics_Interface'Class;

   type IXamlBindingHelper_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlBindingHelper is access all IXamlBindingHelper_Interface'Class;
   type IXamlBindingHelper_Ptr is access all IXamlBindingHelper;

   type IXamlBindingHelperStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlBindingHelperStatics is access all IXamlBindingHelperStatics_Interface'Class;

   type IXamlMarkupHelper_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlMarkupHelper is access all IXamlMarkupHelper_Interface'Class;
   type IXamlMarkupHelper_Ptr is access all IXamlMarkupHelper;

   type IXamlMarkupHelperStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlMarkupHelperStatics is access all IXamlMarkupHelperStatics_Interface'Class;

   type IXamlMember_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlMember is access all IXamlMember_Interface'Class;

   type IXamlMetadataProvider_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlMetadataProvider is access all IXamlMetadataProvider_Interface'Class;

   type IXamlReader_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlReader is access all IXamlReader_Interface'Class;
   type IXamlReader_Ptr is access all IXamlReader;

   type IXamlReaderStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlReaderStatics is access all IXamlReaderStatics_Interface'Class;

   type IXamlType_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlType is access all IXamlType_Interface'Class;

   type IXamlType2_Interface is interface and WinRt.IInspectable_Interface;
   type IXamlType2 is access all IXamlType2_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type MarkupExtension is new Ada.Finalization.Limited_Controlled with
      record
         m_IMarkupExtension : access Windows.UI.Xaml.Markup.IMarkupExtension;
      end record;
   type MarkupExtension_Ptr is access all MarkupExtension;

   type XamlBinaryWriter is new Ada.Finalization.Limited_Controlled with
      record
         m_IXamlBinaryWriter : access Windows.UI.Xaml.Markup.IXamlBinaryWriter;
      end record;
   type XamlBinaryWriter_Ptr is access all XamlBinaryWriter;

   type XamlBindingHelper is new Ada.Finalization.Limited_Controlled with
      record
         m_IXamlBindingHelper : access Windows.UI.Xaml.Markup.IXamlBindingHelper;
      end record;
   type XamlBindingHelper_Ptr is access all XamlBindingHelper;

   type XamlMarkupHelper is new Ada.Finalization.Limited_Controlled with
      record
         m_IXamlMarkupHelper : access Windows.UI.Xaml.Markup.IXamlMarkupHelper;
      end record;
   type XamlMarkupHelper_Ptr is access all XamlMarkupHelper;

   type XamlReader is new Ada.Finalization.Limited_Controlled with
      record
         m_IXamlReader : access Windows.UI.Xaml.Markup.IXamlReader;
      end record;
   type XamlReader_Ptr is access all XamlReader;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type XamlBinaryWriterErrorInformation is record
      InputStreamIndex : WinRt.UInt32;
      LineNumber : WinRt.UInt32;
      LinePosition : WinRt.UInt32;
   end record with Convention => C_Pass_By_Copy;
   type XamlBinaryWriterErrorInformation_Ptr is access all XamlBinaryWriterErrorInformation;

   type XmlnsDefinition is record
      XmlNamespace : WinRt.HString;
      Namespace : WinRt.HString;
   end record with Convention => C_Pass_By_Copy;
   type XmlnsDefinition_Ptr is access all XmlnsDefinition;
   type XmlnsDefinition_Array is array (Natural range <>) of aliased XmlnsDefinition;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IComponentConnector is interface and WinRt.IInspectable;

      function Connect
      (
         this : access IComponentConnector_Interface;
         connectionId : WinRt.Int32;
         target : WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      IID_IComponentConnector : aliased WinRt.IID := (4135127431, 59109, 18418, (146, 198, 236, 204, 228, 186, 21, 154 ));

   -----------------------------------------------------------------------------
   -- type IComponentConnector2 is interface and WinRt.IInspectable;

      function GetBindingConnector
      (
         this : access IComponentConnector2_Interface;
         connectionId : WinRt.Int32;
         target : WinRt.IInspectable;
         RetVal : access Windows.UI.Xaml.Markup.IComponentConnector
      )
      return WinRt.Hresult is abstract;

      IID_IComponentConnector2 : aliased WinRt.IID := (3700373131, 60620, 18830, (177, 57, 145, 20, 34, 84, 215, 174 ));

   -----------------------------------------------------------------------------
   -- type IDataTemplateComponent is interface and WinRt.IInspectable;

      function Recycle
      (
         this : access IDataTemplateComponent_Interface
      )
      return WinRt.Hresult is abstract;

      function ProcessBindings
      (
         this : access IDataTemplateComponent_Interface;
         item : WinRt.IInspectable;
         itemIndex : WinRt.Int32;
         phase : WinRt.Int32;
         nextPhase : WinRt.Int32_Ptr
      )
      return WinRt.Hresult is abstract;

      IID_IDataTemplateComponent : aliased WinRt.IID := (138583496, 35504, 18247, (170, 154, 254, 173, 252, 141, 168, 225 ));

   -----------------------------------------------------------------------------
   -- type IMarkupExtension is interface and WinRt.IInspectable;

      IID_IMarkupExtension : aliased WinRt.IID := (518209901, 22059, 18542, (158, 229, 15, 12, 188, 200, 4, 140 ));

   -----------------------------------------------------------------------------
   -- type IMarkupExtensionFactory is interface and WinRt.IInspectable;

      function CreateInstance
      (
         this : access IMarkupExtensionFactory_Interface;
         baseInterface : WinRt.IInspectable;
         innerInterface : access WinRt.IInspectable;
         RetVal : access Windows.UI.Xaml.Markup.IMarkupExtension
      )
      return WinRt.Hresult is abstract;

      IID_IMarkupExtensionFactory : aliased WinRt.IID := (1697815557, 64346, 17767, (157, 85, 92, 223, 186, 218, 39, 57 ));

   -----------------------------------------------------------------------------
   -- type IMarkupExtensionOverrides is interface and WinRt.IInspectable;

      function ProvideValue
      (
         this : access IMarkupExtensionOverrides_Interface;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      IID_IMarkupExtensionOverrides : aliased WinRt.IID := (959936959, 47552, 20475, (165, 127, 88, 231, 53, 110, 66, 95 ));

   -----------------------------------------------------------------------------
   -- type IXamlBinaryWriter is interface and WinRt.IInspectable;

      IID_IXamlBinaryWriter : aliased WinRt.IID := (2191338195, 25098, 18166, (132, 93, 67, 106, 5, 146, 113, 0 ));

   -----------------------------------------------------------------------------
   -- type IXamlBinaryWriterStatics is interface and WinRt.IInspectable;

      function Write
      (
         this : access IXamlBinaryWriterStatics_Interface;
         inputStreams : GenericObject;
         outputStreams : GenericObject;
         xamlMetadataProvider : Windows.UI.Xaml.Markup.IXamlMetadataProvider;
         RetVal : access Windows.UI.Xaml.Markup.XamlBinaryWriterErrorInformation
      )
      return WinRt.Hresult is abstract;

      IID_IXamlBinaryWriterStatics : aliased WinRt.IID := (227463290, 39810, 19112, (182, 139, 2, 111, 45, 225, 204, 134 ));

   -----------------------------------------------------------------------------
   -- type IXamlBindScopeDiagnostics is interface and WinRt.IInspectable;

      function Disable
      (
         this : access IXamlBindScopeDiagnostics_Interface;
         lineNumber : WinRt.Int32;
         columnNumber : WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      IID_IXamlBindScopeDiagnostics : aliased WinRt.IID := (4066681501, 48621, 17322, (165, 176, 38, 172, 33, 168, 30, 184 ));

   -----------------------------------------------------------------------------
   -- type IXamlBindingHelper is interface and WinRt.IInspectable;

      IID_IXamlBindingHelper : aliased WinRt.IID := (4205247238, 35513, 20215, (138, 231, 251, 211, 11, 191, 208, 109 ));

   -----------------------------------------------------------------------------
   -- type IXamlBindingHelperStatics is interface and WinRt.IInspectable;

      function get_DataTemplateComponentProperty
      (
         this : access IXamlBindingHelperStatics_Interface;
         RetVal : access Windows.UI.Xaml.IDependencyProperty
      )
      return WinRt.Hresult is abstract;

      function GetDataTemplateComponent
      (
         this : access IXamlBindingHelperStatics_Interface;
         element : Windows.UI.Xaml.IDependencyObject;
         RetVal : access Windows.UI.Xaml.Markup.IDataTemplateComponent
      )
      return WinRt.Hresult is abstract;

      function SetDataTemplateComponent
      (
         this : access IXamlBindingHelperStatics_Interface;
         element : Windows.UI.Xaml.IDependencyObject;
         value : Windows.UI.Xaml.Markup.IDataTemplateComponent
      )
      return WinRt.Hresult is abstract;

      function SuspendRendering
      (
         this : access IXamlBindingHelperStatics_Interface;
         target : Windows.UI.Xaml.IUIElement
      )
      return WinRt.Hresult is abstract;

      function ResumeRendering
      (
         this : access IXamlBindingHelperStatics_Interface;
         target : Windows.UI.Xaml.IUIElement
      )
      return WinRt.Hresult is abstract;

      function ConvertValue
      (
         this : access IXamlBindingHelperStatics_Interface;
         type_x : Windows.UI.Xaml.Interop.TypeName;
         value : WinRt.IInspectable;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromString
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromBoolean
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromChar16
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.Wide_Char
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromDateTime
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : Windows.Foundation.DateTime
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromDouble
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromInt32
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromUInt32
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.UInt32
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromInt64
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.Int64
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromUInt64
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.UInt64
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromSingle
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromPoint
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : Windows.Foundation.Point
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromRect
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : Windows.Foundation.Rect
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromSize
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : Windows.Foundation.Size
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromTimeSpan
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : Windows.Foundation.TimeSpan
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromByte
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.Byte
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromUri
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : Windows.Foundation.IUriRuntimeClass
      )
      return WinRt.Hresult is abstract;

      function SetPropertyFromObject
      (
         this : access IXamlBindingHelperStatics_Interface;
         dependencyObject : WinRt.IInspectable;
         propertyToSet : Windows.UI.Xaml.IDependencyProperty;
         value : WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      IID_IXamlBindingHelperStatics : aliased WinRt.IID := (4133288817, 51212, 20474, (134, 238, 85, 135, 84, 238, 51, 109 ));

   -----------------------------------------------------------------------------
   -- type IXamlMarkupHelper is interface and WinRt.IInspectable;

      IID_IXamlMarkupHelper : aliased WinRt.IID := (3504760636, 21314, 17647, (133, 167, 237, 50, 122, 115, 157, 154 ));

   -----------------------------------------------------------------------------
   -- type IXamlMarkupHelperStatics is interface and WinRt.IInspectable;

      function UnloadObject
      (
         this : access IXamlMarkupHelperStatics_Interface;
         element : Windows.UI.Xaml.IDependencyObject
      )
      return WinRt.Hresult is abstract;

      IID_IXamlMarkupHelperStatics : aliased WinRt.IID := (3384555301, 62287, 17500, (129, 162, 107, 114, 165, 232, 240, 114 ));

   -----------------------------------------------------------------------------
   -- type IXamlMember is interface and WinRt.IInspectable;

      function get_IsAttachable
      (
         this : access IXamlMember_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsDependencyProperty
      (
         this : access IXamlMember_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsReadOnly
      (
         this : access IXamlMember_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_Name
      (
         this : access IXamlMember_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_TargetType
      (
         this : access IXamlMember_Interface;
         RetVal : access Windows.UI.Xaml.Markup.IXamlType
      )
      return WinRt.Hresult is abstract;

      function get_Type
      (
         this : access IXamlMember_Interface;
         RetVal : access Windows.UI.Xaml.Markup.IXamlType
      )
      return WinRt.Hresult is abstract;

      function GetValue
      (
         this : access IXamlMember_Interface;
         instance : WinRt.IInspectable;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      function SetValue
      (
         this : access IXamlMember_Interface;
         instance : WinRt.IInspectable;
         value : WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      IID_IXamlMember : aliased WinRt.IID := (3309434252, 17321, 16918, (183, 24, 224, 177, 27, 20, 233, 62 ));

   -----------------------------------------------------------------------------
   -- type IXamlMetadataProvider is interface and WinRt.IInspectable;

      function GetXamlType
      (
         this : access IXamlMetadataProvider_Interface;
         type_x : Windows.UI.Xaml.Interop.TypeName;
         RetVal : access Windows.UI.Xaml.Markup.IXamlType
      )
      return WinRt.Hresult is abstract;

      function GetXamlType
      (
         this : access IXamlMetadataProvider_Interface;
         fullName : WinRt.HString;
         RetVal : access Windows.UI.Xaml.Markup.IXamlType
      )
      return WinRt.Hresult is abstract;

      function GetXmlnsDefinitions
      (
         this : access IXamlMetadataProvider_Interface;
         RetValSize : access WinRt.UInt32;
         RetVal : access Windows.UI.Xaml.Markup.XmlnsDefinition_Ptr
      )
      return WinRt.Hresult is abstract;

      IID_IXamlMetadataProvider : aliased WinRt.IID := (3010878825, 26789, 19250, (136, 97, 253, 185, 12, 31, 88, 54 ));

   -----------------------------------------------------------------------------
   -- type IXamlReader is interface and WinRt.IInspectable;

      IID_IXamlReader : aliased WinRt.IID := (607603953, 52459, 18623, (165, 20, 65, 176, 24, 111, 132, 194 ));

   -----------------------------------------------------------------------------
   -- type IXamlReaderStatics is interface and WinRt.IInspectable;

      function Load
      (
         this : access IXamlReaderStatics_Interface;
         xaml : WinRt.HString;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      function LoadWithInitialTemplateValidation
      (
         this : access IXamlReaderStatics_Interface;
         xaml : WinRt.HString;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      IID_IXamlReaderStatics : aliased WinRt.IID := (2559690429, 21327, 18773, (184, 90, 138, 141, 192, 220, 166, 2 ));

   -----------------------------------------------------------------------------
   -- type IXamlType is interface and WinRt.IInspectable;

      function get_BaseType
      (
         this : access IXamlType_Interface;
         RetVal : access Windows.UI.Xaml.Markup.IXamlType
      )
      return WinRt.Hresult is abstract;

      function get_ContentProperty
      (
         this : access IXamlType_Interface;
         RetVal : access Windows.UI.Xaml.Markup.IXamlMember
      )
      return WinRt.Hresult is abstract;

      function get_FullName
      (
         this : access IXamlType_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_IsArray
      (
         this : access IXamlType_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsCollection
      (
         this : access IXamlType_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsConstructible
      (
         this : access IXamlType_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsDictionary
      (
         this : access IXamlType_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsMarkupExtension
      (
         this : access IXamlType_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_IsBindable
      (
         this : access IXamlType_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      function get_ItemType
      (
         this : access IXamlType_Interface;
         RetVal : access Windows.UI.Xaml.Markup.IXamlType
      )
      return WinRt.Hresult is abstract;

      function get_KeyType
      (
         this : access IXamlType_Interface;
         RetVal : access Windows.UI.Xaml.Markup.IXamlType
      )
      return WinRt.Hresult is abstract;

      function get_UnderlyingType
      (
         this : access IXamlType_Interface;
         RetVal : access Windows.UI.Xaml.Interop.TypeName
      )
      return WinRt.Hresult is abstract;

      function ActivateInstance
      (
         this : access IXamlType_Interface;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      function CreateFromString
      (
         this : access IXamlType_Interface;
         value : WinRt.HString;
         RetVal : access WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      function GetMember
      (
         this : access IXamlType_Interface;
         name : WinRt.HString;
         RetVal : access Windows.UI.Xaml.Markup.IXamlMember
      )
      return WinRt.Hresult is abstract;

      function AddToVector
      (
         this : access IXamlType_Interface;
         instance : WinRt.IInspectable;
         value : WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      function AddToMap
      (
         this : access IXamlType_Interface;
         instance : WinRt.IInspectable;
         key : WinRt.IInspectable;
         value : WinRt.IInspectable
      )
      return WinRt.Hresult is abstract;

      function RunInitializer
      (
         this : access IXamlType_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IXamlType : aliased WinRt.IID := (2032200369, 41701, 18330, (189, 80, 108, 239, 60, 11, 73, 112 ));

   -----------------------------------------------------------------------------
   -- type IXamlType2 is interface and WinRt.IInspectable;

      function get_BoxedType
      (
         this : access IXamlType2_Interface;
         RetVal : access Windows.UI.Xaml.Markup.IXamlType
      )
      return WinRt.Hresult is abstract;

      IID_IXamlType2 : aliased WinRt.IID := (2668391995, 17211, 22189, (143, 105, 120, 164, 221, 62, 100, 249 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for MarkupExtension

   overriding procedure Initialize (this : in out MarkupExtension);
   overriding procedure Finalize (this : in out MarkupExtension);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for MarkupExtension

   function Constructor
   (
      baseInterface : WinRt.IInspectable;
      innerInterface : access WinRt.IInspectable
   )
   return MarkupExtension;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for MarkupExtension

   function ProvideValue
   (
      this : in out MarkupExtension
   )
   return WinRt.IInspectable;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for XamlBinaryWriter

   overriding procedure Initialize (this : in out XamlBinaryWriter);
   overriding procedure Finalize (this : in out XamlBinaryWriter);

   -----------------------------------------------------------------------------
   -- Static Interfaces for XamlBinaryWriter

   function Write
   (
      inputStreams : GenericObject;
      outputStreams : GenericObject;
      xamlMetadataProvider : Windows.UI.Xaml.Markup.IXamlMetadataProvider
   )
   return WinRt.Windows.UI.Xaml.Markup.XamlBinaryWriterErrorInformation;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for XamlBinaryWriter

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for XamlBindingHelper

   overriding procedure Initialize (this : in out XamlBindingHelper);
   overriding procedure Finalize (this : in out XamlBindingHelper);

   -----------------------------------------------------------------------------
   -- Static Interfaces for XamlBindingHelper

   function get_DataTemplateComponentProperty
   return WinRt.Windows.UI.Xaml.DependencyProperty;

   function GetDataTemplateComponent
   (
      element : Windows.UI.Xaml.DependencyObject'Class
   )
   return WinRt.Windows.UI.Xaml.Markup.IDataTemplateComponent;

   procedure SetDataTemplateComponent
   (
      element : Windows.UI.Xaml.DependencyObject'Class;
      value : Windows.UI.Xaml.Markup.IDataTemplateComponent
   );

   procedure SuspendRendering
   (
      target : Windows.UI.Xaml.UIElement'Class
   );

   procedure ResumeRendering
   (
      target : Windows.UI.Xaml.UIElement'Class
   );

   function ConvertValue
   (
      type_x : Windows.UI.Xaml.Interop.TypeName;
      value : WinRt.IInspectable
   )
   return WinRt.IInspectable;

   procedure SetPropertyFromString
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.WString
   );

   procedure SetPropertyFromBoolean
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.Boolean
   );

   procedure SetPropertyFromChar16
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.Wide_Char
   );

   procedure SetPropertyFromDateTime
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : Windows.Foundation.DateTime
   );

   procedure SetPropertyFromDouble
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.Double
   );

   procedure SetPropertyFromInt32
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.Int32
   );

   procedure SetPropertyFromUInt32
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.UInt32
   );

   procedure SetPropertyFromInt64
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.Int64
   );

   procedure SetPropertyFromUInt64
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.UInt64
   );

   procedure SetPropertyFromSingle
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.Single
   );

   procedure SetPropertyFromPoint
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : Windows.Foundation.Point
   );

   procedure SetPropertyFromRect
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : Windows.Foundation.Rect
   );

   procedure SetPropertyFromSize
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : Windows.Foundation.Size
   );

   procedure SetPropertyFromTimeSpan
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : Windows.Foundation.TimeSpan
   );

   procedure SetPropertyFromByte
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.Byte
   );

   procedure SetPropertyFromUri
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : Windows.Foundation.Uri'Class
   );

   procedure SetPropertyFromObject
   (
      dependencyObject : WinRt.IInspectable;
      propertyToSet : Windows.UI.Xaml.DependencyProperty'Class;
      value : WinRt.IInspectable
   );

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for XamlBindingHelper

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for XamlMarkupHelper

   overriding procedure Initialize (this : in out XamlMarkupHelper);
   overriding procedure Finalize (this : in out XamlMarkupHelper);

   -----------------------------------------------------------------------------
   -- Static Interfaces for XamlMarkupHelper

   procedure UnloadObject
   (
      element : Windows.UI.Xaml.DependencyObject'Class
   );

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for XamlMarkupHelper

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for XamlReader

   overriding procedure Initialize (this : in out XamlReader);
   overriding procedure Finalize (this : in out XamlReader);

   -----------------------------------------------------------------------------
   -- Static Interfaces for XamlReader

   function Load
   (
      xaml : WinRt.WString
   )
   return WinRt.IInspectable;

   function LoadWithInitialTemplateValidation
   (
      xaml : WinRt.WString
   )
   return WinRt.IInspectable;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for XamlReader

end;
