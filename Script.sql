create table if not exists singers (id serial primary key,
                                    name_singer varchar(50) not null unique,
                                    album_singer varchar(50) not null);
                                   
create table if not exists albums(id serial primary key,
                                  id_singer integer references singers(id),
                                  name_album varchar(50),
                                  count_of_tunes integer not null,
                                  year_of_creat date not null);
                                 
create table if not exists tunes (id serial primary key,
								  id_album integer references albums(id),
								  name_of_tune varchar(50) not null,
								  lenth_of_tune integer not null);

                     
                     
                     



