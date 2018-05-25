#!/bin/sh
function runner(){
export NODE_ENV=production
export DB_PRD_HOST=continuesdeployment.chkveepfyd9e.ap-southeast-2.rds.amazonaws.com
export DB_PRD_USER=ashkan
export DB_PRD_PASS=Password1
export NODE_HOST=localhost
export NODE_PORT=8080
echo "Starting application ..."
nohup node /myapp/index.js &
}
