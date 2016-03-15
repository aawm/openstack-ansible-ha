grant all on *.* to root@'%' identified by '{{ mysql_root_db_pass }}' with grant option;
insert into mysql.user (Host,User) values ("{{ groups[['controller'][0]][0] }}",'haproxy');
insert into mysql.user (Host,User) values ("{{ groups[['controller'][0]][1] }}",'haproxy');
insert into mysql.user (Host,User) values ("{{ groups[['controller'][0]][2] }}",'haproxy');
flush privileges;

