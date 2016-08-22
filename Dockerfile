FROM ubuntu

MAINTAINER params16jan@gmail.com

#installing gcc & git
RUN apt-get update \
	&& apt-get -y install gcc \
	git \
        ntp

# Set the timezone.
#RUN echo "America/NewYork" > /etc/timezone \
#    && dpkg-reconfigure -f noninteractive tzdata

#ENV TZ=America/NewYork
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
#    && ntpd -gq \
#    && service ntp start \
#    && date

# Copy C code to /src
COPY . /src

#cloning the output repo from Github
RUN cd src/ \
    && git config --global user.name "paramesh-p" \
    && git config --global user.email "params16jan@gmail.com" \
    && git clone https://paramesh-p:p2r2mesh@github.com/paramesh-p/helloworld-output.git

#running the app & saving the output
#RUN ./src/hello
#RUN  ./hello >> ./helloworld-output/output.txt
#RUN  ./helloworld-source/hello >> ./helloworld-output/output.txt
#CMD ["./hello >> ./helloworld-output/output.txt"]
#CMD sh -c './src/hello && echo SUCCESS!!!'
#CMD ./src/hello \
#     && echo "SUCCESS!!!"
#CMD ["./src/hello >> ./src/helloworld-output/output.txt"]

#Working
#RUN ./src/hello > ./src/helloworld-output/output.txt


#Push the output to Github
#RUN cd src/helloworld-output/ \
#        && git add output.txt \
#	&& git commit -m "docker done it's job" \
#        && git push origin master

CMD sh -c './src/hello > ./src/helloworld-output/output.txt && cd src/helloworld-output/ && git add output.txt && git  commit -m "DONE" && git push origin master'

