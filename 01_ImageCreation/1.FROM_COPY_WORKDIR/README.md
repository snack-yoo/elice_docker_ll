# FROM, COPY, WORKDIR

### FROM
1. 기본 사용 (nginx)
2. tag
3. digest
4. platform
5. ARG 사용
6. AS 별칭
   1. Stage 참조 예시
   2. 빌드 타겟 예시 

### COPY
1. 기본 사용 (nginx#index.html)
2. <src> 2개 명시하기    
3. <src> 정규식으로 명시하기
4. <src> 빌드 컨텍스트 벗어나게 하여 오류 만들기
5. <src> 디렉토리로 명시하기
6. <src> 여러개이고 <dest> 디렉토리 아닐 때 원치 않는 동작

### WORKDIR
1. 기본 사용 (nginx)    
2. 상대경로 사용
3. 환경 변수 참조하기


### Simple 과제
1. Stage 두개 선언
   1. yarn create vite
   2. nginx 서빙하기