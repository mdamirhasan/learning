#!/bin/bash
MYSQL_HOST='127.0.0.1'
MYSQL_PORT='3306'
MYSQL_USER='root'
MYSQL_PASSWORD='Z=7#T})]}R;TNx8J'
DATABASE_NAME='TEST'


#export AWS_ACCESS_KEY_ID=
#export AWS_SECRET_ACCESS_KEY=
#export REGION=
#export OUTPUT=json
TODAY='date +"%d%b%Y"'
echo $(TODAY)
#aws cp s3://bkp.bestviewsreviews.com/dbbackup/${TODAY}/data_pipline-${TODAY}.sql.gz
#gunzip data_pipeline-${TODAY}.sql.gz

yes YES | mysqladmin -h${MYSQL_HOST} -P${MYSQL_PORT} -u${MYSQL_USER} -p${MYSQL_PASSWORD} DROP ${DATABASE_NAME};
mysqladmin -h${MYSQL_HOST} -P${MYSQL_PORT} -u${MYSQL_USER} -p${MYSQL_PASSWORD} CREATE ${DATABASE_NAME};