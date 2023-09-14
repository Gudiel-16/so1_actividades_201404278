# Backend
A backend using express and Oracle as database.

## Get Started

``` bash
# Setting env vars
export ORACLE_USER=oracle
export ORACLE_PASS=<your_pass>
export ORACLE_CONNSTR=localhost:1521/xepdb1
export SERVER_PORT=3800

npm install
npm start
```

## Get Started with Docker

``` bash
docker run -d -p 3800:3800 \
-e ORACLE_USER=APPUSER \
-e ORACLE_PASS=passwordapp \
-e ORACLE_CONNSTR=172.17.0.2:1521/xepdb1 \
backend:0.1.0
```