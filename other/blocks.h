//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

	//{" Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
    //{" " , "curl -s 'wttr.in/Moscow?format=%t'", 300, 0},
  
    {"   ", "echo \"$(xbacklight -get | awk '{print int($1)}')%\"", 30, 1},
    {"  ", "echo \"$(cat /sys/class/power_supply/BAT1/capacity)%\"", 30, 0},
    {"  ", "setxkbmap -query | grep layout |  awk '{print $2}'", 10, 2},
    //{"  ", "date '+%d.%m'", 60, 0},
	{"  ", "date '+%d.%m %H:%M:%S '", 5, 0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
