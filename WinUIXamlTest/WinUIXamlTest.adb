--------------------------------------------------------------------------------
with WinMainStartup;                            use WinMainStartup;
with WinUI3;                                    use WinUI3;
with WinUI3.Windows.UI.Xaml;                    use WinUI3.Windows.UI.Xaml; 
with AppOverrides;                              use AppOverrides;
with System;
with AppInitCallback;

--------------------------------------------------------------------------------
procedure WinUIXamlTest is
    
    
    Hr              : HResult := 0;    
    Application     : ApplicationInitializationCallback := new ApplicationInitializationCallback_Delegate (AppInitCallback.Callback'access);
    Temp            : WinUI3.UInt32;
        
begin

    Hr := RoInitialize; 
    if Hr = 0 then
        declare
            -- App_Current : WinUI3.Windows.UI.XAML.Application := get_Current;
        begin
            null;
        end;
        Start (Application);
        RoUninitialize;
    end if;

exception when others =>
    raise;
    
end;