#！/bin/sh
#找到占用4000的进程
netstat -ano | findstr 4000   
#taskkill -PID pid -F