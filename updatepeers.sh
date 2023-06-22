service bitxorcore stop
rm peers-p2p.json
rm peers-api.json
wget https://github.com/BitxorCorp/BitxorConfig/raw/main/BitxorCore/resources/peers-p2p.json
wget https://github.com/BitxorCorp/BitxorConfig/raw/main/BitxorCore/resources/peers-api.json
mv -f peers-p2p.json /root/BitxorCore/resources/peers-p2p.json
mv -f peers-api.json /root/BitxorCore/resources/peers-api.json
service bitxorcore start