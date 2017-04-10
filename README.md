**患者数据库的创建代码**<br/>
create table customer<br/>
(<br/>
	cid int(10) unsigned not null auto_increment<br/>,
	cname varchar(255) not null,<br/>
	ccard varchar(18) not null,<br/>
	cbirth date not null,<br/>
	ctel varchar(11) null,<br/>
	caddress varchar(255) null,<br/>
	csex varchar(2) not null,<br/>
	cdoctor int(10) unsigned null,<br/>
	cpassword varchar(10) not null,<br/>
	register tinyint default '0' null,<br/>
	primary key (cid, ccard)<br/>
)<br/>
;<br/>

create index FK6kcabgqoj9iaexg9yhdk09bc9<br/>
	on customer (cdoctor) <br/>
;<br/>

create table department<br/>
(<br/>
	pid int not null<br/>
		primary key,<br/>
	pname varchar(255) null,<br/>
	phospital int null<br/>
)<br/>
;<br/>

create index hospital<br/>
	on department (phospital)<br/>
;<br/>

create table doctor<br/>
(<br/>
	did int(10) unsigned not null auto_increment<br/>
		primary key,<br/>
	dname varchar(255) not null,<br/>
	dsex smallint(1) not null,<br/>
	dcard int(18) unsigned not null,
	dbirth date not null,<br/>
	dtel varchar(11) null,<br/>
	dtitle varchar(20) null,<br/>
	ddepart int(10) null,<br/>
	dtotal int null,<br/>
	dfree int(10) null,<br/>
	constraint FK1rq9ndjcq1vb4cls0lc2wjgsq<br/>
		foreign key (ddepart) references department (pid),<br/>
	constraint depart<br/>
		foreign key (ddepart) references department (pid)<br/>
)<br/>
;<br/>

create index FK1rq9ndjcq1vb4cls0lc2wjgsq<br/>
	on doctor (ddepart)<br/>
;<br/>
<br/>
alter table customer
	add constraint FK6kcabgqoj9iaexg9yhdk09bc9<br/>
		foreign key (cdoctor) references doctor (did)<br/>
;<br/>

alter table customer<br/>
	add constraint doctor<br/>
		foreign key (cdoctor) referenc<br/>es doctor (did)<br/>
;

create table hospital<br/>
(<br/>
	hid int not null<br/>
		primary key,<br/>
	hname varchar(255) null,<br/>
	haddress varchar(255) null,<br/>
	htel varchar(255) null<br/>
)<br/>
;
<br/>
create table ph<br/>
(<br/>
	pid int not null,<br/>
	hid int not null,<br/>
	primary key (hid, pid),<br/>
	constraint FK4rhvgrdyjhe2n5paltu2fuw3e<br/>
		foreign key (pid) references department (pid)<br/>,
	constraint FKrtkldghvh1ekqh40a2ga6lbhn<br/>
		foreign key (hid) references hospital (hid)<br/>
)<br/>
;<br/>

create index FK4rhvgrdyjhe2n5paltu2fuw3e<br/>
	on ph (pid)<br/>
;<br/>


