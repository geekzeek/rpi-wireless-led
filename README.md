# rpi-wireless-led
Implementation of wireless LED control for Raspberry Pi, based on Ad-Hoc networking
This project uses https://github.com/simondlevy/RPiAdHocWiFi

## Installation
- Make sure you have make installed.
- Clone this repository onto your RPi 3 or RPi Zero W.
- `cd` into the base level of the repository.
- To configure the RPi as the leader, run `sudo make install-leader`
- To configure the RPi as a follower, run `sudo make install-follower`
- You can uninstall with:
    - `sudo make uninstall-leader`
    - `sudo make uninstall-follower`