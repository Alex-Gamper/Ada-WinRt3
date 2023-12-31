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
limited with WinRt.Windows.Networking.Connectivity;
limited with WinRt.Windows.Networking.Sockets;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Networking.ServiceDiscovery.Dnssd is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IDnssdRegistrationResult_Interface is interface and WinRt.IInspectable_Interface;
   type IDnssdRegistrationResult is access all IDnssdRegistrationResult_Interface'Class;
   type IDnssdRegistrationResult_Ptr is access all IDnssdRegistrationResult;

   type IDnssdServiceInstance_Interface is interface and WinRt.IInspectable_Interface;
   type IDnssdServiceInstance is access all IDnssdServiceInstance_Interface'Class;
   type IDnssdServiceInstance_Ptr is access all IDnssdServiceInstance;
   type IDnssdServiceInstance_Array is array (Natural range <>) of IDnssdServiceInstance;

   type IDnssdServiceInstanceFactory_Interface is interface and WinRt.IInspectable_Interface;
   type IDnssdServiceInstanceFactory is access all IDnssdServiceInstanceFactory_Interface'Class;

   type IDnssdServiceWatcher_Interface is interface and WinRt.IInspectable_Interface;
   type IDnssdServiceWatcher is access all IDnssdServiceWatcher_Interface'Class;
   type IDnssdServiceWatcher_Ptr is access all IDnssdServiceWatcher;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type DnssdRegistrationResult is new Ada.Finalization.Limited_Controlled with
      record
         m_IDnssdRegistrationResult : access Windows.Networking.ServiceDiscovery.Dnssd.IDnssdRegistrationResult;
      end record;
   type DnssdRegistrationResult_Ptr is access all DnssdRegistrationResult;

   type DnssdServiceInstance is new Ada.Finalization.Limited_Controlled with
      record
         m_IDnssdServiceInstance : access Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance;
      end record;
   type DnssdServiceInstance_Ptr is access all DnssdServiceInstance;

   type DnssdServiceInstanceCollection is new Ada.Finalization.Limited_Controlled with
      record
         m_GenericObject : access GenericObject;
      end record;
   type DnssdServiceInstanceCollection_Ptr is access all DnssdServiceInstanceCollection;

   type DnssdServiceWatcher is new Ada.Finalization.Limited_Controlled with
      record
         m_IDnssdServiceWatcher : access Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceWatcher;
      end record;
   type DnssdServiceWatcher_Ptr is access all DnssdServiceWatcher;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type DnssdRegistrationStatus is (
      Success_e,
      InvalidServiceName_e,
      ServerError_e,
      SecurityError_e
   );
   for DnssdRegistrationStatus use (
      Success_e => 0,
      InvalidServiceName_e => 1,
      ServerError_e => 2,
      SecurityError_e => 3
   );
   type DnssdRegistrationStatus_Ptr is access all DnssdRegistrationStatus;

   type DnssdServiceWatcherStatus is (
      Created_e,
      Started_e,
      EnumerationCompleted_e,
      Stopping_e,
      Stopped_e,
      Aborted_e
   );
   for DnssdServiceWatcherStatus use (
      Created_e => 0,
      Started_e => 1,
      EnumerationCompleted_e => 2,
      Stopping_e => 3,
      Stopped_e => 4,
      Aborted_e => 5
   );
   type DnssdServiceWatcherStatus_Ptr is access all DnssdServiceWatcherStatus;

   -----------------------------------------------------------------------------
   -- Generic package declarations
   -----------------------------------------------------------------------------

   package IMap_HString_HString is new WinRt.Windows.Foundation.Collections.IMap (WinRt.HString, WinRt.HString);
   IID_IMap_HString_HString : aliased WinRt.IID := (3581611631, 2887, 21164, (165, 131, 93, 204, 88, 25, 97, 95 ));
   function QInterface_IMap_HString_HString is new Generic_QueryInterface (GenericObject_Interface, IMap_HString_HString.Kind, IID_IMap_HString_HString'Access);

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IDnssdRegistrationResult is interface and WinRt.IInspectable;

      function get_Status
      (
         this : access IDnssdRegistrationResult_Interface;
         RetVal : access Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationStatus
      )
      return WinRt.Hresult is abstract;

      function get_IPAddress
      (
         this : access IDnssdRegistrationResult_Interface;
         RetVal : access Windows.Networking.IHostName
      )
      return WinRt.Hresult is abstract;

      function get_HasInstanceNameChanged
      (
         this : access IDnssdRegistrationResult_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IDnssdRegistrationResult : aliased WinRt.IID := (1031301842, 58886, 21328, (115, 234, 126, 151, 240, 102, 22, 47 ));

   -----------------------------------------------------------------------------
   -- type IDnssdServiceInstance is interface and WinRt.IInspectable;

      function get_DnssdServiceInstanceName
      (
         this : access IDnssdServiceInstance_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function put_DnssdServiceInstanceName
      (
         this : access IDnssdServiceInstance_Interface;
         value : WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function get_HostName
      (
         this : access IDnssdServiceInstance_Interface;
         RetVal : access Windows.Networking.IHostName
      )
      return WinRt.Hresult is abstract;

      function put_HostName
      (
         this : access IDnssdServiceInstance_Interface;
         value : Windows.Networking.IHostName
      )
      return WinRt.Hresult is abstract;

      function get_Port
      (
         this : access IDnssdServiceInstance_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function put_Port
      (
         this : access IDnssdServiceInstance_Interface;
         value : WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_Priority
      (
         this : access IDnssdServiceInstance_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function put_Priority
      (
         this : access IDnssdServiceInstance_Interface;
         value : WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_Weight
      (
         this : access IDnssdServiceInstance_Interface;
         RetVal : access WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function put_Weight
      (
         this : access IDnssdServiceInstance_Interface;
         value : WinRt.UInt16
      )
      return WinRt.Hresult is abstract;

      function get_TextAttributes
      (
         this : access IDnssdServiceInstance_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RegisterStreamSocketListenerAsync
      (
         this : access IDnssdServiceInstance_Interface;
         socket : Windows.Networking.Sockets.IStreamSocketListener;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RegisterStreamSocketListenerAsync
      (
         this : access IDnssdServiceInstance_Interface;
         socket : Windows.Networking.Sockets.IStreamSocketListener;
         adapter : Windows.Networking.Connectivity.INetworkAdapter;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RegisterDatagramSocketAsync
      (
         this : access IDnssdServiceInstance_Interface;
         socket : Windows.Networking.Sockets.IDatagramSocket;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      function RegisterDatagramSocketAsync
      (
         this : access IDnssdServiceInstance_Interface;
         socket : Windows.Networking.Sockets.IDatagramSocket;
         adapter : Windows.Networking.Connectivity.INetworkAdapter;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IDnssdServiceInstance : aliased WinRt.IID := (3796294526, 39077, 19617, (185, 228, 194, 83, 211, 60, 53, 255 ));

   -----------------------------------------------------------------------------
   -- type IDnssdServiceInstanceFactory is interface and WinRt.IInspectable;

      function Create
      (
         this : access IDnssdServiceInstanceFactory_Interface;
         dnssdServiceInstanceName : WinRt.HString;
         hostName : Windows.Networking.IHostName;
         port : WinRt.UInt16;
         RetVal : access Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance
      )
      return WinRt.Hresult is abstract;

      IID_IDnssdServiceInstanceFactory : aliased WinRt.IID := (1823498657, 50296, 17201, (150, 132, 74, 242, 24, 108, 10, 43 ));

   -----------------------------------------------------------------------------
   -- type IDnssdServiceWatcher is interface and WinRt.IInspectable;

      function add_Added
      (
         this : access IDnssdServiceWatcher_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_Added
      (
         this : access IDnssdServiceWatcher_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_EnumerationCompleted
      (
         this : access IDnssdServiceWatcher_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_EnumerationCompleted
      (
         this : access IDnssdServiceWatcher_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function add_Stopped
      (
         this : access IDnssdServiceWatcher_Interface;
         handler : GenericObject;
         RetVal : access Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function remove_Stopped
      (
         this : access IDnssdServiceWatcher_Interface;
         token : Windows.Foundation.EventRegistrationToken
      )
      return WinRt.Hresult is abstract;

      function get_Status
      (
         this : access IDnssdServiceWatcher_Interface;
         RetVal : access Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcherStatus
      )
      return WinRt.Hresult is abstract;

      function Start
      (
         this : access IDnssdServiceWatcher_Interface
      )
      return WinRt.Hresult is abstract;

      function Stop
      (
         this : access IDnssdServiceWatcher_Interface
      )
      return WinRt.Hresult is abstract;

      IID_IDnssdServiceWatcher : aliased WinRt.IID := (3426015681, 56189, 19305, (152, 61, 198, 248, 63, 32, 86, 130 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DnssdRegistrationResult

   overriding procedure Initialize (this : in out DnssdRegistrationResult);
   overriding procedure Finalize (this : in out DnssdRegistrationResult);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for DnssdRegistrationResult

   function Constructor return DnssdRegistrationResult;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DnssdRegistrationResult

   function get_Status
   (
      this : in out DnssdRegistrationResult
   )
   return WinRt.Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationStatus;

   function get_IPAddress
   (
      this : in out DnssdRegistrationResult
   )
   return WinRt.Windows.Networking.HostName'Class;

   function get_HasInstanceNameChanged
   (
      this : in out DnssdRegistrationResult
   )
   return WinRt.Boolean;

   function ToString
   (
      this : in out DnssdRegistrationResult
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DnssdServiceInstance

   overriding procedure Initialize (this : in out DnssdServiceInstance);
   overriding procedure Finalize (this : in out DnssdServiceInstance);

   -----------------------------------------------------------------------------
   -- RuntimeClass Constructors for DnssdServiceInstance

   function Constructor
   (
      dnssdServiceInstanceName : WinRt.WString;
      hostName : Windows.Networking.HostName'Class;
      port : WinRt.UInt16
   )
   return DnssdServiceInstance;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DnssdServiceInstance

   function get_DnssdServiceInstanceName
   (
      this : in out DnssdServiceInstance
   )
   return WinRt.WString;

   procedure put_DnssdServiceInstanceName
   (
      this : in out DnssdServiceInstance;
      value : WinRt.WString
   );

   function get_HostName
   (
      this : in out DnssdServiceInstance
   )
   return WinRt.Windows.Networking.HostName'Class;

   procedure put_HostName
   (
      this : in out DnssdServiceInstance;
      value : Windows.Networking.HostName'Class
   );

   function get_Port
   (
      this : in out DnssdServiceInstance
   )
   return WinRt.UInt16;

   procedure put_Port
   (
      this : in out DnssdServiceInstance;
      value : WinRt.UInt16
   );

   function get_Priority
   (
      this : in out DnssdServiceInstance
   )
   return WinRt.UInt16;

   procedure put_Priority
   (
      this : in out DnssdServiceInstance;
      value : WinRt.UInt16
   );

   function get_Weight
   (
      this : in out DnssdServiceInstance
   )
   return WinRt.UInt16;

   procedure put_Weight
   (
      this : in out DnssdServiceInstance;
      value : WinRt.UInt16
   );

   function get_TextAttributes
   (
      this : in out DnssdServiceInstance
   )
   return IMap_HString_HString.Kind;

   function RegisterStreamSocketListenerAsync
   (
      this : in out DnssdServiceInstance;
      socket : Windows.Networking.Sockets.StreamSocketListener'Class
   )
   return WinRt.Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult'Class;

   function RegisterStreamSocketListenerAsync
   (
      this : in out DnssdServiceInstance;
      socket : Windows.Networking.Sockets.StreamSocketListener'Class;
      adapter : Windows.Networking.Connectivity.NetworkAdapter'Class
   )
   return WinRt.Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult'Class;

   function RegisterDatagramSocketAsync
   (
      this : in out DnssdServiceInstance;
      socket : Windows.Networking.Sockets.DatagramSocket'Class
   )
   return WinRt.Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult'Class;

   function RegisterDatagramSocketAsync
   (
      this : in out DnssdServiceInstance;
      socket : Windows.Networking.Sockets.DatagramSocket'Class;
      adapter : Windows.Networking.Connectivity.NetworkAdapter'Class
   )
   return WinRt.Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult'Class;

   function ToString
   (
      this : in out DnssdServiceInstance
   )
   return WinRt.WString;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DnssdServiceInstanceCollection

   overriding procedure Initialize (this : in out DnssdServiceInstanceCollection);
   overriding procedure Finalize (this : in out DnssdServiceInstanceCollection);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DnssdServiceInstanceCollection

   -- Generic Interface Windows.Foundation.Collections.IVectorView`1<Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance>
   function GetAt
   (
      this : in out DnssdServiceInstanceCollection;
      index : WinRt.UInt32
   )
   return WinRt.Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance'Class;

   function get_Size
   (
      this : in out DnssdServiceInstanceCollection
   )
   return WinRt.UInt32;

   function IndexOf
   (
      this : in out DnssdServiceInstanceCollection;
      value : Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance'Class;
      index : WinRt.UInt32_Ptr
   )
   return WinRt.Boolean;

   function GetMany
   (
      this : in out DnssdServiceInstanceCollection;
      startIndex : WinRt.UInt32;
      items : Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance_Array
   )
   return WinRt.UInt32;

   -- Generic Interface Windows.Foundation.Collections.IIterable`1<Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance>
   function First
   (
      this : in out DnssdServiceInstanceCollection
   )
   return WinRt.GenericObject;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for DnssdServiceWatcher

   overriding procedure Initialize (this : in out DnssdServiceWatcher);
   overriding procedure Finalize (this : in out DnssdServiceWatcher);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for DnssdServiceWatcher

   function add_Added
   (
      this : in out DnssdServiceWatcher;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_Added
   (
      this : in out DnssdServiceWatcher;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_EnumerationCompleted
   (
      this : in out DnssdServiceWatcher;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_EnumerationCompleted
   (
      this : in out DnssdServiceWatcher;
      token : Windows.Foundation.EventRegistrationToken
   );

   function add_Stopped
   (
      this : in out DnssdServiceWatcher;
      handler : GenericObject
   )
   return WinRt.Windows.Foundation.EventRegistrationToken;

   procedure remove_Stopped
   (
      this : in out DnssdServiceWatcher;
      token : Windows.Foundation.EventRegistrationToken
   );

   function get_Status
   (
      this : in out DnssdServiceWatcher
   )
   return WinRt.Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcherStatus;

   procedure Start
   (
      this : in out DnssdServiceWatcher
   );

   procedure Stop
   (
      this : in out DnssdServiceWatcher
   );

end;
