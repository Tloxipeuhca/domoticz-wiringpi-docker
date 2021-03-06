# domoticz-wiringpi-docker

Domoticz docker image who contain WiringPi, Zigate and deCONZ.

### Download and build the docker image
```bash
sudo apt-get install -y git
mkdir ~/downloads && cd "$_"
git clone https://github.com/Tloxipeuhca/domoticz-wiringpi-docker.git && cd $(basename $_ .git) && make build
```

### Host config
```bash
# Create DH certificat
openssl dhparam -out dhparams.pem 4096

# Create a self-signed PEM file
cd ~/docker-data/domoticz
openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout key.pem -out cert.pem
cat ~/docker-data/domoticz/key.pem > ~/docker-data/domoticz/domoticz.pem
cat ~/docker-data/domoticz/cert.pem >> ~/docker-data/domoticz/domoticz.pem
rm ~/docker-data/domoticz/key.pem && rm ~/docker-data/domoticz/cert.pem
```

### How to use this image
```bash
# start standard instance
docker-compose up -d
```

### Browse to portal
```
url: http://rpi-ip_address:8094 
url: https://rpi-ip_address:8095
```

### Links
+ [domoticz](http://www.domoticz.com)
