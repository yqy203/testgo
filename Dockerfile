FROM golang:1.12.4

WORKDIR /usr/local/go/src/testgo
COPY vendor /usr/local/go/src/
COPY . /usr/local/go/src/testgo
RUN ls -l
RUN pwd
RUN cd /usr/local/go/src/testgo/
RUN go build .
RUN ls -l
EXPOSE 6064
ENTRYPOINT  ["./testgo"]
