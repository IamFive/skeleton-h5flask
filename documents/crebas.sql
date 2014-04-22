create table player (
id                   integer                        not null,
primary key (id)
);

create table team (
id                   integer                        not null,
primary key (id)
);

create table tournament (
id                   integer                        not null,
title                varchar(128),
avatar               varchar(128),
begin_time           timestamp,
end_time             timestamp,
addr                 varchar(128),
bio                  varchar(1024),
primary key (id)
);

create table tournament_round (
id                   integer                        not null,
tournament_id        integer,
title                varchar(16),
is_online            smallint,
race_type            smallint,
start_time           timestamp,
end_time             timestamp,
primary key (id),
foreign key (tournament_id)
      references tournament (id)
);

create table tournament_zone (
id                   integer                        not null,
tournament_id        integer,
name                 varchar(12),
primary key (id),
foreign key (tournament_id)
      references tournament_round (id)
);

create table competition (
id                   integer                        not null,
bo                   smallint,
host_id              integer,
guest_id             integer,
host_score           integer,
winner_id            integer,
guest_score          integer,
is_team_race         smallint,
start_time           timestamp,
end_time             timestamp,
round_title          char(16),
is_winner_bracket    smallint,
zone_id              integer,
primary key (id),
foreign key (zone_id)
      references tournament_zone (id)
);

create table matches (
id                   integer                        not null,
primary key (id)
);

create table tournament_rank (
id                   integer                        not null,
tournament_id        integer,
reward               varchar(32),
rank                 integer,
player_id            integer,
primary key (id),
foreign key (tournament_id)
      references tournament (id)
);

