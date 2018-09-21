package org.vhmml.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "data_portal_history")
public class DataPortalHistory implements Serializable {

	private static final long serialVersionUID = -438262983118772301L;
	
	public enum Status {
		STARTED("STARTED", "Started"),
		COMPLETED("COMPLETED", "Completed"),
		FAILED("FAILED", "Failed");
	
		private final String status;
		private final String displayStatus;
		
		Status(String status, String displayStatus) {
			this.status = status;
			this.displayStatus = displayStatus;
		}
		
		public String getStatus() {
			return status;
		}
		
		public String getDisplayStatus() {
			return displayStatus;
		}
	}	
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String status;
	
	@Column(name = "start_datetime")
	private Date startDatetime;
	
	@Column(name = "end_datetime")
	private Date endDatetime;
	
	@Column(name = "total_time_s")
	private long totalTimeInS;
	
	public DataPortalHistory() {};
	
	public DataPortalHistory(Date startDatetime, Status status) {
		super();
		this.startDatetime = startDatetime;
		this.status = status.getStatus();
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getStartDatetime() {
		return startDatetime;
	}

	public void setStartDatetime(Date startDatetime) {
		this.startDatetime = startDatetime;
	}

	public Date getEndDatetime() {
		return endDatetime;
	}

	public void setEndDatetime(Date endDatetime) {
		this.endDatetime = endDatetime;
	}

	public long getTotalTimeInS() {
		return totalTimeInS;
	}

	public void setTotalTimeInS(long totalTimeInS) {
		this.totalTimeInS = totalTimeInS;
	}
	
	
}
