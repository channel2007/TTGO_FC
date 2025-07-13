@echo off
REM Usage: go.bat COMx output_filename.bin

SET PORT=%1

IF "%PORT%"=="" (
    echo Error: Please specify COM port, e.g. COM3
    goto :eof
)

echo [1/3] Creating SPIFFS image...
mkspiffs.exe -c data -b 4096 -p 256 -s 0x170000 temp.bin
IF ERRORLEVEL 1 (
    echo Failed to create SPIFFS image.
    goto :eof
)

echo [2/3] Flashing to ESP32...
esptool.exe --chip esp32 --port %PORT% --baud 921600 write_flash 0x290000 temp.bin
IF ERRORLEVEL 1 (
    echo Flash failed.
    goto :eof
)

echo [3/3] Done!
del /f /q temp.bin