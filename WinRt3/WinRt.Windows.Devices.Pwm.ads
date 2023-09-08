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
limited with WinRt.Windows.Devices.Pwm.Provider;
with WinRt.Windows.Foundation;
with Ada.Finalization;
--------------------------------------------------------------------------------
package WinRt.Windows.Devices.Pwm is

   pragma PreElaborate;

   -----------------------------------------------------------------------------
   -- Forward Interface declarations
   -----------------------------------------------------------------------------

   type IPwmController_Interface is interface and WinRt.IInspectable_Interface;
   type IPwmController is access all IPwmController_Interface'Class;
   type IPwmController_Ptr is access all IPwmController;

   type IPwmControllerStatics_Interface is interface and WinRt.IInspectable_Interface;
   type IPwmControllerStatics is access all IPwmControllerStatics_Interface'Class;

   type IPwmControllerStatics2_Interface is interface and WinRt.IInspectable_Interface;
   type IPwmControllerStatics2 is access all IPwmControllerStatics2_Interface'Class;

   type IPwmControllerStatics3_Interface is interface and WinRt.IInspectable_Interface;
   type IPwmControllerStatics3 is access all IPwmControllerStatics3_Interface'Class;

   type IPwmPin_Interface is interface and WinRt.IInspectable_Interface;
   type IPwmPin is access all IPwmPin_Interface'Class;
   type IPwmPin_Ptr is access all IPwmPin;

   -----------------------------------------------------------------------------
   -- Class declarations
   -----------------------------------------------------------------------------

   type PwmController is new Ada.Finalization.Limited_Controlled with
      record
         m_IPwmController : access Windows.Devices.Pwm.IPwmController;
      end record;
   type PwmController_Ptr is access all PwmController;

   type PwmPin is new Ada.Finalization.Limited_Controlled with
      record
         m_IPwmPin : access Windows.Devices.Pwm.IPwmPin;
      end record;
   type PwmPin_Ptr is access all PwmPin;

   -----------------------------------------------------------------------------
   -- Enum declarations
   -----------------------------------------------------------------------------

   type PwmPulsePolarity is (
      ActiveHigh_e,
      ActiveLow_e
   );
   for PwmPulsePolarity use (
      ActiveHigh_e => 0,
      ActiveLow_e => 1
   );
   type PwmPulsePolarity_Ptr is access all PwmPulsePolarity;

   -----------------------------------------------------------------------------
   -- Interface declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- type IPwmController is interface and WinRt.IInspectable;

      function get_PinCount
      (
         this : access IPwmController_Interface;
         RetVal : access WinRt.Int32
      )
      return WinRt.Hresult is abstract;

      function get_ActualFrequency
      (
         this : access IPwmController_Interface;
         RetVal : access WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function SetDesiredFrequency
      (
         this : access IPwmController_Interface;
         desiredFrequency : WinRt.Double;
         RetVal : access WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function get_MinFrequency
      (
         this : access IPwmController_Interface;
         RetVal : access WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function get_MaxFrequency
      (
         this : access IPwmController_Interface;
         RetVal : access WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function OpenPin
      (
         this : access IPwmController_Interface;
         pinNumber : WinRt.Int32;
         RetVal : access Windows.Devices.Pwm.IPwmPin
      )
      return WinRt.Hresult is abstract;

      IID_IPwmController : aliased WinRt.IID := (3294583941, 53992, 17103, (155, 214, 207, 94, 208, 41, 230, 167 ));

   -----------------------------------------------------------------------------
   -- type IPwmControllerStatics is interface and WinRt.IInspectable;

      function GetControllersAsync
      (
         this : access IPwmControllerStatics_Interface;
         provider : Windows.Devices.Pwm.Provider.IPwmProvider;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPwmControllerStatics : aliased WinRt.IID := (1113832865, 35142, 17412, (189, 72, 129, 221, 18, 74, 244, 217 ));

   -----------------------------------------------------------------------------
   -- type IPwmControllerStatics2 is interface and WinRt.IInspectable;

      function GetDefaultAsync
      (
         this : access IPwmControllerStatics2_Interface;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPwmControllerStatics2 : aliased WinRt.IID := (1157389087, 61721, 19421, (151, 173, 247, 110, 249, 134, 115, 109 ));

   -----------------------------------------------------------------------------
   -- type IPwmControllerStatics3 is interface and WinRt.IInspectable;

      function GetDeviceSelector
      (
         this : access IPwmControllerStatics3_Interface;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function GetDeviceSelector
      (
         this : access IPwmControllerStatics3_Interface;
         friendlyName : WinRt.HString;
         RetVal : access WinRt.HString
      )
      return WinRt.Hresult is abstract;

      function FromIdAsync
      (
         this : access IPwmControllerStatics3_Interface;
         deviceId : WinRt.HString;
         RetVal : access GenericObject
      )
      return WinRt.Hresult is abstract;

      IID_IPwmControllerStatics3 : aliased WinRt.IID := (2992117873, 553, 17220, (174, 63, 155, 124, 208, 230, 107, 148 ));

   -----------------------------------------------------------------------------
   -- type IPwmPin is interface and WinRt.IInspectable;

      function get_Controller
      (
         this : access IPwmPin_Interface;
         RetVal : access Windows.Devices.Pwm.IPwmController
      )
      return WinRt.Hresult is abstract;

      function GetActiveDutyCyclePercentage
      (
         this : access IPwmPin_Interface;
         RetVal : access WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function SetActiveDutyCyclePercentage
      (
         this : access IPwmPin_Interface;
         dutyCyclePercentage : WinRt.Double
      )
      return WinRt.Hresult is abstract;

      function get_Polarity
      (
         this : access IPwmPin_Interface;
         RetVal : access Windows.Devices.Pwm.PwmPulsePolarity
      )
      return WinRt.Hresult is abstract;

      function put_Polarity
      (
         this : access IPwmPin_Interface;
         value : Windows.Devices.Pwm.PwmPulsePolarity
      )
      return WinRt.Hresult is abstract;

      function Start
      (
         this : access IPwmPin_Interface
      )
      return WinRt.Hresult is abstract;

      function Stop
      (
         this : access IPwmPin_Interface
      )
      return WinRt.Hresult is abstract;

      function get_IsStarted
      (
         this : access IPwmPin_Interface;
         RetVal : access WinRt.Boolean
      )
      return WinRt.Hresult is abstract;

      IID_IPwmPin : aliased WinRt.IID := (580333000, 50895, 18465, (183, 249, 198, 69, 79, 182, 175, 121 ));

   -----------------------------------------------------------------------------
   -- Class method declarations
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PwmController

   overriding procedure Initialize (this : in out PwmController);
   overriding procedure Finalize (this : in out PwmController);

   -----------------------------------------------------------------------------
   -- Static Interfaces for PwmController

   function GetDefaultAsync
   return WinRt.Windows.Devices.Pwm.PwmController;

   function GetDeviceSelector
   return WinRt.WString;

   function GetDeviceSelector
   (
      friendlyName : WinRt.WString
   )
   return WinRt.WString;

   function FromIdAsync
   (
      deviceId : WinRt.WString
   )
   return WinRt.Windows.Devices.Pwm.PwmController;

   function GetControllersAsync
   (
      provider : Windows.Devices.Pwm.Provider.IPwmProvider
   )
   return WinRt.GenericObject;

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PwmController

   function get_PinCount
   (
      this : in out PwmController
   )
   return WinRt.Int32;

   function get_ActualFrequency
   (
      this : in out PwmController
   )
   return WinRt.Double;

   function SetDesiredFrequency
   (
      this : in out PwmController;
      desiredFrequency : WinRt.Double
   )
   return WinRt.Double;

   function get_MinFrequency
   (
      this : in out PwmController
   )
   return WinRt.Double;

   function get_MaxFrequency
   (
      this : in out PwmController
   )
   return WinRt.Double;

   function OpenPin
   (
      this : in out PwmController;
      pinNumber : WinRt.Int32
   )
   return WinRt.Windows.Devices.Pwm.PwmPin'Class;

   -----------------------------------------------------------------------------
   -- RuntimeClass Initialization/Finalization for PwmPin

   overriding procedure Initialize (this : in out PwmPin);
   overriding procedure Finalize (this : in out PwmPin);

   -----------------------------------------------------------------------------
   -- Implemented Interfaces for PwmPin

   function get_Controller
   (
      this : in out PwmPin
   )
   return WinRt.Windows.Devices.Pwm.PwmController'Class;

   function GetActiveDutyCyclePercentage
   (
      this : in out PwmPin
   )
   return WinRt.Double;

   procedure SetActiveDutyCyclePercentage
   (
      this : in out PwmPin;
      dutyCyclePercentage : WinRt.Double
   );

   function get_Polarity
   (
      this : in out PwmPin
   )
   return WinRt.Windows.Devices.Pwm.PwmPulsePolarity;

   procedure put_Polarity
   (
      this : in out PwmPin;
      value : Windows.Devices.Pwm.PwmPulsePolarity
   );

   procedure Start
   (
      this : in out PwmPin
   );

   procedure Stop
   (
      this : in out PwmPin
   );

   function get_IsStarted
   (
      this : in out PwmPin
   )
   return WinRt.Boolean;

   procedure Close
   (
      this : in out PwmPin
   );

end;
