package com.example.book_api_demo;

import java.util.function.Predicate;

public class BooksFilter {
    public String titleStartsWith = "";
    public String titleEndsWith = "";
    public String authorStartsWith = "";
    public String authorEndsWith = "";
    public Integer yearFrom = 0;
    public Integer yearTo = Integer.MAX_VALUE;
    public Integer ratingFrom = 1;
    public Integer ratingTo = 5;

    public Predicate<Book> titleFilter() {
        return b -> b.getTitle().startsWith(titleStartsWith) && b.getTitle().endsWith(titleEndsWith);
    }

    public Predicate<Book> authorFilter() {
        return b -> b.getAuthor().startsWith(authorStartsWith) && b.getAuthor().endsWith(authorEndsWith);
    }

    public Predicate<Book> yearFilter() {
        return b -> b.getYear() >= yearFrom && b.getYear() <= yearTo;
    }

    public Predicate<Book> ratingFilter() {
        return b -> {
            if (b.getRating() != null) {
                return b.getRating() >= ratingFrom && b.getRating() <= ratingTo;
            } else {
                return true;
            }
        };
    }

    public Predicate<Book> allFilters() {
        return titleFilter().and(authorFilter()).and(yearFilter()).and(ratingFilter());
    }
}
