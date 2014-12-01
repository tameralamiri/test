# Install and Setup ntp on BBB

#!/bin/bash

# 1. Installing ntp packages
sudo apt-get install ntp

# 2. Change server to German Server
cp ntp.conf /etc/ntp.conf

# 3. Change hardware clock to LOCAL insted of UTC
cp adjtime /etc/adjtime

# 4.Setup timezone to Germany
rm /etc/localtime
ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

# 5.Start ntp daemon
/etc/init.d/ntp start
