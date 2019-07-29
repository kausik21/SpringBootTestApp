<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<body>

<form id="userForm" action="medicine" method="post">
    <div> MName :<input type="text" name="mname" class="form-control" > </div>
    <div> MComp :<input type="text" name="mcomp" class="form-control" > </div>
    <input type="submit" value="Add">
</form>
</div>
</br>
<div align="center">
    <c:if test="${!empty medicines}">
        <table id ="userDetails"border="1" bgcolor="#f0f8ff" width="800px">
            <tr
                    style="background-color:transparent; color: #1f89ba; text-align: center;"
                    height="50px" width="100px">
                <td > MName  </td>
                <td> MComp </td>
                <td></td>
            </tr>
            <c:forEach items="${medicines}" var="med">
                <tr
                        style="background-color: white; color: black; text-align: center;"
                        height="30px">
                    <td text align="center">${med.mname}
                    </td>
                    <td text align="center"> ${med.mcomp}
                    </td>
                    <td>
                        <a href="#<c:out value='${med.mid}'/>edit"
                           data-toggle="modal"
                           data-rel="tooltip"
                           title="edit">edit
                            <i class="icon-pencil bigger-130"></i></a>
                        </br>
                        <a href="#<c:out value='${med.mid}'/>delete"
                           data-toggle="modal"
                           data-rel="tooltip"
                           title="delete">delete
                            <i class="icon-ban-circle bigger-120"></i></a>
                    </td>
                </tr>
            </c:forEach>

        </table>
        <br>
    </c:if>


</div>

</body>

</html>
