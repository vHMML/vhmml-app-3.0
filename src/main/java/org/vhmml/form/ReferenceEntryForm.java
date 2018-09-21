package org.vhmml.form;

import java.util.List;

import javax.validation.constraints.NotNull;

import org.springframework.beans.BeanUtils;
import org.vhmml.entity.Creator;
import org.vhmml.entity.ReferenceEntry;
import org.vhmml.entity.ReferenceTag;

public class ReferenceEntryForm {

	public ReferenceEntryForm() {
		super();
	}
	
	public ReferenceEntryForm(ReferenceEntry entry) {
		BeanUtils.copyProperties(entry, this);		
		setAuthors(entry.getCreatorsByType(Creator.Type.AUTHOR));
		setEditors(entry.getCreatorsByType(Creator.Type.EDITOR));
		setContributors(entry.getCreatorsByType(Creator.Type.CONTRIBUTOR));
		setDirectors(entry.getCreatorsByType(Creator.Type.DIRECTOR));
		// get tags on the ReferenceEntry object gives us a comma delimited list but we need a pipe delimited one on our form for the tags input
		setTags(getTagsString(entry));
	}
	
	private Long id;
	private List<Creator> authors;
	private String blogTitle;
	private String bookTitle;
	private String conferenceName;
	
	@NotNull(message = "Date is required")
	private String date;
	
	private String dictionaryTitle;
	private String edition;
	private String encyclopediaTitle;
	private String episodeNumber;
	
	@NotNull(message = "Record Type is required")
	private ReferenceEntry.Type itemType;
	
	private String institution;
	private String issue;
	private String manuscriptType;
	private String pages;
	private String place;
	private String publicationTitle;
	private String publisher;
	private String proceedingsTitle;
	private String series;
	private String seriesNumber;
	private String seriesTitle;
	
	@NotNull(message = "Short Title is required")
	private String shortTitle;
	private String studio;
	private String title;
	private String university;
	private String url;
	private String volume;

	private List<Creator> directors;
	private List<Creator> editors;
	private List<Creator> contributors;
	private String tags;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public List<Creator> getAuthors() {
		return authors;
	}

	public void setAuthors(List<Creator> authors) {
		this.authors = authors;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public String getConferenceName() {
		return conferenceName;
	}

	public void setConferenceName(String conferenceName) {
		this.conferenceName = conferenceName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDictionaryTitle() {
		return dictionaryTitle;
	}

	public void setDictionaryTitle(String dictionaryTitle) {
		this.dictionaryTitle = dictionaryTitle;
	}

	public List<Creator> getDirectors() {
		return directors;
	}

	public void setDirectors(List<Creator> directors) {
		this.directors = directors;
	}

	public String getEdition() {
		return edition;
	}

	public void setEdition(String edition) {
		this.edition = edition;
	}

	public String getEncyclopediaTitle() {
		return encyclopediaTitle;
	}

	public void setEncyclopediaTitle(String encyclopediaTitle) {
		this.encyclopediaTitle = encyclopediaTitle;
	}

	public String getEpisodeNumber() {
		return episodeNumber;
	}

	public void setEpisodeNumber(String episodeNumber) {
		this.episodeNumber = episodeNumber;
	}

	public ReferenceEntry.Type getItemType() {
		return itemType;
	}

	public void setItemType(ReferenceEntry.Type itemType) {
		this.itemType = itemType;
	}

	public String getInstitution() {
		return institution;
	}

	public void setInstitution(String institution) {
		this.institution = institution;
	}

	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}

	public String getManuscriptType() {
		return manuscriptType;
	}

	public void setManuscriptType(String manuscriptType) {
		this.manuscriptType = manuscriptType;
	}

	public String getPages() {
		return pages;
	}

	public void setPages(String pages) {
		this.pages = pages;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getPublicationTitle() {
		return publicationTitle;
	}

	public void setPublicationTitle(String publicationTitle) {
		this.publicationTitle = publicationTitle;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getProceedingsTitle() {
		return proceedingsTitle;
	}

	public void setProceedingsTitle(String proceedingsTitle) {
		this.proceedingsTitle = proceedingsTitle;
	}

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	public String getSeriesNumber() {
		return seriesNumber;
	}

	public void setSeriesNumber(String seriesNumber) {
		this.seriesNumber = seriesNumber;
	}

	public String getSeriesTitle() {
		return seriesTitle;
	}

	public void setSeriesTitle(String seriesTitle) {
		this.seriesTitle = seriesTitle;
	}

	public String getShortTitle() {
		return shortTitle;
	}

	public void setShortTitle(String shortTitle) {
		this.shortTitle = shortTitle;
	}

	public String getStudio() {
		return studio;
	}

	public void setStudio(String studio) {
		this.studio = studio;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getVolume() {
		return volume;
	}

	public void setVolume(String volume) {
		this.volume = volume;
	}

	public List<Creator> getEditors() {
		return editors;
	}

	public void setEditors(List<Creator> editors) {
		this.editors = editors;
	}

	public List<Creator> getContributors() {
		return contributors;
	}

	public void setContributors(List<Creator> contributors) {
		this.contributors = contributors;
	}
	
	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}
	
	private String getTagsString(ReferenceEntry referenceEntry) {		
		StringBuilder tags = new StringBuilder();
		
		List<ReferenceTag> referenceTags = referenceEntry.getReferenceTags();
		
		if(org.apache.commons.collections4.CollectionUtils.isNotEmpty(referenceTags)) {
			for(int i = 0; i < referenceTags.size(); i++) {
				if(i > 0) {
					tags.append("|");
				}
				tags.append(referenceTags.get(i).getTag().getTag());
			}
		}
		
		return tags.toString();
	}
}
