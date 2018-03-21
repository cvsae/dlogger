// Copyright (c) 2018 CVSC
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

import core.stdc.time;
import std.datetime;
import std.stdio;


string INFO = "INFO  ";
string WARNING = "WARNING  ";
string ERROR  = "ERROR  ";


class log {

    File logfile;

    this(string logfile) {
        this.logfile = File(logfile, "a");
    }

    void write(string data, string loglevel){
        this.logfile.writeln(SysTime(unixTimeToStdTime(core.stdc.time.time(null))), " ", loglevel, data); 
    }
}