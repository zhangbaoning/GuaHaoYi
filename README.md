**下面的数据库没有数据，使用下面的数据库后将
/src/hibernate.cfg.xml 文件下的
`<property name="connection.username">root</property>`
`<property name="connection.password">3896</property>`
设成你的数据库账号密码
**
<br/>
**患者数据库的创建代码**<br/>
`create table customer  
 (
 	cid int(10) unsigned not null auto_increment,  
 	cname varchar(255) not null,
 	ccard varchar(18) not null,
 	cbirth date not null,
 	ctel varchar(11) null,
 	caddress varchar(255) null,
 	csex varchar(2) not null,
 	cdoctor int(10) unsigned null,
 	cpassword varchar(10) not null,
 	register tinyint default '0' null,
 	primary key (cid, ccard)
 );`
 
 `create index FK6kcabgqoj9iaexg9yhdk09bc9
 	on customer (cdoctor)
 ;`
 
 `create table department
 (
 	pid int not null
 		primary key,
 	pname varchar(255) null,
 	phospital int null
 )
 ;`
 
 `create index hospital
 	on department (phospital)
 ;`
 
 `create table doctor
 (
 	did int(10) unsigned not null auto_increment
 		primary key,
 	dname varchar(255) not null,
 	dsex smallint(1) not null,
 	dcard int(18) unsigned not null,
 	dbirth date not null,
 	dtel varchar(11) null,
 	dtitle varchar(20) null,
 	ddepart int(10) null,
 	dtotal int null,
 	dfree int(10) null,
 	constraint FK1rq9ndjcq1vb4cls0lc2wjgsq
 		foreign key (ddepart) references department (pid),
 	constraint depart
 		foreign key (ddepart) references department (pid)
 )
 ;`
 
 `create index FK1rq9ndjcq1vb4cls0lc2wjgsq
 	on doctor (ddepart)
 ;`
 
 `alter table customer
 	add constraint FK6kcabgqoj9iaexg9yhdk09bc9
 		foreign key (cdoctor) references doctor (did)
 ;`
 
 `alter table customer
 	add constraint doctor
 		foreign key (cdoctor) references doctor (did)
 ;`
 
 `create table hospital
 (
 	hid int not null
 		primary key,
 	hname varchar(255) null,
 	haddress varchar(255) null,
 	htel varchar(255) null
 )
 ;`
 
 `create table ph
 (
 	pid int not null,
 	hid int not null,
 	primary key (hid, pid),
 	constraint FK4rhvgrdyjhe2n5paltu2fuw3e
 		foreign key (pid) references department (pid),
 	constraint FKrtkldghvh1ekqh40a2ga6lbhn
 		foreign key (hid) references hospital (hid)
 )
 ;`
 
 `create index FK4rhvgrdyjhe2n5paltu2fuw3e
 	on ph (pid)
 ;`

