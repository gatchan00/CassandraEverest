#!/bin/bash
cp /home/everis/BACKUP/apache-cassandra-3.10-bin.tar.gz /home/everis/Downloads
cd /home/everis/Downloads
cp apache-cassandra-3.10-bin.tar.gz cassandra.tar.gz
gunzip cassandra.tar.gz
tar xvf cassandra.tar
rm -fr  cassandra.tar
mv apache-cassandra-3.10 /home/everis/cassandra_1
