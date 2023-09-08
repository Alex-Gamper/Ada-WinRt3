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
limited with WinRt.Windows.Graphics.Effects;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.UI.Composition.Effects is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ISceneLightingEffect_Interface is interface and WinRt.IInspectable_Interface;
   type ISceneLightingEffect is access all ISceneLightingEffect_Interface'Class;
   type ISceneLightingEffect_Ptr is access all ISceneLightingEffect;

   type ISceneLightingEffect2_Interface is interface and WinRt.IInspectable_Interface;
   type ISceneLightingEffect2 is access all ISceneLightingEffect2_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type SceneLightingEffect is new Ada.Finalization.Limited_Controlled with
      record
         m_ISceneLightingEffect : access Windows.UI.Composition.Effects.ISceneLightingEffect;
      end record;
   type SceneLightingEffect_Ptr is access all SceneLightingEffect;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type SceneLightingEffectReflectanceModel is (
      BlinnPhong_e,
      PhysicallyBasedBlinnPhong_e
   );
   for SceneLightingEffectReflectanceModel use (
      BlinnPhong_e => 0,
      PhysicallyBasedBlinnPhong_e => 1
   );
   type SceneLightingEffectReflectanceModel_Ptr is access all SceneLightingEffectReflectanceModel;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ISceneLightingEffect is interface and WinRt.IInspectable;

      function get_AmbientAmount
      (
         this : access ISceneLightingEffect_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function put_AmbientAmount
      (
         this : access ISceneLightingEffect_Interface;
         value : WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function get_DiffuseAmount
      (
         this : access ISceneLightingEffect_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function put_DiffuseAmount
      (
         this : access ISceneLightingEffect_Interface;
         value : WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function get_NormalMapSource
      (
         this : access ISceneLightingEffect_Interface;
         RetVal : access Windows.Graphics.Effects.IGraphicsEffectSource
      )
      return WinRt.Hresult is abstract;

      function put_NormalMapSource
      (
         this : access ISceneLightingEffect_Interface;
         value : Windows.Graphics.Effects.IGraphicsEffectSource
      )
      return WinRt.Hresult is abstract;

      function get_SpecularAmount
      (
         this : access ISceneLightingEffect_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function put_SpecularAmount
      (
         this : access ISceneLightingEffect_Interface;
         value : WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function get_SpecularShine
      (
         this : access ISceneLightingEffect_Interface;
         RetVal : access WinRt.Single
      )
      return WinRt.Hresult is abstract;

      function put_SpecularShine
      (
         this : access ISceneLightingEffect_Interface;
         value : WinRt.Single
      )
      return WinRt.Hresult is abstract;

      IID_ISceneLightingEffect : aliased WinRt.IID := (2444975698, 38353, 20363, (154, 90, 100, 8, 178, 75, 140, 106 ));

   -----------------------------------------------------------------------------
   -- type ISceneLightingEffect2 is interface and WinRt.IInspectable;

      function get_ReflectanceModel
      (
         this : access ISceneLightingEffect2_Interface;
         RetVal : access Windows.UI.Composition.Effects.SceneLightingEffectReflectanceModel
      )
      return WinRt.Hresult is abstract;

      function put_ReflectanceModel
      (
         this : access ISceneLightingEffect2_Interface;
         value : Windows.UI.Composition.Effects.SceneLightingEffectReflectanceModel
      )
      return WinRt.Hresult is abstract;

      IID_ISceneLightingEffect2 : aliased WinRt.IID := (2653359745, 29424, 19548, (149, 248, 138, 110, 0, 36, 244, 9 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for SceneLightingEffect

   overriding procedure Initialize (this : in out SceneLightingEffect);
   overriding procedure Finalize (this : in out SceneLightingEffect);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for SceneLightingEffect

   function Constructor return SceneLightingEffect;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for SceneLightingEffect

   function get_AmbientAmount
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Single;

   procedure put_AmbientAmount
   (
      this : in out SceneLightingEffect;
      value : WinRt.Single
   );

   function get_DiffuseAmount
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Single;

   procedure put_DiffuseAmount
   (
      this : in out SceneLightingEffect;
      value : WinRt.Single
   );

   function get_NormalMapSource
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Windows.Graphics.Effects.IGraphicsEffectSource;

   procedure put_NormalMapSource
   (
      this : in out SceneLightingEffect;
      value : Windows.Graphics.Effects.IGraphicsEffectSource
   );

   function get_SpecularAmount
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Single;

   procedure put_SpecularAmount
   (
      this : in out SceneLightingEffect;
      value : WinRt.Single
   );

   function get_SpecularShine
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Single;

   procedure put_SpecularShine
   (
      this : in out SceneLightingEffect;
      value : WinRt.Single
   );

   function get_ReflectanceModel
   (
      this : in out SceneLightingEffect
   )
   return WinRt.Windows.UI.Composition.Effects.SceneLightingEffectReflectanceModel;

   procedure put_ReflectanceModel
   (
      this : in out SceneLightingEffect;
      value : Windows.UI.Composition.Effects.SceneLightingEffectReflectanceModel
   );

   function get_Name
   (
      this : in out SceneLightingEffect
   )
   return WinRt.WString;

   procedure put_Name
   (
      this : in out SceneLightingEffect;
      name : WinRt.WString
   );

end;
