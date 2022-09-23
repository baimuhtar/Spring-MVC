<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>

<h2> Dear Employee, Please enter your details</h2>
<br>
<br>


<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    Department <from:select path="department">
    <form:options items="${employee.departments}"/>
</from:select>
    <br><br>
    Which car do you want?
    <form:radiobuttons path="carBrand" items = "${employee.carBrands}"/>
    <input type="submit" value="OK">
</form:form>


<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--           placeholder="Write your name"/>--%>
<%--    <input type="submit"/>--%>
<%--</form>--%>
</body>
</html>