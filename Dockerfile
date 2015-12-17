FROM ubuntu:14.04
MAINTAINER chauhan.suryaveer@gmail.com

RUN apt-get update -y && apt-get install -y gcc tcpdump
RUN echo "HELLO!!!"

EXPOSE 6000/UDP
# Simple startup script to avoid some issues observed with container restart 
ADD sampleudp.c /sampleudp.c

RUN gcc -o sampleudp sampleudp.c
ENTRYPOINT ["./sampleudp"]
