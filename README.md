# Tabata timer
Small timer app for tabata. Designed mostly for iOS, as there are no payment-free equivalents on App Store.

## Database
App uses Oracle Autonomous Database in cloud (OCI) in a free tier. In order to post and retrive data to/from flutter REST-Enabled SQL for Oracle Autonomous Database is used. </br>
REST-Enabled SQL: https://docs.oracle.com/en/database/oracle/oracle-rest-data-services/20.4/aelig/rest-enabled-sql-service.html#GUID-AC941269-741E-439F-B02F-6F5B4317F57A

For database creation, managment and configuration Oracle REST Data Services API is used. Bash (curl) scripts are part of the repo. </br>
Oracle REST Data Services API: https://docs.oracle.com/en/database/oracle/oracle-rest-data-services/22.2/orrst/rest-endpoints.html

## Flutter 
In order to connect to database _http_ package is used. </br>
_http_ package: https://docs.flutter.dev/cookbook/networking/send-data


### Flutter packages used:
* _http_


## Deployment
Deployment is done via Azure pipeline. </br>
Azure pipeline and board: https://dev.azure.com/tabata-timer/tabata-timer
