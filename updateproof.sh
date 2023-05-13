service bitxorcore stop
rm proof.index.dat
wget https://github.com/BitxorCorp/BitxorConfig/raw/main/BitxorCore/proof.index.dat
mv -f proof.index.dat /root/BitxorCore/data/proof.index.dat
service bitxorcore start