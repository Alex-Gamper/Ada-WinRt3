cd WinRt3
cd x64\debug\build
del *.std*
del *.obj
for %%i in (*.o) do convertDwarf %%~ni
del WinRt.Windows.UI.Xaml.Controls.obj
copy WinRt.Windows.UI.Xaml.Controls.o WinRt.Windows.UI.Xaml.Controls.obj
cd ..
link /lib /machine:x64 /nodefaultlib /out:WinRt3.lib .\Build\*.obj
cd ..\..\..


rem mdmerge /n:1 /v /partial /i .\input /metadata_dir .\Reference /o .\tmp