#!/bin/bash
echo 'export chain='${chain} >>$HOME/.bashrc
echo 'export name='${name} >>$HOME/.bashrc
source $HOME/.bashrc


wget https://github.com/peaqnetwork/peaq-network-node/releases/download/agung-apr-7-2022/peaq-node-agung-apr-7-2022.tar.gz
tar zxvf peaq-node-agung-apr-7-2022.tar.gz && chmod +x peaq-node
rm peaq-node-agung-apr-7-2022.tar.gz
./peaq-node --chain ${chain} --name ${name}

sleep infinity
