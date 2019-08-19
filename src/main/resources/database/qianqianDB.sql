-- auto-generated definition

create table User
(
  USER_ID       int auto_increment
    primary key,
  USER_NAME     varchar(50) not null,
  USER_PASSWORD varchar(50) null,
  USER_MAIL     varchar(50) not null,
  constraint USER_NAME
  unique (USER_NAME),
  constraint USER_MAIL
  unique (USER_MAIL)
);



create table account
(
  USER_NAME     varchar(50) not null
    primary key,
  USER_PASSWORD varchar(50) null,
  USER_MAIL     varchar(50) not null
);

-- auto-generated definition
create table Team
(
  id      int auto_increment
    primary key,
  project varchar(50)   not null,
  image   varchar(100)  null,
  name    varchar(50)   null,
  intro   varchar(8000) null
);

create table Project
(
  project_id        varchar(50)    not null
    primary key,
  project_username  varchar(50)    null,
  project_head      varchar(50)    null,
  project_date      date           null,
  project_label     varchar(200)   null,
  project_intro     varchar(50000) null,
  project_img       varchar(200)   null,
  project_amount    int            null,
  project_time      int            null,
  project_detail    varchar(5000)  null,
  project_video     varchar(200)   null,
  project_investors int            null,
  project_invested  int            null,
  project_progress  int            null,
  project_follow    int            null,
  project_type      varchar(50)    null,
  constraint Project_project_id_uindex
  unique (project_id)
);



create table InvestIterm
(
  id      int auto_increment
    primary key,
  project varchar(50)   not null,
  amount  int           null,
  head    varchar(500)  null,
  detail  varchar(1000) null
);


create table investor
(
  id        int auto_increment
    primary key,
  username  varchar(50) null,
  projectId varchar(50) null,
  invested  int         null,
  constraint investor_id_uindex
  unique (id)
);




