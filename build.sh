#!/bin/sh

cd /app
ls
git clone https://github.com/jpmorganchase/quorum.git

cd quorum 
make all
export PATH=$(pwd)/build/bin:$PATH
echo $PATH

geth

cd /app/projects
chmod +x /app/projects/network/1startnode.sh
chmod +x /app/projects/network/2startnode.sh
chmod +x /app/projects/network/3startnode.sh
chmod +x /app/projects/network/4startnode.sh
chmod +x /app/projects/network/5startnode.sh

cat /app/projects/network/1startnode.sh
cat /app/projects/network/2startnode.sh
cat /app/projects/network/3startnode.sh
cat /app/projects/network/4startnode.sh
cat /app/projects/network/5startnode.sh

echo 'ls'
ls
echo 'ls /app'
ls /app
echo 'ls /app/projects'
ls /app/projects
echo 'ls /app/projects/network'
ls /app/projects/network

chmod +x /app/projects/run1.sh
chmod +x /app/projects/run2.sh
chmod +x /app/projects/run3.sh
chmod +x /app/projects/run4.sh
chmod +x /app/projects/run5.sh