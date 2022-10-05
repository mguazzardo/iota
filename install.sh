apt -y update
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt -y update
apt-cache policy docker-ce
apt  -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
mkdir private_tangle
cd private_tangle
curl -L -O "https://github.com/iotaledger/hornet/releases/download/v2.0.0-rc.1/HORNET-2.0.0-rc.1-private_tangle.tar.gz"
tar -zxf HORNET-2.0.0-rc.1-private_tangle.tar.gz
./bootstrap.sh
./run.sh
