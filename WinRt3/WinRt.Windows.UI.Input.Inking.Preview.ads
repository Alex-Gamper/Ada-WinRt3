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
limited with WinRt.Windows.UI.Composition;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.UI.Input.Inking.Preview is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPalmRejectionDelayZonePreview_Interface is interface and WinRt.IInspectable_Interface;
   type IPalmRejectionDelayZonePreview is access all IPalmRejectionDelayZonePreview_Interface'Class;
   type IPalmRejectionDelayZonePreview_Ptr is access all IPalmRejectionDelayZonePreview;

   type IPalmRejectionDelayZonePreviewStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPalmRejectionDelayZonePreviewStatics is access all IPalmRejectionDelayZonePreviewStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type PalmRejectionDelayZonePreview is new Ada.Finalization.Limited_Controlled with
      record
         m_IPalmRejectionDelayZonePreview : access Windows.UI.Input.Inking.Preview.IPalmRejectionDelayZonePreview;
      end record;
   type PalmRejectionDelayZonePreview_Ptr is access all PalmRejectionDelayZonePreview;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPalmRejectionDelayZonePreview is interface and WinRt.IInspectable;

      IID_IPalmRejectionDelayZonePreview : aliased WinRt.IID := (1656002251, 21405, 21315, (166, 95, 65, 245, 48, 14, 199, 12 ));

   -----------------------------------------------------------------------------
   -- type IPalmRejectionDelayZonePreviewStatics is interface and WinRt.IInspectable;

      function CreateForVisual
      (
         this : access IPalmRejectionDelayZonePreviewStatics_Interface;
         inputPanelVisual : Windows.UI.Composition.IVisual;
         inputPanelRect : Windows.Foundation.Rect;
         RetVal : access Windows.UI.Input.Inking.Preview.IPalmRejectionDelayZonePreview
      )
      return WinRt.Hresult is abstract;

      function CreateForVisual
      (
         this : access IPalmRejectionDelayZonePreviewStatics_Interface;
         inputPanelVisual : Windows.UI.Composition.IVisual;
         inputPanelRect : Windows.Foundation.Rect;
         viewportVisual : Windows.UI.Composition.IVisual;
         viewportRect : Windows.Foundation.Rect;
         RetVal : access Windows.UI.Input.Inking.Preview.IPalmRejectionDelayZonePreview
      )
      return WinRt.Hresult is abstract;

      IID_IPalmRejectionDelayZonePreviewStatics : aliased WinRt.IID := (3455016672, 37840, 21417, (143, 14, 154, 55, 159, 143, 117, 48 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PalmRejectionDelayZonePreview

   overriding procedure Initialize (this : in out PalmRejectionDelayZonePreview);
   overriding procedure Finalize (this : in out PalmRejectionDelayZonePreview);

   -----------------------------------------------------------------------------
   -- Static Interfaces for PalmRejectionDelayZonePreview

   function CreateForVisual
   (
      inputPanelVisual : Windows.UI.Composition.Visual'Class;
      inputPanelRect : Windows.Foundation.Rect
   )
   return WinRt.Windows.UI.Input.Inking.Preview.PalmRejectionDelayZonePreview;

   function CreateForVisual
   (
      inputPanelVisual : Windows.UI.Composition.Visual'Class;
      inputPanelRect : Windows.Foundation.Rect;
      viewportVisual : Windows.UI.Composition.Visual'Class;
      viewportRect : Windows.Foundation.Rect
   )
   return WinRt.Windows.UI.Input.Inking.Preview.PalmRejectionDelayZonePreview;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PalmRejectionDelayZonePreview

   procedure Close
   (
      this : in out PalmRejectionDelayZonePreview
   );

end;
