1. 서버 구축하기


npm i -g @nestjs/cli    
또는 npm init && npm i @nestjs/cli
nest new my-app

---
cd my-app && yarn start

---
curl localhost:3000


2. 기본 실행하기

docker build -t myapp.basic -f basic.Dockerfile .
docker run -it myapp.basic    

3. 포트 노출하기

docker run -it -p 3000:3000 myapp.basic

curl localhost:3000

4. 이미지 최적화 (포트 환경변수로 정의하기)

docker build -t myapp.env -f env.Dockerfile
docker run -it -p 3000:3000 myapp.env
안되는 것 화인 (curl localhost:3000)

docker run -it -p 3000:3001 myapp.env

5. 이미지 최적화 (캐싱)

소스코드만 변해도 패키지 설치까지 다시 진행되어야할 필요가 있을까?
한번 빌드 진행 후 소스 코드 수정후 두가지 Docker 이미지 빌드 비교

docker build -t myapp.env -f env.Dockerfile
docker build -t myapp.cache -f cache.Dockerfile


6. volume으로 리소스 공유하기

docker build -t myapp.volume -f volume.Dockerfile .

docker run -it -p 3000:3001 myapp.volume
docker volume ls 확인 
docker run -it --rm --privileged --pid=host justincormack/nsenter1  확인
tail -f app.log

//
docker build
docker run -it -p 3000:3001 -v /my/local/volume/:/app/logs/ myapp.volume
docker run -it -p 3000:3001 -v my-vol:/app/logs/ myapp.volume





