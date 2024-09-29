package com.example.book_api_demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping(path="/books")
public class BooksController {
    @Autowired
    private BookRepository bookRepository;

    @GetMapping
    public List<Book> books(@RequestBody(required = false) BooksFilter filter) {
        return bookRepository
                .findAll()
                .stream()
                .filter(filter != null ? filter.allFilters() : b -> true)
                .collect(Collectors.toList());
    }

    @GetMapping("/rating")
    public List<Book> ratings() {
        return bookRepository
                .findAll()
                .stream()
                .filter(b -> b.getRating() >= 1)
                .collect(Collectors.toList());
    }

    @PutMapping("/rating")
    public void rate(@RequestBody BookRating rating) {
        Optional<Book> book = bookRepository.findById(rating.getId());

        book.ifPresent(b -> {
            b.setRating(rating.getRating());
            bookRepository.save(b);
        });
    }
}
