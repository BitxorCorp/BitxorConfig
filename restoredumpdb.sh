service bitxorcore stop
service bitxorbroker stop
service bitxorapi stop
cd ~
echo $'use bitxorcore\ndb.dropDatabase()' | mongo
mkdir dbdump
tar -xzf BitxorCoreDBdump.tar.gz -C dbdump
mongorestore --db=bitxorcore dbdump/bitxorcore
