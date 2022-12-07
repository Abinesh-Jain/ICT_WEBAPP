<%-- 
    Document   : index
    Created on : 7 Dec 2022, 10:59:48
    Author     : amsia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
<%@page import="java.sql.*,java.util.*"%>
<%
//String first_name=request.getParameter("first_name");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into class(student_id,name,section_id,section)values('1','admin','1','D')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        //e.printStackTrace();
        }
 %>

    </body>
</html>
