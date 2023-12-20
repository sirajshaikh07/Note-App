package com.entities;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Notes {
@Id
private int noteId;

private String noteTitle;
@Column(length = 2000)
private String noteContent;
private LocalDateTime noteDate;
public Notes(String noteTitle, String noteContent, LocalDateTime localDateTime) {
	super();
	this.noteId = new Random().nextInt(10000);
	this.noteTitle = noteTitle;
	this.noteContent = noteContent;
	this.noteDate = localDateTime;
}
public Notes() {
	super();
	// TODO Auto-generated constructor stub
}
public int getNoteId() {
	return noteId;
}
public void setNoteId(int noteId) {
	this.noteId = noteId;
}
public String getNoteTitle() {
	return noteTitle;
}
public void setNoteTitle(String noteTitle) {
	this.noteTitle = noteTitle;
}
public String getNoteContent() {
	return noteContent;
}
public void setNoteContent(String noteContent) {
	this.noteContent = noteContent;
}
public LocalDateTime getNoteDate() {
	return noteDate;
}
public void setNoteDate(LocalDateTime noteDate) {
	this.noteDate = noteDate;
}



	

	
	
	
	

}
