docker-compose up -d
PEM=domoticz.pem
if [ -f $PEM ]; then
  sudo cp $PEM config/server_cert.pem
fi
DB=domoticz.db
if [ -f $DB ]; then
  sudo cp $DB config/$DB
fi
cd config/plugins/
sudo git clone https://github.com/sasu-drooz/Domoticz-Zigate.git
sudo chmod +x ./Domoticz-Zigate/plugin.py
sudo git clone https://github.com/Smanar/Domoticz-deCONZ.git
sudo chmod +x ./Domoticz-deCONZ/plugin.py
cd ../..
docker-compose restart
