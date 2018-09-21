alter table reading_room_archival_data change column decoration decoration varchar(1000);  
alter table reading_room_archival_content change column decoration decoration varchar(1000);
alter table reading_room_facsimile_urls change column url url text;
alter table reading_room_object_bib_urls change column url url text;
alter table reading_room_archival_data change column series series varchar(500);