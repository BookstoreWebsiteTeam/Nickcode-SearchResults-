<%-- 
    Document   : SearchResults.get(i)Page
    Created on : Apr 17, 2017, 6:32:38 PM
    Author     : Bookstore
--%>

<%@page import="Objects.Book"%>
<%@page import="Objects.Search"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Results</title>
    </head>
    <body>
        <h3>Search Results</h3> <br><br>
        
        <%@page import = "java.util.*" %>
        <%@page import = "java.io.File" %>
        <%
        long isbn = 9780073376356L;
        String authors[] = new String[1];
        authors[0] = "Jesse Pinkman";
        
        
        Book test1 = new Book();
        test1.setIsbn(isbn);
        test1.setBookName("Chemistry");
        test1.setAuthor(authors);
        test1.setSemester("Fall");
        test1.setCourse("SWE 3313");
        test1.setSection(61);
        test1.setProfessor("Lartigue");
        test1.setCrn(22456);
        test1.setNewQuantity(30);
        test1.setUsedQuantity(10);
        test1.setRentalQuantity(20);
        test1.setEbookQuantity(999999);
        test1.setNewPrice(123.12);
        test1.setUsedPrice(70.31);
        test1.setRentalPrice(55.31);
        test1.setEbookPrice(67.93);
        test1.setDescription("This is a textbook for Chemistry! Apparently also SWE 3313 lol");
        Book test2 = new Book();
        test2.setIsbn(isbn);
        test2.setBookName("Chemistry");
        test2.setAuthor(authors);
        test2.setSemester("Fall");
        test2.setCourse("SWE 3313");
        test2.setSection(61);
        test2.setProfessor("Lartigue");
        test2.setCrn(22456);
        test2.setNewQuantity(30);
        test2.setUsedQuantity(10);
        test2.setRentalQuantity(20);
        test2.setEbookQuantity(999999);
        test2.setNewPrice(123.12);
        test2.setUsedPrice(70.31);
        test2.setRentalPrice(55.31);
        test2.setEbookPrice(67.93);
        test2.setDescription("This is a textbook for Chemistry! Apparently also SWE 3313 lol");
        Book test3 = new Book();
        test3.setIsbn(isbn);
        test3.setBookName("Chemistry");
        test3.setAuthor(authors);
        test3.setSemester("fall");
        test3.setCourse("SWE 3313");
        test3.setSection(61);
        test3.setProfessor("Lartigue");
        test3.setCrn(22456);
        test3.setNewQuantity(30);
        test3.setUsedQuantity(10);
        test3.setRentalQuantity(20);
        test3.setEbookQuantity(999999);
        test3.setNewPrice(123.12);
        test3.setUsedPrice(70.31);
        test3.setRentalPrice(55.31);
        test3.setEbookPrice(67.93);
        test3.setDescription("This is a textbook for Chemistry! Apparently also SWE 3313 lol");
        ArrayList<Book> SearchResults = new ArrayList();
        SearchResults.add(test1);
        SearchResults.add(test2);
        SearchResults.add(test3);
        
        for(int i=0; i<SearchResults.size();i++){
            String isbn1;
            String isbn2;
            String ISBN = String.valueOf(SearchResults.get(i).getIsbn());
            isbn1 = ISBN.substring(0, 3);
            isbn2 = ISBN.substring(3, ISBN.length());
        %>
        <table border="5px">
            <td>
                                     
                <%-- IMAGE --%>
                <img src="images/<%out.println(isbn1+"-"+isbn2);%>.jpg" height="200" width="133" >
                
                
            </td>
            <td>
                <table border="1px">
                    <tr>
                        <td>
                            <%-- TITLE GOES HERE. --%>
                            <% out.println(SearchResults.get(i).getBookName()); %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%-- AUTHOR GOES HERE. --%>
                            <% for(int j = 0; j < SearchResults.get(i).getAuthor().length; j++){
                                out.println(SearchResults.get(i).getAuthor()[j]); }%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%-- CLASS COURSE# --%>
                            <% out.println(SearchResults.get(i).getCourse()+SearchResults.get(i).getCrn()); %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ISBN#<br>
                            <% out.println(SearchResults.get(i).getIsbn()); %>
                        </td>                                
                    </tr> 
                </table>
            </td>
            <td>
                <%-- DESCRIPTION --%>
                <% out.println(SearchResults.get(i).getDescription()); %>
            </td>
            <td>
                <table border="1px">
                    <tr>
                        <td>
                            NEW
                        </td>
                        <td>
                            USED
                        </td>
                        <td>
                            RENTAL
                        </td>
                        <td>
                            EBOOK
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%-- NEW PRICE $$ --%>
                            <% out.println(SearchResults.get(i).getNewPrice());%>
                        </td>
                        <td>
                            <%-- USED PRICE $$ --%>
                            <% out.println(SearchResults.get(i).getUsedPrice());%>
                        </td>
                        <td>
                            <%-- RENTAL PRICE $$ --%>
                            <% out.println(SearchResults.get(i).getRentalPrice());%>
                        </td>
                        <td>
                            <%-- EBOOK PRICE $$ --%>
                            <% out.println(SearchResults.get(i).getEbookPrice());%>
                        </td>
                    </tr>
                </table>
            </td>
        </table>
        <% } %>
    </body>
</html>
