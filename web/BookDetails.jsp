<%-- 
    Document   : BookDetails
    Created on : Apr 19, 2017, 4:53:54 PM
    Author     : Bookstore
--%>

<%@page import="Objects.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  String rnum;
    rnum = request.getParameter("get");
    Book b = (Book)request.getSession().getAttribute("result"+rnum); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%out.println(b.getBookName());%></title>
        <style type ="text/css" media="screen"><!--
            #Description{
                margin-left: auto;
                margin-right: auto;
                font-size: 14px
            }
            --></style>
    </head>
    <body>
        <%
            String isbn1;
            String isbn2;
            String ISBN = String.valueOf(b.getIsbn());
            isbn1 = ISBN.substring(0, 3);
            isbn2 = ISBN.substring(3, ISBN.length());
        %>
        
        <table border="0px" cellspacing="3px" cellpadding="3px">
            <tr>
                <td>
                    <img src="images/<%out.println(isbn1+"-"+isbn2);%>.jpg" margin-left="100px">
                </td>
                <td>
                    <table border="0px" cellspacing="3px" cellpadding="3px">
                        <tr> 
                            <td>
                                Title: <strong> <% out.println(b.getBookName()); %> </strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            Author(s):
                                        </td>
                                        <td>
                                            <table>
                                                <% for(int j = 0; j < b.getAuthor().length; j++){
                                                            out.println(" <tr><td>"+b.getAuthor()[j]+"</td></tr>"); }%>                                               
                                            </table>
                                        </td>
                                    </tr>                                     
                                </table>                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                ISBN: <%out.println(isbn1+"-"+isbn2);%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>   
        </table>
        <br><br>
        <table align="center" border="0px" cellspacing="3px" cellpadding="3px">
            <tr>
                <td>
                    <%--BUY NEW BOOK TABLE --%>
                    <table border="1px">
                        <tr>
                            <td>
                                <form action='${pageContext.request.contextPath}/Bookstore}' method="post">
                                    <input type="submit" value="Buy NEW" name="BuyNew" />                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                    <input type="number" name="NewQuantity" min="0" max="<%out.println(b.getNewQuantity());%>">
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price<br>
                                <%out.println("$"+ b.getNewPrice()); %>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <%--BUY USED BOOK TABLE --%>
                    <table border="1px">
                        <tr>
                            <td>
                                <form action='${pageContext.request.contextPath}/Bookstore}' method="post">
                                    <input type="submit" value="Buy USED" name="BuyUsed" />                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                    <input type="number" name="UsedQuantity" min="0" max="<%out.println(b.getUsedQuantity());%>">
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price<br>
                                <%out.println("$"+ b.getUsedPrice()); %>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <%--BUY RENTAL BOOK TABLE --%>
                    <table border="1px">
                        <tr>
                            <td>
                                <form action='${pageContext.request.contextPath}/Bookstore}' method="post">
                                <input type="submit" value="Buy RENTAL" name="BuyRental" />                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                    <input type="number" name="RentalQuantity" min="0" max="<%out.println(b.getRentalQuantity());%>">
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price<br>
                                <%out.println("$"+ b.getRentalPrice()); %>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <%--BUY EBOOK TABLE --%>
                    <table border="1px">
                        <tr>
                            <td>
                                <form action='${pageContext.request.contextPath}/Bookstore}' method="post">
                                <input type="submit" value="Buy Ebook" name="BuyEbook" />
                            </td>
                        </form>
                        </tr>
                        <tr>
                            <td>
                                    <input type="number" name="EbookQuantity" >
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price<br>
                                <%out.println("$"+ b.getEbookPrice()); %>
                            </td>                        
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
                        
        <br><br>
        <div id="Description">
        <strong>Description: </strong>
        <table width="700px">
            <tr>                
                <td>
                    <%out.println(b.getDescription()); %>
                </td>
            </tr>          
        </table>
        </div>

        <br><br>
        <table align="center" cellspacing="50px">
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                Required:
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Course#:
                            </td>
                            <td>
                                Professor:
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%--need method to fill this out. --%>
                                N/A
                            </td>
                            <td>
                                <%--need method to fill this out. --%>
                                N/A
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                Recommended:
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Course#:
                            </td>
                            <td>
                                Professor:
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%--need method to fill this out. --%>
                                N/A
                            </td>
                            <td>
                                <%--need method to fill this out. --%>
                                N/A
                            </td>                            
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </body>
</html>
