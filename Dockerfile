FROM ubuntu

MAINTAINER params16jan@gmail.com

#installing gcc & git
RUN apt-get update \
	&& apt-get -y install gcc \
	git

# Copy C code to /src
COPY . /src

RUN && git config --global user.name "paramesh-p" \
    && git config --global user.email "params16jan@gmail.com"r
    && git clone https://paramesh-p:p2r2mesh@github.com/paramesh-p/helloworld-output.git

#running the app & saving the output
RUN  ./helloworld-source/hello >> ./helloworld-output/output.txt
