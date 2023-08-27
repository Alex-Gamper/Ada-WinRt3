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
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
--------------------------------------------------------------------------------
package body WinRt.Windows.Phone.Media.Devices is

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for AudioRoutingManager

   procedure Initialize (this : in out AudioRoutingManager) is
   begin
      null;
   end;

   procedure Finalize (this : in out AudioRoutingManager) is
      RefCount : WinRt.UInt32 := 0;
      procedure Free is new Ada.Unchecked_Deallocation (IAudioRoutingManager, IAudioRoutingManager_Ptr);
   begin
      if this.m_IAudioRoutingManager /= null then
         if this.m_IAudioRoutingManager.all /= null then
            RefCount := this.m_IAudioRoutingManager.all.Release;
            Free (this.m_IAudioRoutingManager);
         end if;
      end if;
   end;

   -----------------------------------------------------------------------------
   -- Static Interfaces for AudioRoutingManager

   function GetDefault
   return WinRt.Windows.Phone.Media.Devices.AudioRoutingManager is
      Hr               : WinRt.HResult := S_OK;
      m_hString        : WinRt.HString := To_HString ("Windows.Phone.Media.Devices.AudioRoutingManager");
      m_Factory        : access WinRt.Windows.Phone.Media.Devices.IAudioRoutingManagerStatics_Interface'Class := null;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Phone.Media.Devices.IAudioRoutingManager;
   begin
      return RetVal : WinRt.Windows.Phone.Media.Devices.AudioRoutingManager do
         Hr := RoGetActivationFactory (m_hString, IID_IAudioRoutingManagerStatics'Access , m_Factory'Address);
         if Hr = S_OK then
            Hr := m_Factory.GetDefault (m_ComRetVal'Access);
            m_RefCount := m_Factory.Release;
            Retval.m_IAudioRoutingManager := new Windows.Phone.Media.Devices.IAudioRoutingManager;
            Retval.m_IAudioRoutingManager.all := m_ComRetVal;
         end if;
         Hr := WindowsDeleteString (m_hString);
      end return;
   end;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for AudioRoutingManager

   function GetAudioEndpoint
   (
      this : in out AudioRoutingManager
   )
   return WinRt.Windows.Phone.Media.Devices.AudioRoutingEndpoint is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Phone.Media.Devices.AudioRoutingEndpoint;
   begin
      Hr := this.m_IAudioRoutingManager.all.GetAudioEndpoint (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure SetAudioEndpoint
   (
      this : in out AudioRoutingManager;
      endpoint : Windows.Phone.Media.Devices.AudioRoutingEndpoint
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IAudioRoutingManager.all.SetAudioEndpoint (endpoint);
   end;

   function add_AudioEndpointChanged
   (
      this : in out AudioRoutingManager;
      endpointChangeHandler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Foundation.EventRegistrationToken;
   begin
      Hr := this.m_IAudioRoutingManager.all.add_AudioEndpointChanged (endpointChangeHandler, m_ComRetVal'Access);
      return m_ComRetVal;
   end;

   procedure remove_AudioEndpointChanged
   (
      this : in out AudioRoutingManager;
      token : Windows.Foundation.EventRegistrationToken
   ) is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
   begin
      Hr := this.m_IAudioRoutingManager.all.remove_AudioEndpointChanged (token);
   end;

   function get_AvailableAudioEndpoints
   (
      this : in out AudioRoutingManager
   )
   return WinRt.Windows.Phone.Media.Devices.AvailableAudioRoutingEndpoints is
      Hr               : WinRt.HResult := S_OK;
      m_RefCount       : WinRt.UInt32 := 0;
      m_ComRetVal      : aliased Windows.Phone.Media.Devices.AvailableAudioRoutingEndpoints;
   begin
      Hr := this.m_IAudioRoutingManager.all.get_AvailableAudioEndpoints (m_ComRetVal'Access);
      return m_ComRetVal;
   end;

end;