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
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.UI.Composition.Diagnostics is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type ICompositionDebugHeatMaps_Interface is interface and WinRt.IInspectable_Interface;
   type ICompositionDebugHeatMaps is access all ICompositionDebugHeatMaps_Interface'Class;
   type ICompositionDebugHeatMaps_Ptr is access all ICompositionDebugHeatMaps;

   type ICompositionDebugSettings_Interface is interface and WinRt.IInspectable_Interface;
   type ICompositionDebugSettings is access all ICompositionDebugSettings_Interface'Class;
   type ICompositionDebugSettings_Ptr is access all ICompositionDebugSettings;

   type ICompositionDebugSettingsStatics_Interface is interface and WinRt.IInspectable_Interface;
   type ICompositionDebugSettingsStatics is access all ICompositionDebugSettingsStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type CompositionDebugHeatMaps is new Ada.Finalization.Limited_Controlled with
      record
         m_ICompositionDebugHeatMaps : access Windows.UI.Composition.Diagnostics.ICompositionDebugHeatMaps;
      end record;
   type CompositionDebugHeatMaps_Ptr is access all CompositionDebugHeatMaps;

   type CompositionDebugSettings is new Ada.Finalization.Limited_Controlled with
      record
         m_ICompositionDebugSettings : access Windows.UI.Composition.Diagnostics.ICompositionDebugSettings;
      end record;
   type CompositionDebugSettings_Ptr is access all CompositionDebugSettings;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type CompositionDebugOverdrawContentKinds is (
      None_e,
      OffscreenRendered_e,
      Colors_e,
      Effects_e,
      Shadows_e,
      Lights_e,
      Surfaces_e,
      SwapChains_e,
      All_e
   );
   for CompositionDebugOverdrawContentKinds use (
      None_e => 0,
      OffscreenRendered_e => 1,
      Colors_e => 2,
      Effects_e => 4,
      Shadows_e => 8,
      Lights_e => 16,
      Surfaces_e => 32,
      SwapChains_e => 64,
      All_e => 4294967295
   );
   type CompositionDebugOverdrawContentKinds_Ptr is access all CompositionDebugOverdrawContentKinds;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type ICompositionDebugHeatMaps is interface and WinRt.IInspectable;

      function Hide
      (
         this : access ICompositionDebugHeatMaps_Interface;
         subtree : Windows.UI.Composition.IVisual
      )
      return WinRt.Hresult is abstract;

      function ShowMemoryUsage
      (
         this : access ICompositionDebugHeatMaps_Interface;
         subtree : Windows.UI.Composition.IVisual
      )
      return WinRt.Hresult is abstract;

      function ShowOverdraw
      (
         this : access ICompositionDebugHeatMaps_Interface;
         subtree : Windows.UI.Composition.IVisual;
         contentKinds : Windows.UI.Composition.Diagnostics.CompositionDebugOverdrawContentKinds
      )
      return WinRt.Hresult is abstract;

      function ShowRedraw
      (
         this : access ICompositionDebugHeatMaps_Interface;
         subtree : Windows.UI.Composition.IVisual
      )
      return WinRt.Hresult is abstract;

      IID_ICompositionDebugHeatMaps : aliased WinRt.IID := (3835465900, 12275, 22533, (113, 140, 183, 37, 238, 7, 101, 15 ));

   -----------------------------------------------------------------------------
   -- type ICompositionDebugSettings is interface and WinRt.IInspectable;

      function get_HeatMaps
      (
         this : access ICompositionDebugSettings_Interface;
         RetVal : access Windows.UI.Composition.Diagnostics.ICompositionDebugHeatMaps
      )
      return WinRt.Hresult is abstract;

      IID_ICompositionDebugSettings : aliased WinRt.IID := (674338942, 7554, 19768, (183, 183, 239, 209, 28, 123, 195, 209 ));

   -----------------------------------------------------------------------------
   -- type ICompositionDebugSettingsStatics is interface and WinRt.IInspectable;

      function TryGetSettings
      (
         this : access ICompositionDebugSettingsStatics_Interface;
         compositor : Windows.UI.Composition.ICompositor;
         RetVal : access Windows.UI.Composition.Diagnostics.ICompositionDebugSettings
      )
      return WinRt.Hresult is abstract;

      IID_ICompositionDebugSettingsStatics : aliased WinRt.IID := (1693196062, 27384, 19192, (184, 20, 200, 112, 253, 90, 149, 5 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CompositionDebugHeatMaps

   overriding procedure Initialize (this : in out CompositionDebugHeatMaps);
   overriding procedure Finalize (this : in out CompositionDebugHeatMaps);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CompositionDebugHeatMaps

   procedure Hide
   (
      this : in out CompositionDebugHeatMaps;
      subtree : Windows.UI.Composition.Visual'Class
   );

   procedure ShowMemoryUsage
   (
      this : in out CompositionDebugHeatMaps;
      subtree : Windows.UI.Composition.Visual'Class
   );

   procedure ShowOverdraw
   (
      this : in out CompositionDebugHeatMaps;
      subtree : Windows.UI.Composition.Visual'Class;
      contentKinds : Windows.UI.Composition.Diagnostics.CompositionDebugOverdrawContentKinds
   );

   procedure ShowRedraw
   (
      this : in out CompositionDebugHeatMaps;
      subtree : Windows.UI.Composition.Visual'Class
   );

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for CompositionDebugSettings

   overriding procedure Initialize (this : in out CompositionDebugSettings);
   overriding procedure Finalize (this : in out CompositionDebugSettings);

   -----------------------------------------------------------------------------
   -- Static Interfaces for CompositionDebugSettings

   function TryGetSettings
   (
      compositor : Windows.UI.Composition.Compositor'Class
   )
   return WinRt.Windows.UI.Composition.Diagnostics.CompositionDebugSettings;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for CompositionDebugSettings

   function get_HeatMaps
   (
      this : in out CompositionDebugSettings
   )
   return WinRt.Windows.UI.Composition.Diagnostics.CompositionDebugHeatMaps'Class;

end;
