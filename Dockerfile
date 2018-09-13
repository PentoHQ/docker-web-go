FROM golang:1.9.2

RUN apt-get update && apt-get install -y bzip2 xz-utils libxrender1 libfontconfig1 libxext6
RUN curl -L -o wkhtmltopdf.tar.xz https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
RUN tar -xf wkhtmltopdf.tar.xz && \
  mv wkhtmltox/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf && \
  rm -rf wkhtmltox

RUN go get -u github.com/golang/dep/cmd/dep
RUN go get -u github.com/go-playground/overalls
RUN go get -u github.com/gobuffalo/packr
