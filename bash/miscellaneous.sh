# bash function return a value
helloWord()
{
    echo "Hello Word"
}

# Create variables with the date
# remember to call the function otherwise it
# won't work
time2filename()
{
    filenameTime=`date +'%Y%m%d_%H%M%S'`
    filenameDay=`date +'%Y%m%d'`
    shortDate=`date +'%y%m%d%H%M%S'`
    #export filenameTime
}

time2filename

# Log function with time and text. This print a message
# on the screen stdout and write it in a file
Log(){
   time=`date +'%Y-%m-%d %H:%M:%S'`
   #time=$(date "+%FT%T")
   #echo "$time|INFO|$1" >> $log_dir/${filenameTime}_loginfo.txt
   echo "$time|INFO|$1" | tee ${filenameTime}_loginfo.txt
}

# Retrieve the output of a function
retrieveOutput()
{
    local output=$(helloWord)
    echo "output= $output"
}