package com.zoya.books.repositories;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.zoya.books.models.Book;

public interface BookRepository extends CrudRepository<Book, Long> {

	Optional<Book> findById(Long id);
	

	ArrayList<Book> findByTitleContaining(String search);    

}
