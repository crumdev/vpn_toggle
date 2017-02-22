# VPN Toggle for Cisco Anyconnect CLI

## Instructions  
- Download the batch file to your computer. Change *example.domain.com* on **line 6** to either a domain or ip address that is only accessible while you are connected to your work vpn.
- Change *example.vpn.com* on **line 26** to the IP address or hostname of the vpn you use for work.
- If you want your username and password to be entered automatically then create a text file named anything you would like and replace *"C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\answer.txt"* on **line 26** with the path to your text file.
  - In the text file put your username on the first line and password on the second line.
- Make sure that the path to vpncli.exe is correct and change as needed.
- Once the script has been modified to your need just save it and double click to run it or use it in combination with your task scheduler and triggers to further expand it's use.