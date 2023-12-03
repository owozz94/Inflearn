<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import = "hello.servlet.domain.member.Member" %>
<%@ page import = "hello.servlet.domain.member.MemberRepository" %>
<%
//request, response 사용 가능
    MemberRepository memberRepository = MemberRepository.getInstance();
    System.out.println("MemberSaveServlet.service");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    memberRepository.save(member);
%>
<html>
<head>
</head>
<body>
성공
<li>id=<%=member.getId()%></li>
<li>id=<%=member.getUsername()%></li>
<li>id=<%=member.getAge()%></li>
</body>
</html