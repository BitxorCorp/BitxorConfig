service bitxorcore stop
rm config-finalization.properties
wget https://github.com/BitxorCorp/BitxorConfig/raw/main/BitxorCore/resources/config-finalization.properties
mv -f config-finalization.properties /root/BitxorCore/resources/config-finalization.properties
service bitxorcore start