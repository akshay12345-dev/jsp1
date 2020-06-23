<%@ page language="java"%>
<%@ page import="javax.sql.*,java.sql.*,java.util.*"%>
<html>
<head>
<body>

<%
	String s1=request.getParameter("n1");
	String s2=request.getParameter("n2");
	try
	{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","9765358175aA");
		PreparedStatement ps=con.prepareStatement("insert into form1 values(?,?)");
		ps.setString(1,s1);
		ps.setString(2,s2);
		int i=ps.executeUpdate();
		if(i>0)
		{
			out.println("record save");
		}
	}
		catch(Exception e)
		{
			out.println(e);
		}

%>
</body>
</html>
	