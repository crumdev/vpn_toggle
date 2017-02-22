@echo off

:: Ping an internal domain to check if you
:: are already connected to the vpn.

Ping example.domain.com -n 1 -w 1000

:: Check if error was given from Ping Command
:: If errorlevel 1 then ping failed and you 
:: are not on the work network. It will 
:: then connect you or disconnect you
:: if the ping succeeds.
 
IF errorlevel 1 (
	GOTO:CONNECT
) ELSE ( 
	GOTO:DISCONNECT
)

:CONNECT
vpncli.exe -s connect vpn.acshcp.com < "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\answer.txt"
exit

:DISCONNECT
vpncli.exe disconnect