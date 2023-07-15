1. VOLUME 기본 사용
   - volume 확인하기
     docker volume ls
     docker volume inspect [volume]
     # docker run -it --rm --privileged --pid=host justincormack/nsenter1
   - 여러개 사용하기
2. docker run -v 볼륨 사용
      docker run -it -v my-vol:/my-vol ubuntu bash
3. docker run --mount 볼륨 사용
      docker run -it --mount type=volume,src=my-vol,dst=/my-vol ubuntu bash
      
4. 옵션 사용하기 ro 등
      docker run -it -v my-vol:/my-vol:ro ubuntu bash
      docker run -it --mount type=volume,src=my-vol,dst=/my-vol,ro ubuntu bash
5. 
4. docker run -v bind mount 사용
   - volume 생성 안된 것 확인하기
5. volume 핸들링 하기 (DOCKER API)
6. docker run --mount bind mount 사용
   1. -v 와 같이 표현하기
7. 호스트 머신에 기본 경로 있는 것과 없는 것 차이 확인


