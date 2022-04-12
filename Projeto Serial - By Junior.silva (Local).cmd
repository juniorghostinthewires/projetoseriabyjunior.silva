@echo off

mode 15,2

title [~]

set FILE="%USERPROFILE%\Desktop\informacoes_da_maquina.txt"


wmic computersystem get name >%FILE%

wmic bios get serialnumber >>%FILE%


wmic nic where PhysicalAdapter=True get MACAddress >>%FILE%



