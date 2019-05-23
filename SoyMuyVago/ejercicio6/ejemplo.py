from cassandra.cluster import Cluster
from cassandra.policies import (TokenAwarePolicy, DCAwareRoundRobinPolicy, RetryPolicy)
from cassandra.query import (PreparedStatement, BoundStatement)

cluster = Cluster(contact_points=['127.0.0.1','127.0.0.2'],
load_balancing_policy= TokenAwarePolicy(DCAwareRoundRobinPolicy(local_dc='datacenter1')),
default_retry_policy = RetryPolicy(),protocol_version=3 )


session = cluster.connect('westeros')

prepared_stmt = session.prepare ( "insert into personajes(nombre,casa,muerte) values(?,?,?)")
bound_stmt = prepared_stmt.bind(['Joan','Tarradellas', None])
stmt = session.execute(bound_stmt)

# select que devuelve nuestros datos
prepared_stmt = session.prepare ( "SELECT * FROM personajes WHERE (casa = ?)")
bound_stmt = prepared_stmt.bind(['Tarradellas'])
stmt = session.execute(bound_stmt)
for x in stmt: 
    print( x.nombre, x.casa, x.muerte)
