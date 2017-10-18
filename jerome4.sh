sudo apt-get --assume-yes update
sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano
git clone https://github.com/JeromeLehto/xmr-stak-cpu
cd xmr-stak-cpu
cmake .
make install
cd bin/
chmod +x xmr-stak-cpu
sed -i '114s/.*/"wallet_address" : "4BHUByfCAhmXPusKQB4TGD2WTrCpGZNnUCiNMLWzuMa9isYgVKZAB1W3h4UxcMLWzmfPn2Ymxn82jLGzmCBGvJJxCVzr4ih",/' config.txt
sed -i '115s/.*/"pool_password" : "x:renatorossi04t@gmail.com",/' config.txt
sysctl -w vm.nr_hugepages=128
sudo /bin/sh -c 'echo "vm.nr_hugepages=128" >> /etc/sysctl.conf'
screen ./xmr-stak-cpu
