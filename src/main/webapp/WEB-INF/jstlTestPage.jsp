<%@page language="java" import="java.util.*" pageEncoding="gb2312" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
<h1>JSTL Hello Example</h1>

<br>
<c:out value="c:out demo"/><br>
<c:out value="I am a nomal string" default="defaultValue"></c:out><br>
<c:out value="I am a string with special char: &lt&lt&lt&lt" escapeXml="true"></c:out><br>
<c:out value="I am a string with special char: &lt&lt&lt&lt" escapeXml="false"></c:out><br>
<c:out value="${null}">default string</c:out>

<br>
<br>
<br>

<c:out value="c:set demo"/><br>
<c:set value="ErinFan" var="myName" scope="session"/>
<c:set var="name2" scope="session">Reg</c:set>
<c:set var="name2" scope="request">Reg</c:set>


<li>get name from session: ${sessionScope.myName}</li>
<li>get second name from the session: ${sessionScope.name2}</li>

<br>
<br>
<br>

<c:out value="c:remove demo"/><br>
<c:remove var="name2" scope="session"/>
<c:out value="${sessionScope.name2}">name2 already been removed from session</c:out><br>

<br>
<br>
<br>

<c:out value="c:catch demo"/><br>
<c:catch var="name2">
    throw exception
</c:catch><br>

<br>
<br>
<br>

<c:out value="c:if demo"/><br>
<c:set value="10000" var="account1"/>
<c:set value="20000" var="account2"/>
<c:if test="${account1 == '10000'}" var="account1TestResult"></c:if>
<c:out value="account1 test value is: ${account1TestResult}"></c:out><br>
<c:if test="${account2 == '10000'}" var="account2TestResult"></c:if>
<c:out value="account2 test value is: ${account2TestResult}"></c:out><br>

<br>
<br>
<br>

<c:out value="c:choose demo"/><br>
<c:set var="scope" value="90"></c:set>
<c:choose>
    <c:when test="${scope >= 90}">
        Congratulations!
    </c:when>
    <c:when test="${scope >= 80 && scope < 90}">
        Just So So!
    </c:when>
    <c:when test="${scope >= 70 && scope < 80}">
        Need more hard work!
    </c:when>
    <c:otherwise>
        Sorry, you do not pass the exam.
    </c:otherwise>
</c:choose>

</body>
</html>