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
limited with WinRt.Windows.Graphics.Imaging;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.ApplicationModel.Preview.InkWorkspace is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IInkWorkspaceHostedAppManager_Interface is interface and WinRt.IInspectable_Interface;
   type IInkWorkspaceHostedAppManager is access all IInkWorkspaceHostedAppManager_Interface'Class;
   type IInkWorkspaceHostedAppManager_Ptr is access all IInkWorkspaceHostedAppManager;

   type IInkWorkspaceHostedAppManagerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IInkWorkspaceHostedAppManagerStatics is access all IInkWorkspaceHostedAppManagerStatics_Interface'Class;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type InkWorkspaceHostedAppManager is new Ada.Finalization.Limited_Controlled with
      record
         m_IInkWorkspaceHostedAppManager : access Windows.ApplicationModel.Preview.InkWorkspace.IInkWorkspaceHostedAppManager;
      end record;
   type InkWorkspaceHostedAppManager_Ptr is access all InkWorkspaceHostedAppManager;

   -----------------------------------------------------------------------------
   -- Record declarations
   -----------------------------------------------------------------------------

   type PreviewInkWorkspaceContract is record
      null;
   end record with Convention => C_Pass_By_Copy;
   type PreviewInkWorkspaceContract_Ptr is access all PreviewInkWorkspaceContract;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IInkWorkspaceHostedAppManager is interface and WinRt.IInspectable;

      function SetThumbnailAsync
      (
         this : access IInkWorkspaceHostedAppManager_Interface;
         bitmap : Windows.Graphics.Imaging.ISoftwareBitmap;
         RetVal : access Windows.Foundation.IAsyncAction
      )
      return WinRt.Hresult is abstract;

      IID_IInkWorkspaceHostedAppManager : aliased WinRt.IID := (4262099344, 24153, 19383, (138, 99, 125, 33, 140, 217, 99, 0 ));

   -----------------------------------------------------------------------------
   -- type IInkWorkspaceHostedAppManagerStatics is interface and WinRt.IInspectable;

      function GetForCurrentApp
      (
         this : access IInkWorkspaceHostedAppManagerStatics_Interface;
         RetVal : access Windows.ApplicationModel.Preview.InkWorkspace.IInkWorkspaceHostedAppManager
      )
      return WinRt.Hresult is abstract;

      IID_IInkWorkspaceHostedAppManagerStatics : aliased WinRt.IID := (3422391493, 41314, 19396, (132, 238, 232, 113, 109, 82, 51, 197 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for InkWorkspaceHostedAppManager

   overriding procedure Initialize (this : in out InkWorkspaceHostedAppManager);
   overriding procedure Finalize (this : in out InkWorkspaceHostedAppManager);

   -----------------------------------------------------------------------------
   -- Static Interfaces for InkWorkspaceHostedAppManager

   function GetForCurrentApp
   return WinRt.Windows.ApplicationModel.Preview.InkWorkspace.InkWorkspaceHostedAppManager;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for InkWorkspaceHostedAppManager

   procedure SetThumbnailAsync
   (
      this : in out InkWorkspaceHostedAppManager;
      bitmap : Windows.Graphics.Imaging.SoftwareBitmap'Class
   );

end;
