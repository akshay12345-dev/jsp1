<%@ page language="java"%>
<html>
<body>
	<%! String a,b,c,d;%>
<%
try
{
session=request.getSession();
a=(String)session.getAttribute("id");
b=(String)session.getAttribute("name");


}
catch(Exception e)
{
	out.println(e);
}
%>
<% out.println("id "+a); %><br><br>
<% out.println("name "+b); %><br><br>



</body>
</html>
			