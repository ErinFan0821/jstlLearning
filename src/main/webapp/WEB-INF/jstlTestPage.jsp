<%@page language="java" pageEncoding="gb2312" %>
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

<br>
<br>
<br>

<c:out value="c:forEach Demo"/>
<c:forEach var="account" items="${accountList}">
    <c:out value="${account}"/>
</c:forEach>
<br><br>
<c:out value="Use begin and end to do foreach"/><br>
<c:forEach var="account" items="${accountList}" begin="1" end="2" step="1">
    <c:out value="${account}"/>
</c:forEach>
<br>
<br>
<c:out value="Out put this foreach's info: "/><br>
<c:forEach var="account" items="${accountList}" begin="0" end="3" step="2" varStatus="attribute">
    <br>
    Current value: <c:out value="${account}"/><br>
    Current Index: <c:out value="${attribute.index}"/><br>
    Foreach times: <c:out value="${attribute.count}"/><br>
    Is the first index: <c:out value="${attribute.first}"/><br>
    Is the last index: <c:out value="${attribute.last}"/><br>

</c:forEach>

<br>
<br>
<br>

<c:out value="c:forToken Demo"/><br>
<c:forTokens items="1,2,3,4" delims="," var="result">
    <c:out value="${result}"/>
</c:forTokens>
<br>
<c:forTokens items="A#B#C#D#E#F#G" delims="#" var="result" varStatus="attribute">
    <br>
    Current Token: <c:out value="${result}"/><br>
    Current Index: <c:out value="${attribute.index}"/><br>
    Foreach Times: <c:out value="${attribute.count}"/><br>
    Is the first index: <c:out value="${attribute.first}"/><br>
    Is the last index: <c:out value="${attribute.last}"/><br>
</c:forTokens>

<br>
<br>
<br>

<c:out value="Demo for open URL"/><br>

<c:out value="c:import demo"/><br>
<%--<c:import url="http://www.baidu.com"/>--%>
<c:catch var="error">
    First import: <c:import url="test.txt"/>
</c:catch>
<br>
<c:out value="${error}"/><br>
<c:catch var="error">
    <c:import url="test.txt" var="myurl" scope="session" charEncoding="gbk"/><br>
    Second import: <c:out value="${myurl}"/>
</c:catch>

<%--<br>--%>
<%--<c:out value="c:redirect demo"/><br>--%>
<%--<c:redirect url="http://localhost:8080">--%>
    <%--<c:param name="username" value="fakeUser"/>--%>
    <%--<c:param name="password" value="fakePsd"/>--%>
<%--</c:redirect>--%>

<br>
<c:out value="c:url demo"/><br>
<c:url value="http://localhost:8080/jstlLearning" var="url" scope="session"/>
<a href="${url}">Open Url</a>
</body>
</html>