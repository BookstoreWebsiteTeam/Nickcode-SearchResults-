package Objects;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Bookstore
 */
import java.util.*;

public class SearchResults {
    ArrayList<Book> Results;
    Book Result;          //When searching by ISBN there should only be one result.
    
    public SearchResults(){
    }
    
    public SearchResults(ArrayList<Book> results){
        Results = results;
    }
    
    public SearchResults(Book result){
        Result = result;
    }
    
    public void sortByTitle(){
    Collections.sort(Results, (Book b1, Book b2) -> b1.getBookName().compareTo(b2.getBookName()));
    }
    
}
