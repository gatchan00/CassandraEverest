#!/bin/bash

echo "Paramos el nodo 2"
~/cassandra_1/bin/nodetool -h 127.0.0.2 -p 7200  stopdaemon


