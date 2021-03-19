PATH=/usr/bin:$PATH
APP="backend_demo-0.0.1-SNAPSHOT.jar"
rm -rf target/
mvn install
PID=-1
PID=$(ps -ef | grep $APP | grep -v grep | awk '{print $2}')
if [[ ! $PID==-1 ]]; then
  kill -l KILL $PID 
fi
BUILD_ID=dontKillMe nohup java -jar target/$APP &
