package com.example.book_api_demo;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BookApiDemoApplicationTests {
	@Autowired
	private BooksController controller;

	@Test
	void contextLoads() {
		assert(controller != null);
	}

	@Test
	void booksGetEndpointWorks() throws Exception {
		assert(controller.books(new BooksFilter()) != null);
	}

	@Test
	void ratingGetEndpointWorks() {
		assert(controller.ratings() != null);
	}
}
