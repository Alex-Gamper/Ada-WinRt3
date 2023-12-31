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
with WinRt.Windows.Graphics.Effects;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.UI.Composition.Effects is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SceneLightingEffect

   procedure Initialize (this : in out SceneLightingEffect) is
   begin
      null;
   end;

   procedure Finalize (this : in out SceneLightingEffect) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ISceneLightingEffect, ISceneLightingEffect_Ptr);
   begin
      if this.m_ISceneLightingEffect /= null then
         if this.m_ISceneLightingEffect.all /= null then
            RefCount := this.m_ISceneLightingEffect.all.Release;
            Free (this.m_ISceneLightingEffect);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SceneLightingEffect

   function Constructor return SceneLightingEffect is
      Hr           : WinRt.HResult := S_OK;
      m_hString    : WinRt.HString := To_HString ("Windows.UI.Composition.Effects.SceneLightingEffect");
      m_ComRetVal  : aliased Windows.UI.Composition.Effects.ISceneLightingEffect;
   begin
      return RetVal : SceneLightingEffect do
         Hr := RoActivateInstance (m_hString, m_ComRetVal'Address);
         if Hr = S_OK then
            Retval.m_ISceneLightingEffect := new Windows.UI.Composition.Effects.ISceneLightingEffect;
            Retval.m_ISceneLightingEffect.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SceneLightingEffect

   function get_AmbientAmount
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Single is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Single;
   begin
      Hr := this.m_ISceneLightingEffect.all.get_AmbientAmount (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_AmbientAmount
   (
      this : in out SceneLightingEffect;
      value : WinRt.Single
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISceneLightingEffect.all.put_AmbientAmount (value);
   end;

   function get_DiffuseAmount
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Single is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Single;
   begin
      Hr := this.m_ISceneLightingEffect.all.get_DiffuseAmount (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_DiffuseAmount
   (
      this : in out SceneLightingEffect;
      value : WinRt.Single
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISceneLightingEffect.all.put_DiffuseAmount (value);
   end;

   function get_NormalMapSource
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Windows.Graphics.Effects.IGraphicsEffectSource is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Graphics.Effects.IGraphicsEffectSource;
   begin
      Hr := this.m_ISceneLightingEffect.all.get_NormalMapSource (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_NormalMapSource
   (
      this : in out SceneLightingEffect;
      value : Windows.Graphics.Effects.IGraphicsEffectSource
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISceneLightingEffect.all.put_NormalMapSource (value);
   end;

   function get_SpecularAmount
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Single is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Single;
   begin
      Hr := this.m_ISceneLightingEffect.all.get_SpecularAmount (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_SpecularAmount
   (
      this : in out SceneLightingEffect;
      value : WinRt.Single
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISceneLightingEffect.all.put_SpecularAmount (value);
   end;

   function get_SpecularShine
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Single is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.Single;
   begin
      Hr := this.m_ISceneLightingEffect.all.get_SpecularShine (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure put_SpecularShine
   (
      this : in out SceneLightingEffect;
      value : WinRt.Single
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ISceneLightingEffect.all.put_SpecularShine (value);
   end;

   function get_ReflectanceModel
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Windows.UI.Composition.Effects.SceneLightingEffectReflectanceModel is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.Composition.Effects.ISceneLightingEffect2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Composition.Effects.SceneLightingEffectReflectanceModel;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Composition.Effects.ISceneLightingEffect_Interface, WinRt.Windows.UI.Composition.Effects.ISceneLightingEffect2, WinRt.Windows.UI.Composition.Effects.IID_ISceneLightingEffect2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ISceneLightingEffect.all);
      Hr := m_Interface.get_ReflectanceModel (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      return m_ComRetVal;
   end;

   procedure put_ReflectanceModel
   (
      this : in out SceneLightingEffect;
      value : Windows.UI.Composition.Effects.SceneLightingEffectReflectanceModel
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.UI.Composition.Effects.ISceneLightingEffect2 := null;
      m_RefCount       : WinRt.UInt32 := 0;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Composition.Effects.ISceneLightingEffect_Interface, WinRt.Windows.UI.Composition.Effects.ISceneLightingEffect2, WinRt.Windows.UI.Composition.Effects.IID_ISceneLightingEffect2'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ISceneLightingEffect.all);
      Hr := m_Interface.put_ReflectanceModel (value);
      m_RefCount := m_Interface.Release;
   end;

   function get_Name
   (
      this : in out SceneLightingEffect
   )
   return WinRt.WString is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Graphics.Effects.IGraphicsEffect := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased WinRt.HString;
      AdaRetval        : WString;
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Composition.Effects.ISceneLightingEffect_Interface, WinRt.Windows.Graphics.Effects.IGraphicsEffect, WinRt.Windows.Graphics.Effects.IID_IGraphicsEffect'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ISceneLightingEffect.all);
      Hr := m_Interface.get_Name (m_ComRetVal'Access);
      m_RefCount := m_Interface.Release;
      AdaRetval := To_Ada (m_ComRetVal);
      Hr := WindowsDeleteString (m_ComRetVal);
      return AdaRetVal;
   end;

   procedure put_Name
   (
      this : in out SceneLightingEffect;
      name : WinRt.WString
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_Interface      : WinRt.Windows.Graphics.Effects.IGraphicsEffect := null;
      m_RefCount       : WinRt.UInt32 := 0;
      HStr_name : WinRt.HString := To_HString (name);
      function QInterface is new Generic_QueryInterface (WinRt.Windows.UI.Composition.Effects.ISceneLightingEffect_Interface, WinRt.Windows.Graphics.Effects.IGraphicsEffect, WinRt.Windows.Graphics.Effects.IID_IGraphicsEffect'Unchecked_Access);
   begin
      m_Interface := QInterface (this.m_ISceneLightingEffect.all);
      Hr := m_Interface.put_Name (HStr_name);
      m_RefCount := m_Interface.Release;
      Hr := WindowsDeleteString (HStr_name);
   end;

end;
