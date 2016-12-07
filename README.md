Pi-GPIO-Reboot
==============

Press-to-reboot program for headless Raspberry Pi. Forked from Adafruit-GPIO-Halt

Installation
============

Clone repo and compile/install:

```
git clone https://github.com/alanpullen/Pi-GPIO-Reboot/
cd Pi-GPIO-Reboot
make
sudo make install
```

Then edit the `rc.local` file to start up our code automatically at boot time:

```
sudo nano /etc/rc.local
```

Just before final “`exit 0`” line, insert this line:

```
/usr/local/bin/gpio-reboot 26 &
```

Change the “26” to whatever GPIO pin your shutdown button is connected to (the other leg of the button should connect to a ground pin). On Pi models with the 40-pin header, GPIO 26 is at the close to very end (nearest the USB ports) with an adjacent ground pin, so it’s very convenient to connect a button across these two pins. On older Pi models with a 28-pin header, GPIO 7 is similarly situated at the end of the header.
