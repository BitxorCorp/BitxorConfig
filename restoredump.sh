service bitxorcore stop
service bitxorbroker stop
service bitxorapi stop
cd ~
rm harvesters.dat
mv /root/BitxorCore/data/harvesters.dat harvesters.dat
rm -rf /root/BitxorCore/data
tar -xzf Data.tar.gz -C /root/BitxorCore/
mv harvesters.dat /root/BitxorCore/data/harvesters.dat
echo $'use bitxorcore\ndb.dropDatabase()' | mongo
mkdir dbdump
tar -xzf BitxorCoreDBdump.tar.gz -C dbdump
mongorestore --db=bitxorcore dbdump/bitxorcore
service bitxorcore start
service bitxorbroker start
service bitxorapi start