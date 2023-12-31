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
package body WinRt.Windows.UI.Composition.Diagnostics is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CompositionDebugHeatMaps

   procedure Initialize (this : in out CompositionDebugHeatMaps) is
   begin
      null;
   end;

   procedure Finalize (this : in out CompositionDebugHeatMaps) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICompositionDebugHeatMaps, ICompositionDebugHeatMaps_Ptr);
   begin
      if this.m_ICompositionDebugHeatMaps /= null then
         if this.m_ICompositionDebugHeatMaps.all /= null then
            RefCount := this.m_ICompositionDebugHeatMaps.all.Release;
            Free (this.m_ICompositionDebugHeatMaps);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CompositionDebugHeatMaps

   procedure Hide
   (
      this : in out CompositionDebugHeatMaps;
      subtree : Windows.UI.Composition.Visual'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICompositionDebugHeatMaps.all.Hide (subtree.m_IVisual.all);
   end;

   procedure ShowMemoryUsage
   (
      this : in out CompositionDebugHeatMaps;
      subtree : Windows.UI.Composition.Visual'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICompositionDebugHeatMaps.all.ShowMemoryUsage (subtree.m_IVisual.all);
   end;

   procedure ShowOverdraw
   (
      this : in out CompositionDebugHeatMaps;
      subtree : Windows.UI.Composition.Visual'Class;
      contentKinds : Windows.UI.Composition.Diagnostics.CompositionDebugOverdrawContentKinds
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICompositionDebugHeatMaps.all.ShowOverdraw (subtree.m_IVisual.all, contentKinds);
   end;

   procedure ShowRedraw
   (
      this : in out CompositionDebugHeatMaps;
      subtree : Windows.UI.Composition.Visual'Class
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_ICompositionDebugHeatMaps.all.ShowRedraw (subtree.m_IVisual.all);
   end;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CompositionDebugSettings

   procedure Initialize (this : in out CompositionDebugSettings) is
   begin
      null;
   end;

   procedure Finalize (this : in out CompositionDebugSettings) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (ICompositionDebugSettings, ICompositionDebugSettings_Ptr);
   begin
      if this.m_ICompositionDebugSettings /= null then
         if this.m_ICompositionDebugSettings.all /= null then
            RefCount := this.m_ICompositionDebugSettings.all.Release;
            Free (this.m_ICompositionDebugSettings);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for CompositionDebugSettings

   function TryGetSettings
   (
      compositor : Windows.UI.Composition.Compositor'Class
   )
   return WinRt.Windows.UI.Composition.Diagnostics.CompositionDebugSettings is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.UI.Composition.Diagnostics.CompositionDebugSettings");
      m_Factory        : access WinRt.Windows.UI.Composition.Diagnostics.ICompositionDebugSettingsStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Composition.Diagnostics.ICompositionDebugSettings;
   begin
      return RetVal : WinRt.Windows.UI.Composition.Diagnostics.CompositionDebugSettings do
         Hr := RoGetActivationFactory (m_hString, IID_ICompositionDebugSettingsStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.TryGetSettings (compositor.m_ICompositor.all, m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_ICompositionDebugSettings := new Windows.UI.Composition.Diagnostics.ICompositionDebugSettings;
            Retval.m_ICompositionDebugSettings.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CompositionDebugSettings

   function get_HeatMaps
   (
      this : in out CompositionDebugSettings
   )
   return WinRt.Windows.UI.Composition.Diagnostics.CompositionDebugHeatMaps'Class is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.UI.Composition.Diagnostics.ICompositionDebugHeatMaps;
   begin
      return RetVal : WinRt.Windows.UI.Composition.Diagnostics.CompositionDebugHeatMaps do
         Hr := this.m_ICompositionDebugSettings.all.get_HeatMaps (m_ComRetVal'Access);
         Retval.m_ICompositionDebugHeatMaps := new Windows.UI.Composition.Diagnostics.ICompositionDebugHeatMaps;
         Retval.m_ICompositionDebugHeatMaps.all := m_ComRetVal;
      end return;
   end;

end;
