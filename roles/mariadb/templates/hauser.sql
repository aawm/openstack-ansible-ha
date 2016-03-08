grant all on *.* to root@'%' identified by '{{ mysql_root_db_pass }}' with grant option;
insert into mysql.user (Host,User) values ('{{ controller1_ipaddr }}','haproxy');
insert into mysql.user (Host,User) values ('{{ controller2_ipaddr }}','haproxy');
insert into mysql.user (Host,User) values ('{{ controller3_ipaddr }}','haproxy');
flush privileges;

