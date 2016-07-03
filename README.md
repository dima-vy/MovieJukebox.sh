# MovieJukebox.sh
I'm using YAMJ on my low power NAS (QNAP TS-212). If any java programm is running, and additional java instance starting, the NAS becomes extremely slow. 
The solution: I've added a part of code which is checking if any java instance is running. If java is running we will wait 30 seconds and run the test again, 
until we will be able to run only one java instance without interference.
You may use this file instead of original one (on your own risk of course:))
You have add java to the path
