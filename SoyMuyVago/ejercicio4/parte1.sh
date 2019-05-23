#!/bin/bash

echo "Lannister"
~/cassandra_1/bin/nodetool getendpoints westeros personajes  Lannister

echo "Greyjoy"
~/cassandra_1/bin/nodetool getendpoints westeros personajes  Greyjoy

echo "Stark"
~/cassandra_1/bin/nodetool getendpoints westeros personajes  Stark

echo "Targaryen"
~/cassandra_1/bin/nodetool getendpoints westeros personajes  Targaryen


