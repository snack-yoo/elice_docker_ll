FROM nginx
EXPOSE 80
EXPOSE 8080/tcp
EXPOSE 8080/udp
EXPOSE 8081 8082/tcp 8083/udp

#docker container inspect [container-name]
#   "Config": {
#            "Hostname": "6eb9f45ff81e",
#            "Domainname": "",
#            "User": "",
#            "AttachStdin": true,
#            "AttachStdout": true,
#            "AttachStderr": true,
#            "ExposedPorts": {
#                "80/tcp": {},
#                "8080/tcp": {},
#                "8080/udp": {},
#                "8081/tcp": {},
#                "8082/tcp": {},
#                "8083/udp": {}
#            },
# ........
#        "NetworkSettings": {
#            "Bridge": "",
#            "SandboxID": "747d4f9a1bf5616bc6f0d47b4ef48aa15d197ea8009ffbabd68051ea950c5c68",
#            "HairpinMode": false,
#            "LinkLocalIPv6Address": "",
#            "LinkLocalIPv6PrefixLen": 0,
#            "Ports": {
#                "80/tcp": null,
#                "8080/tcp": null,
#                "8080/udp": null,
#                "8081/tcp": null,
#                "8082/tcp": null,
#                "8083/udp": null
#            },
