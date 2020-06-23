<%@ page language="java"%>
<%@ page import="javax.sql.*,java.sql.*,java.util.*"%>
<html>
<head>
<body>

<%
	String s1=request.getParameter("n1");
	String s2=request.getParameter("n2");
	String sid,sname;
	try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","9765358175aA");
			System.out.println("Connection to db"+con);
			PreparedStatement ps=con.prepareStatement("select id, name from form1 where id=? and name=?");
			
			ps.setString(1,s1);
			
			ps.setString(2,s2);
			System.out.println("test1");
			ResultSet rs=ps.executeQuery();
			System.out.println("tt");
			while(rs.next())
			{
				
				sid=rs.getString(1);
				sname=rs.getString(2);
				
					if(s1.equals(sid)&&s2.equals(sname))
					{
						
						
					<%	
						request.getSession();
						session.setAttribute("id",sid);
						session.setAttribute("name",sname);
					%>
						<jsp:forward page="welcome.jsp"/>
						
					<% }
					else
					{
						
						out.print("Wrong username password");
					
						
				

				
			}
		}
			catch(Exception e)
			{
				out.println("Exception "+e);
			}
	}
%>
</body>
</html>
	