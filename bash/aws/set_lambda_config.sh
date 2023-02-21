#! /bin/bash


aws lambda update-function-configuration --function-name find-publishers --environment "Variables={DATASOURCE_DRIVER=com.mysql.cj.jdbc.Driver,DATASOURCE_USER=root}" --region us-east-1



