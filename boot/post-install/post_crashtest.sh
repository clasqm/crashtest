#!/boot/system/bin/bash

## who am i? ##
_script="$(readlink -f ${BASH_SOURCE[0]})"
## Delete last component from $_script ##
_base="$(dirname $_script)"
cd $_base

cd ../../documentation/packages/crashtest
ls

rm -f /boot/home/config/settings/boot/launch/CrashTest
ln -s -f $(pwd)/CrashTest  /boot/home/config/settings/boot/launch/
alert "CrashTest is installed. We will now run CrashTest to initalize the system. You can check your file system if you want, but it is not really necessary." 
/boot/home/config/settings/boot/launch/CrashTest
