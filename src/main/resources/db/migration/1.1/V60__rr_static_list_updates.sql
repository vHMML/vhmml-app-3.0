alter table reading_room_objects drop column online_access_permission;

delete from reading_room_genres;
delete from reading_room_scripts;
delete from reading_room_features;
delete from reading_room_writing_systems;

insert into reading_room_genres values(null, 'Adab literature', '');
insert into reading_room_genres values(null, 'Account books', 'http://www.getty.edu/vow/AATFullDisplay?find=account+books&logic=AND&note=&english=N&prev_page=1&subjectid=300027483');
insert into reading_room_genres values(null, 'Annotations', 'http://www.getty.edu/vow/AATFullDisplay?find=annotations&logic=AND&note=&english=N&prev_page=1&subjectid=300026100');
insert into reading_room_genres values(null, 'Antiphonaries', 'http://www.getty.edu/vow/AATFullDisplay?find=antiphonaries&logic=AND&note=&english=N&prev_page=1&subjectid=300188812');
insert into reading_room_genres values(null, 'Architectural drawings', 'http://www.getty.edu/vow/AATFullDisplay?find=architectural+drawings&logic=AND&note=&english=N&prev_page=1&subjectid=300034787');
insert into reading_room_genres values(null, 'Bibles', 'http://www.getty.edu/vow/AATFullDisplay?find=bibles&logic=AND&note=&english=N&prev_page=1&subjectid=300264513');
insert into reading_room_genres values(null, 'Books of hours', 'http://www.getty.edu/vow/AATFullDisplay?find=books+of+hours&logic=AND&note=&english=N&prev_page=1&subjectid=300026457');
insert into reading_room_genres values(null, 'Breviaries', 'http://www.getty.edu/vow/AATFullDisplay?find=breviaries&logic=AND&note=&english=N&prev_page=1&subjectid=300026459');
insert into reading_room_genres values(null, 'Broadsides', 'http://www.getty.edu/vow/AATFullDisplay?find=broadsides&logic=AND&note=&english=N&prev_page=1&subjectid=300026739');
insert into reading_room_genres values(null, 'Bulls (papal records)', 'http://www.getty.edu/vow/AATFullDisplay?find=bulls+papal&logic=AND&note=&english=N&prev_page=1&subjectid=300152044');
insert into reading_room_genres values(null, 'Calendars', 'http://www.getty.edu/vow/AATFullDisplay?find=calendars&logic=AND&note=&english=N&prev_page=1&subjectid=300026741');
insert into reading_room_genres values(null, 'Canon law', 'http://www.getty.edu/vow/AATFullDisplay?find=canon+law&logic=AND&note=&english=N&prev_page=1&subjectid=300235953');
insert into reading_room_genres values(null, 'Catechisms', 'http://www.getty.edu/vow/AATFullDisplay?find=catechisms&logic=AND&note=&english=N&prev_page=1&subjectid=300026460');
insert into reading_room_genres values(null, 'Charters', 'http://www.getty.edu/vow/AATFullDisplay?find=charters&logic=AND&note=&english=N&prev_page=1&subjectid=300027621');
insert into reading_room_genres values(null, 'Church records', 'http://www.getty.edu/vow/AATFullDisplay?find=church+records&logic=AND&note=&english=N&prev_page=1&subjectid=300027967');
insert into reading_room_genres values(null, 'Commentaries', 'http://www.getty.edu/vow/AATFullDisplay?find=commentaries&logic=AND&note=&english=N&prev_page=1&subjectid=300026098');
insert into reading_room_genres values(null, 'Concordances', 'http://www.getty.edu/vow/AATFullDisplay?find=concordances&logic=AND&note=&english=N&prev_page=1&subjectid=300026537');
insert into reading_room_genres values(null, 'Correspondence', 'http://www.getty.edu/vow/AATFullDisplay?find=correspondence&logic=AND&note=&english=N&prev_page=1&subjectid=300026877');
insert into reading_room_genres values(null, 'Dictionaries', 'http://www.getty.edu/vow/AATFullDisplay?find=dictionaries&logic=AND&note=&english=N&prev_page=1&subjectid=300026186');
insert into reading_room_genres values(null, 'Drawings', 'http://www.getty.edu/vow/AATFullDisplay?find=drawings&logic=AND&note=&english=N&prev_page=3&subjectid=300033973');
insert into reading_room_genres values(null, 'Encyclopedias', 'http://www.getty.edu/vow/AATFullDisplay?find=encyclopedias&logic=AND&note=&english=N&prev_page=1&subjectid=300129439');
insert into reading_room_genres values(null, 'Epistolaries', 'http://www.getty.edu/vow/AATFullDisplay?find=epistolaries&logic=AND&note=&english=N&prev_page=1&subjectid=300026465');
insert into reading_room_genres values(null, 'Evangeliaries', 'http://www.getty.edu/vow/AATFullDisplay?find=evangeliaries&logic=AND&note=&english=N&prev_page=1&subjectid=300026466');
insert into reading_room_genres values(null, 'Field notes', 'http://www.getty.edu/vow/AATFullDisplay?find=field+notes&logic=AND&note=&english=N&prev_page=1&subjectid=300027201');
insert into reading_room_genres values(null, 'Fragments', 'http://www.getty.edu/vow/AATFullDisplay?find=fragments&logic=AND&note=&english=N&prev_page=1&subjectid=300117130');
insert into reading_room_genres values(null, 'Genealogies', 'http://www.getty.edu/vow/AATFullDisplay?find=genealogies&logic=AND&note=&english=N&prev_page=1&subjectid=300027015');
insert into reading_room_genres values(null, 'Glosses', 'http://www.getty.edu/vow/AATFullDisplay?find=glosses&logic=AND&note=&english=N&prev_page=1&subjectid=300211708');
insert into reading_room_genres values(null, 'Gospel books', '');
insert into reading_room_genres values(null, 'Government records', 'http://www.getty.edu/vow/AATFullDisplay?find=government+records&logic=AND&note=&english=N&prev_page=1&subjectid=300027777');
insert into reading_room_genres values(null, 'Graduals', 'http://www.getty.edu/vow/AATFullDisplay?find=graduals&logic=AND&note=&english=N&prev_page=1&subjectid=300026462');
insert into reading_room_genres values(null, 'Grammars', 'http://www.getty.edu/vow/AATFullDisplay?find=grammars&logic=AND&note=&english=N&prev_page=1&subjectid=300252962');
insert into reading_room_genres values(null, 'Hadith stories', '');
insert into reading_room_genres values(null, 'Hagiographies', 'http://www.getty.edu/vow/AATFullDisplay?find=hagiographies&logic=AND&note=&english=N&prev_page=1&subjectid=300201063');
insert into reading_room_genres values(null, 'Historical works', '');
insert into reading_room_genres values(null, 'Homiliaries', 'http://www.getty.edu/vow/AATFullDisplay?find=homiliaries&logic=AND&note=&english=N&prev_page=1&subjectid=300211641');
insert into reading_room_genres values(null, 'Hymnals', 'http://www.getty.edu/vow/AATFullDisplay?find=hymnals&logic=AND&note=&english=N&prev_page=1&subjectid=300026463');
insert into reading_room_genres values(null, 'Hymns', 'http://www.getty.edu/vow/AATFullDisplay?find=hymns&logic=AND&note=&english=N&prev_page=1&subjectid=300167054');
insert into reading_room_genres values(null, 'Incunabula', 'http://www.getty.edu/vow/AATFullDisplay?find=incunabula&logic=AND&note=&english=N&prev_page=1&subjectid=300055021');
insert into reading_room_genres values(null, 'Indexes', 'http://www.getty.edu/vow/AATFullDisplay?find=indexes&logic=AND&note=&english=N&prev_page=1&subjectid=300026554');
insert into reading_room_genres values(null, 'Indulgences', 'http://www.getty.edu/vow/AATFullDisplay?find=indulgences&logic=AND&note=&english=N&prev_page=1&subjectid=300201452');
insert into reading_room_genres values(null, 'Inventories', 'http://www.getty.edu/vow/AATFullDisplay?find=inventories&logic=AND&note=&english=N&prev_page=1&subjectid=300027045');
insert into reading_room_genres values(null, 'Journals (accounts)', 'http://www.getty.edu/vow/AATFullDisplay?find=journals&logic=AND&note=&english=N&prev_page=1&subjectid=300027087');
insert into reading_room_genres values(null, 'Khuṭbat', '');
insert into reading_room_genres values(null, 'Lectionaries', 'http://www.getty.edu/vow/AATFullDisplay?find=lectionaries&logic=AND&note=&english=N&prev_page=1&subjectid=300026464');
insert into reading_room_genres values(null, 'Legal documents', 'http://www.getty.edu/vow/AATFullDisplay?find=legal+documents&logic=AND&note=&english=N&prev_page=1&subjectid=300027590');
insert into reading_room_genres values(null, 'Liturgical books (Eastern Christian)', '');
insert into reading_room_genres values(null, 'Liturgical texts', 'http://www.getty.edu/vow/AATFullDisplay?find=liturgical+texts&logic=AND&note=&english=N&prev_page=1&subjectid=300202991');
insert into reading_room_genres values(null, 'Magic scrolls', 'http://www.getty.edu/vow/AATFullDisplay?find=magic+scrolls&logic=AND&note=&english=N&prev_page=1&subjectid=300264705');
insert into reading_room_genres values(null, 'Manuscript waste (binding)', '');
insert into reading_room_genres values(null, 'Maps', 'http://www.getty.edu/vow/AATFullDisplay?find=maps&logic=AND&note=&english=N&prev_page=2&subjectid=300028094');
insert into reading_room_genres values(null, 'Marginal illustrations', 'http://www.getty.edu/vow/AATFullDisplay?find=marginal+illustrations&logic=AND&note=&english=N&prev_page=1&subjectid=300200658');
insert into reading_room_genres values(null, 'Martyrologies', 'http://www.getty.edu/vow/AATFullDisplay?find=martyrologies&logic=AND&note=&english=N&prev_page=1&subjectid=300026471');
insert into reading_room_genres values(null, 'Medical records', 'http://www.getty.edu/vow/AATFullDisplay?find=medical+records&logic=AND&note=&english=N&prev_page=1&subjectid=300027189');
insert into reading_room_genres values(null, 'Military records', 'http://www.getty.edu/vow/AATFullDisplay?find=military+records&logic=AND&note=&english=N&prev_page=1&subjectid=300027822');
insert into reading_room_genres values(null, 'Missals', 'http://www.getty.edu/vow/AATFullDisplay?find=missals&logic=AND&note=&english=N&prev_page=1&subjectid=300026472');
insert into reading_room_genres values(null, 'Music manuscripts', '');
insert into reading_room_genres values(null, 'Notarial records', 'http://www.getty.edu/vow/AATFullDisplay?find=notarial+records&logic=AND&note=&english=N&prev_page=1&subjectid=300164785');
insert into reading_room_genres values(null, 'Papal documents', '');
insert into reading_room_genres values(null, 'Poems', 'http://www.getty.edu/vow/AATFullDisplay?find=poems&logic=AND&note=&english=N&prev_page=1&subjectid=300026451');
insert into reading_room_genres values(null, 'Prayer books', 'http://www.getty.edu/vow/AATFullDisplay?find=prayer+books&logic=AND&note=&english=N&prev_page=1&subjectid=300026476');
insert into reading_room_genres values(null, 'Prayers', 'http://www.getty.edu/vow/AATFullDisplay?find=prayers&logic=AND&note=&english=N&prev_page=1&subjectid=300026452');
insert into reading_room_genres values(null, 'Processionals', 'http://www.getty.edu/vow/AATFullDisplay?find=processionals&logic=AND&note=&english=N&prev_page=1&subjectid=300395571');
insert into reading_room_genres values(null, 'Psalters', 'http://www.getty.edu/vow/AATFullDisplay?find=psalters&logic=AND&note=&english=N&prev_page=1&subjectid=300026477');
insert into reading_room_genres values(null, 'Qu''rāns', 'http://www.getty.edu/vow/AATFullDisplay?find=qurans&logic=AND&note=&english=N&prev_page=1&subjectid=300265128');
insert into reading_room_genres values(null, 'Religious rules and constitutions', '');
insert into reading_room_genres values(null, 'Rituals', 'http://www.getty.edu/vow/AATFullDisplay?find=rituals&logic=AND&note=&english=N&prev_page=1&subjectid=300212285');
insert into reading_room_genres values(null, 'Sacramentaries', 'http://www.getty.edu/vow/AATFullDisplay?find=sacramentaries&logic=AND&note=&english=N&prev_page=1&subjectid=300192160');
insert into reading_room_genres values(null, 'Scientific works', '');
insert into reading_room_genres values(null, 'Scores', 'http://www.getty.edu/vow/AATFullDisplay?find=scores&logic=AND&note=&english=N&prev_page=1&subjectid=300026427');
insert into reading_room_genres values(null, 'Scrolls', 'http://www.getty.edu/vow/AATFullDisplay?find=scrolls&logic=AND&note=&english=N&prev_page=1&subjectid=300028629');
insert into reading_room_genres values(null, 'Seals', 'http://www.getty.edu/vow/AATFullDisplay?find=seals&logic=AND&note=&english=N&prev_page=1&subjectid=300028877');
insert into reading_room_genres values(null, 'Sermons', 'http://www.getty.edu/vow/AATFullDisplay?find=sermons&logic=AND&note=&english=N&prev_page=1&subjectid=300026669');
insert into reading_room_genres values(null, 'Synodicons', 'http://www.getty.edu/vow/AATFullDisplay?find=synodicons&logic=AND&note=&english=N&prev_page=1&subjectid=300265603');
insert into reading_room_genres values(null, 'Ṭabaqāt', '');
insert into reading_room_genres values(null, 'Tafsir literature', '');
insert into reading_room_genres values(null, 'Travel literature', 'http://www.getty.edu/vow/AATFullDisplay?find=travel+literature&logic=AND&note=&english=N&prev_page=1&subjectid=300254810');
insert into reading_room_genres values(null, 'Trial proceedings', '');

insert into reading_room_scripts values(null, 'Abbasic bookhand');
insert into reading_room_scripts values(null, 'Anglicana');
insert into reading_room_scripts values(null, 'Anglo-Saxon');
insert into reading_room_scripts values(null, 'Asomtavruli');
insert into reading_room_scripts values(null, 'Bastarda');
insert into reading_room_scripts values(null, 'Bastard Secretary');
insert into reading_room_scripts values(null, 'Beneventan');
insert into reading_room_scripts values(null, 'Bolorgir');
insert into reading_room_scripts values(null, 'Bookhand');
insert into reading_room_scripts values(null, 'Caroline Minuscule');
insert into reading_room_scripts values(null, 'Chancery');
insert into reading_room_scripts values(null, 'Christian Palestinian Aramaic (CPA)');
insert into reading_room_scripts values(null, 'Coptic');
insert into reading_room_scripts values(null, 'Cyrillac Bookhand');
insert into reading_room_scripts values(null, 'Cyrillac Cursive');
insert into reading_room_scripts values(null, 'Devanagari');
insert into reading_room_scripts values(null, 'Dīwānī');
insert into reading_room_scripts values(null, 'Early Jewish');
insert into reading_room_scripts values(null, 'East Syriac');
insert into reading_room_scripts values(null, 'Elizabethan');
insert into reading_room_scripts values(null, 'Erkat’agir');
insert into reading_room_scripts values(null, 'Erkat’agir-bolorgir');
insert into reading_room_scripts values(null, 'Estrangela');
insert into reading_room_scripts values(null, 'Fidäl');
insert into reading_room_scripts values(null, 'Fractura');
insert into reading_room_scripts values(null, 'Glagolitic');
insert into reading_room_scripts values(null, 'Gothic');
insert into reading_room_scripts values(null, 'Gothic Bastarda');
insert into reading_room_scripts values(null, 'Gothic Cursiva');
insert into reading_room_scripts values(null, 'Gothic Textualis');
insert into reading_room_scripts values(null, 'Half-Uncial');
insert into reading_room_scripts values(null, 'Hasmonian');
insert into reading_room_scripts values(null, 'Herodian');
insert into reading_room_scripts values(null, 'Humanist Cursive');
insert into reading_room_scripts values(null, 'Humanist Minuscule');
insert into reading_room_scripts values(null, 'Insular Half-Uncial');
insert into reading_room_scripts values(null, 'Insular Miniscule');
insert into reading_room_scripts values(null, 'Italic');
insert into reading_room_scripts values(null, 'Kannada');
insert into reading_room_scripts values(null, 'Khutsuri');
insert into reading_room_scripts values(null, 'Kufic');
insert into reading_room_scripts values(null, 'Luxeuil');
insert into reading_room_scripts values(null, 'Maghribī');
insert into reading_room_scripts values(null, 'Majuscule');
insert into reading_room_scripts values(null, 'Malayalam');
insert into reading_room_scripts values(null, 'Melkite');
insert into reading_room_scripts values(null, 'Merovingian cursive');
insert into reading_room_scripts values(null, 'Merovingian minuscule');
insert into reading_room_scripts values(null, 'Minuscule');
insert into reading_room_scripts values(null, 'Muḥaqqaq');
insert into reading_room_scripts values(null, 'Naskh');
insert into reading_room_scripts values(null, 'Nastaʿlīq');
insert into reading_room_scripts values(null, 'New Abassic');
insert into reading_room_scripts values(null, 'New Roman Cursive');
insert into reading_room_scripts values(null, 'Nōtrgir');
insert into reading_room_scripts values(null, 'Notula');
insert into reading_room_scripts values(null, 'Nusxuri');
insert into reading_room_scripts values(null, 'Older Roman Cursive');
insert into reading_room_scripts values(null, 'Papyri Bookhand');
insert into reading_room_scripts values(null, 'Papyri Cursive');
insert into reading_room_scripts values(null, 'Poluustav');
insert into reading_room_scripts values(null, 'Rayḥān');
insert into reading_room_scripts values(null, 'Riqāʿ');
insert into reading_room_scripts values(null, 'Roman Capitalis');
insert into reading_room_scripts values(null, 'Roman Capitalis Rustica');
insert into reading_room_scripts values(null, 'Rotunda');
insert into reading_room_scripts values(null, 'Ruqʿa');
insert into reading_room_scripts values(null, 'Secretary');
insert into reading_room_scripts values(null, 'Serto');
insert into reading_room_scripts values(null, 'Sheghagir');
insert into reading_room_scripts values(null, 'Shikasta');
insert into reading_room_scripts values(null, 'Skoropis’');
insert into reading_room_scripts values(null, 'Šłagir');
insert into reading_room_scripts values(null, 'Southern Textualis Rotunda');
insert into reading_room_scripts values(null, 'Taʿlīq');
insert into reading_room_scripts values(null, 'Tawqīʿ');
insert into reading_room_scripts values(null, 'Textualis');
insert into reading_room_scripts values(null, 'Thuluth');
insert into reading_room_scripts values(null, 'Uncial');
insert into reading_room_scripts values(null, 'Visigothic');

insert into reading_room_features values(null, 'Chart(s)');
insert into reading_room_features values(null, 'Coat(s) of arms');
insert into reading_room_features values(null, 'Drolleries');
insert into reading_room_features values(null, 'Engraving(s)');
insert into reading_room_features values(null, 'Illumination');
insert into reading_room_features values(null, 'Illustration(s)');
insert into reading_room_features values(null, 'Initial(s), Decorated');
insert into reading_room_features values(null, 'Initial(s), Historiated');
insert into reading_room_features values(null, 'Initial(s), Zoomorphic');
insert into reading_room_features values(null, 'Map(s)');
insert into reading_room_features values(null, 'Marginalia');
insert into reading_room_features values(null, 'Music');
insert into reading_room_features values(null, 'Photograph(s)');
insert into reading_room_features values(null, 'Portraits');
insert into reading_room_features values(null, 'Seal(s)');
insert into reading_room_features values(null, 'Table(s)');
insert into reading_room_features values(null, 'Volvelle(s)');
insert into reading_room_features values(null, 'Woodcut(s)');

insert into reading_room_writing_systems values(null, 'Arabic');
insert into reading_room_writing_systems values(null, 'Armenian');
insert into reading_room_writing_systems values(null, 'Coptic');
insert into reading_room_writing_systems values(null, 'Cyrillic');
insert into reading_room_writing_systems values(null, 'Gǝ''ǝz');
insert into reading_room_writing_systems values(null, 'Georgian');
insert into reading_room_writing_systems values(null, 'Greek');
insert into reading_room_writing_systems values(null, 'Hebrew/Aramaic');
insert into reading_room_writing_systems values(null, 'Roman');
insert into reading_room_writing_systems values(null, 'Syriac');

