FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt install wget tar -y
COPY ./setup.sh ./
CMD sed -i 's/\r//' setup.sh && ./setup.sh 
