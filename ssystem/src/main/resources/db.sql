/*
create tablespace gcss_tabspace datafile 'gcss.dat' size 10M autoextend on;

create user gcss identified by gcss default tablespace gcss_tabspace temporary tablespace temp;

grant create session to gcss;
grant create table to gcss;
grant unlimited tablespace to gcss;
*/



drop table login_master;
drop table roles_master;
drop table case_files;
drop table case_master;
drop table user_master;
drop table user_dishes;
drop table user_files;
drop table address;



create table user_files (
id VARCHAR2(64) primary key,
content blob,
file_type varchar2(24),
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table user_master(
id VARCHAR2(64) primary key,
first_name VARCHAR2(64),
last_name VARCHAR2(64),
email VARCHAR2(128),
gender VARCHAR2(64),
user_type varchar2(24),
about_me varchar2(4000),
cuisines varchar2(1024),
profile_pic_id varchar2(64) REFERENCES user_files(id),
w9_form_id varchar2(64) REFERENCES user_files(id),
active SMALLINT,
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table address(
id VARCHAR2(64) primary key,
address_line1 varchar2(128),
address_line2 varchar2(128),
country varchar2(64),
state varchar2(64),
city varchar2(64),
zipcode varchar2(10),
telephone varchar2(20),
user_id VARCHAR2(64) REFERENCES user_master(id),
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table login_master (
 id VARCHAR2(64) primary key,
 user_id VARCHAR2(64) REFERENCES user_master(id),
 username VARCHAR2(128) UNIQUE,
 password VARCHAR2(128),
 active SMALLINT,
 security_question VARCHAR2(128),
 security_answer VARCHAR2(128),
 last_login_time TIMESTAMP,
 created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);
/*
create table roles_master(
id,
role_name,
); 

create table roles_priviledges();
*/

create table case_master(
id VARCHAR2(64) primary key,
ucr varchar2(16) unique,
owner_id varchar2(64) references user_master(id),
handler_id varchar2(64) references user_master(id),
case_status SMALLINT,
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table case_files(
id VARCHAR2(64) primary key,
file_name varchar2(64),
content blob,
case_id varchar2(64) references case_master(id),
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table user_verification(
id VARCHAR2(64) primary key,
user_id varchar2(64) references user_master(id),
email_verification_code varchar2(64),
email_valid_till timestamp,
is_email_verified SMALLINT,
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table user_dishes(
id VARCHAR2(64) primary key,
user_id varchar2(64) references user_master(id),
title varchar2(64),
photo_id varchar2(64) references user_files(id),
description varchar2(512),
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table cart_master (
id VARCHAR2(64) primary key,
user_id varchar2(64) references user_master(id),
cart_status smallint,
total_cart_price numeric(10,2),
discount_percentage float,
discount_amount numeric(10,2),
net_price numeric(10,2),
net_adjustment_amount numeric(10,2),
final_price numeric(10,2),
coupon_code varchar2(10),
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table cart_line_item (
id VARCHAR2(64) primary key,
CART_ID varchar2(64) references cart_master(id),
PRODUCT_ID varchar2(64) references product_master(id),
quantity NUMBER(9),
extended_price numeric(10,2),
discount_percentage float,
discount_amount numeric(10,2),
net_price numeric(10,2),
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table product_master (
id VARCHAR2(64) primary key,
name varchar2(128),
code varchar2(32),
description varchar2(4000),
USER_ID varchar2(63) references user_master(id),
price numeric(10,2),
quantity smallint,
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);

create table product_image (
id VARCHAR2(64) primary key,
content blob,
file_type varchar2(24),
product_id varchar2(64) references product_master(id),
sequence smallint,
created_by VARCHAR2(128),
creation_date TIMESTAMP,
last_update_by VARCHAR2(128),
last_update_date TIMESTAMP,
record_status SMALLINT
);