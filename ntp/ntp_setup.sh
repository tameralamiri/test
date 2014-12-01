# Install and Setup ntp on BBB

#!/bin/bash

# 1. Installing ntp packages
sudo apt-get install ntp

# 2. Change server to German Server
cp ntp.conf /etc/ntp.conf

# 3. Change hardware clock to LOCAL insted of UTC
cp adjtime /etc/adjtime

