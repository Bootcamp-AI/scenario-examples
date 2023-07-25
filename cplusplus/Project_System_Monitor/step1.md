
### constants.h

<code>
#ifndef PATH_H
#define PATH_H

#include <string>
using std::string;

enum CPUStates {
    S_USER = 1,
    S_NICE,
    S_SYSTEM,
    S_IDLE,
    S_IOWAIT,
    S_IRQ,
    S_SOFTIRQ,
    S_STEAL,
    S_GUEST,
    S_GUEST_NICE
};

class Path {
    public:
        static string basePath() 
        {
            return "/proc/";
        }
        static string cmdPath()
        {
            return "/cmdline";
        }
        static string statusPath()
        {
            return "/status";
        }
        static string statPath()
        {
            return "stat";
        }
        static string upTimePath()
        {
            return "uptime";
        }
        static string memInfoPath()
        {
            return "meminfo";
        }
        static string versionPath()
        {
            return "version";
        }
};

#endif // PATH_H
</code>

<strong>Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/07-constants-h/) below for a brief overview of this file.</strong>
