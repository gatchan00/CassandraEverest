#!/bin/bash

echo "Lannister"
~/cassandra_1/bin/cqlsh -k westeros -e "select * from personajes where casa='Lannister'"

echo "Greyjoy"
~/cassandra_1/bin/cqlsh -k westeros -e "select * from personajes where casa='Greyjoy'"

echo "Stark"
~/cassandra_1/bin/cqlsh -k westeros -e "select * from personajes where casa='Stark'"

echo "Targaryen"
~/cassandra_1/bin/cqlsh -k westeros -e "select * from personajes where casa='Targaryen'"
 

