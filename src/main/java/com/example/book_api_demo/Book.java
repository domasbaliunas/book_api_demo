package com.example.book_api_demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Book {
    @Id
    @GeneratedValue
    private Integer id;

    private String title;

    private String author;

    private Integer year;
    
    private Integer rating;

    public Integer getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public Integer getYear() {
        return year;
    }

    public Integer getRating() {
        return rating != null ? rating : 0;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }
}
