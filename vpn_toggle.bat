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
:: Answer.txt is a file containing your username and password
:: for th vpn separated by a newline character. Your path to
:: the Cisco Anyconnect CLI application will vary depending 
:: on whether you have 32bit or 64bit OS.

"C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe" -s connect example.vpn.com < "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\answer.txt"

exit

:DISCONNECT
"C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe" disconnect
