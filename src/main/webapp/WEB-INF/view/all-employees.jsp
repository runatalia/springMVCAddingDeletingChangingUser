<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!Doctype>
<html>

    <body>
        <h2>All employees</h2>
        <br>
        <table>
            <tr>
                <th>Name</th>   
                <th>Surname</th>    
                <th>Department</th>    
                <th>Salary</th>    
                <th>Name</th>    
            </tr>
            <c:forEach var="emps" items="${allEmps}">
                <tr>
                    <td> $(emps.name)</td>
                    <td> $(emps.surname)</td>
                    <td> $(emps.department)</td>
                    <td> $(emps.salary)</td>         

                </tr>
            </c:forEach>
        </table>
    </body>
</html>

