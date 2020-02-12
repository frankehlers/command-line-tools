
rapsi-config
- change password
- update
- set hostname
- set locale / timezone / keyboard / wifi country

reboot

set static ip (https://www.raspberrypi.org/documentation/configuration/tcpip/README.md)

    in file: /etc/dhcpcd.conf 

    interface eth0
    static ip_address=192.168.0.4/24    
    static routers=192.168.0.254
    static domain_name_servers=192.168.0.254 8.8.8.8
  
enable ssh public key authentication  // maybe first step?
https://wiki.ubuntuusers.de/SSH/#Authentifizierung-ueber-Public-Keys
