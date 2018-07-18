package com.zoya.books.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zoya.books.models.Book;
import com.zoya.books.services.BookService;

@Controller
public class Books {
	
	private final BookService bookService;
	
	public Books(BookService bookService) {
		this.bookService= bookService;
	}
	@RequestMapping("/" )
	public String books(Model model ,@ModelAttribute("book") Book book,@RequestParam(value="q",required=false) String q) {
		if(q != null) {
			model.addAttribute("books",bookService.findByTitle(q));
		}
		else {
		List<Book> books=bookService.all();
		model.addAttribute("books",books);
		
		}
	return "index";
		
	}
	
	@RequestMapping("/books/{id}")
    public String findOne(Model model, @PathVariable("id") Long id) {
        model.addAttribute("book", bookService.findBookById(id));
        return "showBook";
    }
	
	@RequestMapping("/create")
    public String createBook(@Valid @ModelAttribute("book") Book book, BindingResult result) {
		if (result.hasErrors()) {
            return "newBook";
		}
       else {
    	   bookService.create(book);
        return "redirect:/";
       }
    }
	
	@RequestMapping("/books/edit/{id}")
    public String editBook(@PathVariable("id") Long id, Model model) {
        Book book = bookService.findBookById(id);
        if (book != null){
            model.addAttribute("book", book);
            return "editBook";
        }else{
            return "redirect:/books";
        }
        
	}
	
	@PostMapping("/books/edit/{id}")
    public String updateBook(@PathVariable("id") Long id, @Valid @ModelAttribute("book") Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "editBook";
        }else{
            bookService.updateBook( book);
            return "redirect:/";
        }
    }
	
	@RequestMapping(value="/books/delete/{id}")
    public String destroyBook(@PathVariable("id") Long id) {
        bookService.destroyBook(id);
        return "redirect:/";
    }
	

}
