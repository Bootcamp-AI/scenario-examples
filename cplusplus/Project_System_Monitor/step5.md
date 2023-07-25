### RAM Usage

#### RAM
The getVmSize() function retrieves data for a specific running process. The function has one parameter, a unique process ID (PID). We use the PID to retrieve a specific line of the file located at proc/[PID]/status. The line “VmData” states the process’s memory usage, in kilobytes.

After a successful retrieval of the selected line, we form an input string stream buffer from that line. After initialization, we use this buffer to declare begin and end iterators for the string stream.

We initialize a vector of string by passing in iterators to the buffer as arguments. This feature splices strings on white space.

The format of this line is “VmData: N”, so the second element (index [1]) contains the desired memory usage data. After a quick conversion from kB to GB, we are set to return the parsed result.
<code>
//Reading /proc/[PID]/status for memory status of specific process
string ProcessParser::getVmsSize(string pid)
{
    string line;
    //Declaring search attribute for file
    string name = "VmData";
    string value;
    float result;
    // Opening stream for specific file
    ifstream stream = Util::getStream((Path::basePath() + pid + Path::statusPath()));
    while(std::getline(stream, line)){
        // Searching line by line
        if (line.compare(0, name.size(),name) == 0) {
            // slicing string line on ws for values using sstream
            istringstream buf(line);
            istream_iterator<string> beg(buf), end;
            vector<string> values(beg, end);
            //conversion kB -> GB
            result = (stof(values[1])/float(1024*1024));
            break;
        }
    }
    return to_string(result);
}
</code>

<strong>Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/10-2-ram-usage/) below for a brief overview of this file.</strong>