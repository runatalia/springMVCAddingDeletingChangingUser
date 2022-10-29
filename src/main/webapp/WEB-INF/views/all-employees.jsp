<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!Doctype html>
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
                <th>Operations</th>  
            </tr>
            <style type="text/css">

                TABLE {
                    width: 300px; /* Table width */
                    border-collapse: collapse; /* Remove double lines between cells */
                }
                TD, TH {
                    padding: 3px; /* margins around the table */
                    border: 1px solid black; /* Frame Options */
                }
                TH {
                    background: #b0e0e6; /* Background color */
                }
            </style>
            <c:forEach var="emps" items="${allEmps}">
                <c:url var="updateButton" value="/updateInfo">
                    <c:param name="empId" value="${emps.id}"/>
                </c:url>
                <c:url var="deleteButton" value="/deleteEmployee">
                    <c:param name="empId" value="${emps.id}"/>
                </c:url>
                <tr>
                    <td> ${emps.name}</td>
                    <td> ${emps.surname}</td>
                    <td> ${emps.department}</td>
                    <td> ${emps.salary}</td>         
                    <td> <input type = "button" value="Update" onClick="window.location.href = '${updateButton}'"/>
                <br>
                <input type = "button" value="Delete" onClick="window.location.href = '${deleteButton}'"/></td> 

        </tr>
    </c:forEach>
</table>
<br><br>
<input type = "button" value="Add" onclick="window.location.href = 'addNewEmployee'"/>
</body>
</html>

