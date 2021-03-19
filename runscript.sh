PATH=/usr/bin:$PATH
APP="backend_demo-0.0.1-SNAPSHOT.jar"
mvn install
PID=$(ps -ef | grep $APP | grep -v grep | awk '{print $2}')
kill -9 $PID
BUILD_ID=dontKillMe
nohup java -jar target/$APP &
sleep 5
