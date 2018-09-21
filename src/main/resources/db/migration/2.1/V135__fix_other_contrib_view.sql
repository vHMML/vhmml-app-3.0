create or replace view reading_room_content_other_contributors as
select 
	reading_room_content_id, 
    reading_room_contributor_id 
from 
	reading_room_content_contributors 
where 
	(contributor_type <> 'AUTHOR' or contributor_type is null);