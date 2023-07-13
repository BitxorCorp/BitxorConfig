service bitxorcore stop
service bitxorbroker stop
service bitxorapi stop
cd ~
rm harvesters.dat
mv /root/BitxorCore/data/harvesters.dat harvesters.dat
rm -rf /root/BitxorCore/data
tar -xzf Data.tar.gz -C /root/BitxorCore/
mv harvesters.dat /root/BitxorCore/data/harvesters.dat
