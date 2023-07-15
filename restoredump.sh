#!/bin/bash
service bitxorcore stop
service bitxorbroker stop
service bitxorapi stop
cd ~
rm harvesters.dat
mv /root/BitxorCore/data/harvesters.dat harvesters.dat
rm -rf /root/BitxorCore/data
tar -xzf Data.tar.gz -C /root/BitxorCore/
mv harvesters.dat /root/BitxorCore/data/harvesters.dat
sed -i.bak 's/\(fileDatabaseBatchSize = \).*/\1100000/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(blockDisruptorSlotCount = \).*/\18192/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(blockElementTraceInterval = \).*/\110/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(blockDisruptorMaxMemorySize = \).*/\1600MB/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(transactionDisruptorSlotCount = \).*/\18192/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(transactionElementTraceInterval = \).*/\110/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(transactionDisruptorMaxMemorySize = \).*/\1200MB/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(enableStatistics = \).*/\1false/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(maxOpenFiles = \).*/\10/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(maxBackgroundThreads = \).*/\10/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(maxSubcompactionThreads = \).*/\10/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(blockCacheSize = \).*/\10MB/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(memtableMemoryBudget = \).*/\10MB/' /root/BitxorCore/resources/config-node.properties
sed -i.bak 's/\(maxWriteBatchSize = \).*/\1500MB/' /root/BitxorCore/resources/config-node.properties
echo 'use bitxorcore' > commands.js
echo 'db.dropDatabase()' >> commands.js
mongo < commands.js
rm commands.js
mkdir dbdump
tar -xzf BitxorCoreDBdump.tar.gz -C dbdump
mongorestore --db=bitxorcore dbdump/bitxorcore
service bitxorcore start
service bitxorbroker start
service bitxorapi start