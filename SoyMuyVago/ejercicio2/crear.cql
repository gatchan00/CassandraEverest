drop keyspace westeros;
CREATE KEYSPACE westeros WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1 };
use westeros;
create table personajes ( nombre Text, casa Text, muerte int, primary key(casa,nombre));
insert into personajes(nombre,casa,muerte) values('Yo','la mía',null);
COPY personajes (nombre, casa, muerte) FROM '/home/everis/data/got.csv' WITH HEADER = true;
