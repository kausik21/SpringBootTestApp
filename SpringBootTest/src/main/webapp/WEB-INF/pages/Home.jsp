<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>
<h5 class="card-header info-color white-text text-center py-4">
    <strong>Medicine</strong>
</h5>
<form id="userForm" action="medicine" method="post">
    <div> MName :<input type="text" name="mname" class="form-control" > </div>
    <div> MComp :<input type="text" name="mcomp" class="form-control" > </div>
    <input type="submit" class="btn btn-primary" value="Add">
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

<c:forEach items="${medicines}" var="med">
    <form id="deleteMed" action="deleteMedicine" method="post">
        <div id="<c:out value='${med.mid}'/>delete"  class="modal fade">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-header">
                <h4 class="modal-title">Delete Form</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                <p>Do you want delete Medicine ? </p>
                 <input type="text" name="mname" value="<c:out value='${med.mname}'/>" class="form-control">
                 <input type="text" name="mid" value="<c:out value='${med.mid}'/>" class="form-control" hidden>
            </div>
            <div class="modal-footer">
                <input type="submit" class="btn btn-primary" value="Delete">
            </div>
            </div>
        </div>
    </form>
</c:forEach>


</body>

</html>
