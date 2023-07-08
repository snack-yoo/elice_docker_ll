1. 기본 사용
   1. protocol (default, tcp/udp)
   2. 한줄에 여러개
2. docker inspect 로 명세 확인하기
3. docker run 하여 포트 노출 확인
4. docker run -P
5. docker run -p
더 자세한 건 뒤에서 배운다~
6. 같은 네트워크간 통신 확인
   docker network create my-network
   docker run -it --network my-network expose.basic
