copy the <build script file> to Desktop


open terminal and type : 
> cd ~

> cd Desktop

run command 
> bash script-to-build-\&-install-OpenSC-and-libp11.sh

press **y** whenever it asks for (y/n)


**WAIT**

once all this has been completed, then

run command
> systemctl status pcscd

IF
> Inactive
>>> systemctl start pcscd

verify if active
> systemctl status pcscd

now you can use all the tools like

> opensc-tool --list-readers

> pkcs11-tool --list-slots

> pcsc_scan

