# dlogger
 A simple event logger with datetime format for dlang 

## Usage


``` d


import std.stdio;
import dlogger;

void main()
{
	auto log = new log("debug.log");
  
	log.write("This is a warning", WARNING);
	log.write("This is a error", ERROR);
	log.write("This is a info", INFO);
}
```

``` bash 

cat debug.log

2018-Mar-22 01:42:12 WARNING  This is a warning
2018-Mar-22 01:42:12 ERROR  This is a error
2018-Mar-22 01:42:12 INFO  This is a info
```

