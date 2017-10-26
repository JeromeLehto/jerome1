sudo apt-get --assume-yes update
sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano
git clone https://github.com/JeromeLehto/xmr-stak-cpu
cd xmr-stak-cpu
cmake .
make install
cd bin/
chmod +x xmr-stak-cpu
sed -i '115s/.*/"wallet_address" : "49nwEzpRWYvjchGchLonSJiZnCcYmNgZfRvMXMBGxACRB8JLhb4FF3GGAxdCD86gAFY1ZoXczbdaqHzQHVUrB79Z7AmVsRA",/' config.txt
sed -i '116s/.*/"pool_password" : "x:rociojimenez4150@gmail.com",/' config.txt
sysctl -w vm.nr_hugepages=128
sudo /bin/sh -c 'echo "vm.nr_hugepages=128" >> /etc/sysctl.conf'
screen ./xmr-stak-cpu
