package org.vhmml.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "my_list_items")
public class MyListItem implements Serializable {
	
	private static final long serialVersionUID = 7999062358707307795L;
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Column(name = "user_id")
	private Long userId;
	
	@Column(name = "object_id")
	private Long objectId;
	
	@Column(name = "date_added")
	private Date dateAdded;
	
	public MyListItem() {}
	
	public MyListItem(Long objectId) {
		this.objectId = objectId;
		this.dateAdded = new Date();
	}
	
	public Long getObjectId() {
		return objectId;
	}
	public void setObjectId(Long objectId) {
		this.objectId = objectId;
	}
	public Date getDateAdded() {
		return dateAdded;
	}
	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
}
