### ProcessParser.h

#### Process Parser
Having in mind the structure and architecture of Linux systems, we are reading all required information from the files stored in the file system. 99% of the information is stored in the /proc directory. Within the /proc directory exist additional subdirectories which store detailed information for each process. Every filename is a unique PID.

Interface
<code>
class ProcessParser {
    public:
        static std::string getCmd(std::string pid);
        static std::vector<std::string> getPidList();
        static std::string getVmSize(std::string pid);
        static std::string getCpuPercent(std::string pid);
        static long int getSysUpTime();
        static std::string getProcUpTime(std::string pid);
        static std::string getProcUser(std::string pid);
        static std::vector<std::string> getSysCpuPercent(std::string coreNumber = "");
        static float getSysRamPercent();
        static std::string getSysKernelVersion();
        static int getTotalThreads();
        static int getTotalNumberOfProcesses();
        static int getNumberOfRunningProcesses();
        static string getOsName();
        static std::string printCpuStats(std::vector<std::string> values1, std::vector<std::string>values2);
};
</code>


#### Required Headers
<code>
#include <algorithm>
#include <iostream>
#include <math.h>
#include <thread>
#include <chrono>
#include <iterator>
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <vector>
#include <fstream>
#include <sstream>
#include <stdexcept>
#include <cerrno>
#include <cstring>
#include <dirent.h>
#include <time.h>
#include <unistd.h>
#include <constants.h>
</code>

<strong>Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/09-processparser-h/) below for a brief overview.</strong>