package com.zoya.books.services;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.zoya.books.models.Book;
import com.zoya.books.repositories.BookRepository;

@Service
public class BookService {
	
	private BookRepository bookRepository;
	
	public BookService(BookRepository bookRepository) {
		this.bookRepository=bookRepository;
	}
	
	public ArrayList<Book> all(){
		return (ArrayList<Book>) bookRepository.findAll();
	}
	
	public Book create(Book book) {
		return bookRepository.save(book);
	}
	
	public void destroyBook(Long id) {
        bookRepository.delete(id);
    }

	public Book findBookById(Long id) {
		Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()){
            return optionalBook.get();
        }else{
            return null;
        }
    }
	
	public void updateBook(Book book) {
        bookRepository.save(book);
    }
	
	
	public ArrayList<Book> findByTitle(String search) {
		return   (ArrayList<Book>)bookRepository.findByTitleContaining(search);
    }


}
