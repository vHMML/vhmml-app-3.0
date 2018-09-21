drop view if exists authors;
drop view if exists reference_authors;
drop view if exists reference_other_contributors;
drop view if exists reference_list;

create view reference_authors as 
	select 			
		re.id,		
		coalesce(concat(c.last_name, ', ', c.first_name), c.name) author
	from 
		reference_entries re left join 
		reference_creators rc on re.id = rc.reference_entry_id left join
		creators c on rc.creator_id = c.id
	where rc.creator_type = 'author';
	
create view reference_other_contributors as 
	select 			
		re.id,		
		coalesce(concat(c.last_name, ', ', c.first_name), c.name) name
	from 
		reference_entries re left join 
		reference_creators rc on re.id = rc.reference_entry_id left join
		creators c on rc.creator_id = c.id
	where rc.creator_type <> 'author';	

create view reference_list as
	select
		re.id,
		re.title,
		re.short_title,
		coalesce(nullif(re.short_title, ''), re.title) display_title,		
		re.book_title,
		re.series_title,
		re.encyclopedia_title,		
		GROUP_CONCAT(distinct a.author order by a.author SEPARATOR '; ') authors,
		GROUP_CONCAT(distinct roc.name order by roc.name SEPARATOR '; ') other_contributors,
		GROUP_CONCAT(distinct t.tag order by t.tag SEPARATOR ', ') tags,
		re.publication_title,
		re.proceedings_title,
		re.item_type,
		re.place,
		re.university,
		re.publisher,
		re.date,
		re.series,
		re.edition,
		re.issue,
		re.volume,
		re.pages,
		re.url,
		re.blog_title,
		re.conference_name,
		re.dictionary_title,
		re.institution,
		re.manuscript_type,
		re.studio
	from
		reference_entries re left outer join
		reference_authors a on (a.id = re.id) left outer join
		reference_other_contributors roc on (roc.id = re.id) left outer join
		reference_tags rt on (re.id = rt.reference_entry_id) left outer join
		tags t on (rt.tag_id = t.id)
	group by
		re.id, 
		re.title,
		re.short_title,
		re.book_title, 
		re.series_title,
		re.encyclopedia_title,
		re.date, 
		re.publication_title, 
		re.proceedings_title,
		re.item_type,
		re.place, 
		re.university,
		re.publisher, 
		re.date, 
		re.series, 
		re.edition,
		re.issue,
		re.volume,
		re.pages,
		re.url,
		re.blog_title,
		re.conference_name,
		re.dictionary_title,
		re.institution,
		re.manuscript_type,
		re.studio;