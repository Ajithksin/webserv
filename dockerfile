FROM golang:1.18-alpine3.14


RUN export GO111MODULE=on
RUN go get github.com/Ajithksin/webserv/main
RUN cd /webserv && git clone https://github.com/Ajithksin/webserv.git
RUN cd /webserv/main && go build

EXPOSE  8081

