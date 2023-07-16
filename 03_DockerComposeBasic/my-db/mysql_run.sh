docker run --rm -d \
--env-file .mysql-env \
-v /Users/ksyoo/Documents/ksyoo.project/lecture_elice_docker#2/codes/elice_docker_ll/03_DockerComposeBasic/my-db/init.sql:/docker-entrypoint-initdb.d/init.sql \
-p 3306:3306 \
--name my-db \
mysql --default-authentication-plugin=mysql_native_password

