package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Objects.Book;
import Objects.Search;
import java.util.*;
import java.io.File;

public final class SearchResultsPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Search Results</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h3>Search Results</h3> <br><br>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

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
        
      out.write("\n");
      out.write("        <table border=\"5px\">\n");
      out.write("            <td>\n");
      out.write("                                     \n");
      out.write("                ");
      out.write("\n");
      out.write("                <img src=\"images/");
out.println(isbn1+"-"+isbn2);
      out.write(".jpg\" height=\"200\" width=\"133\" >\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                <table border=\"1px\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
 out.println(SearchResults.get(i).getBookName()); 
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
 for(int j = 0; j < SearchResults.get(i).getAuthor().length; j++){
                                out.println(SearchResults.get(i).getAuthor()[j]); }
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
 out.println(SearchResults.get(i).getCourse()+SearchResults.get(i).getCrn()); 
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            ISBN#<br>\n");
      out.write("                            ");
 out.println(SearchResults.get(i).getIsbn()); 
      out.write("\n");
      out.write("                        </td>                                \n");
      out.write("                    </tr> \n");
      out.write("                </table>\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                ");
      out.write("\n");
      out.write("                ");
 out.println(SearchResults.get(i).getDescription()); 
      out.write("\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                <table border=\"1px\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            NEW\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            USED\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            RENTAL\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            EBOOK\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
 out.println(SearchResults.get(i).getNewPrice());
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
 out.println(SearchResults.get(i).getUsedPrice());
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
 out.println(SearchResults.get(i).getRentalPrice());
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
 out.println(SearchResults.get(i).getEbookPrice());
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </td>\n");
      out.write("        </table>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
