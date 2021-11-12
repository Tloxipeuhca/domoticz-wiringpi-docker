FROM domoticz/domoticz

RUN apt-get update
RUN apt-get install -y git sudo 
RUN apt-get install -y cmake apt-utils build-essential
RUN apt-get install -y make gcc g++

WORKDIR /opt/domoticz/
RUN git clone https://github.com/WiringPi/WiringPi.git
WORKDIR /opt/domoticz/WiringPi
RUN ./build
