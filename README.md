# mlflow_docker
## Usage
### 1. Open .env and set AWS_SECRET_ACCESS_KEY & DB_PW
```
...
AWS_SECRET_ACCESS_KEY=sample
...
DB_PW=sample
...
```
### 2. Run docker-compose
```bash
$ sudo docker-compose build
$ sudo docker-compose up
```
### 3. Check result
```
http://[YOUR_IP_ADDRESS]:5000/
```
