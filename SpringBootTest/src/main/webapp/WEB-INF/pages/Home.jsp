<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}

        /* The Modal (background) */
        .modal {
            display: block; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            position: relative;
            background-color: #fefefe;
            margin: auto;
            padding: 0;
            border: 1px solid #888;
            width: 80%;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
            -webkit-animation-name: animatetop;
            -webkit-animation-duration: 0.4s;
            animation-name: animatetop;
            animation-duration: 0.4s
        }

        /* Add Animation */
        @-webkit-keyframes animatetop {
            from {top:-300px; opacity:0}
            to {top:0; opacity:1}
        }

        @keyframes animatetop {
            from {top:-300px; opacity:0}
            to {top:0; opacity:1}
        }

        /* The Close Button */
        .close {
            color: white;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }

        .modal-header {
            padding: 2px 16px;
            background-color: #5cb85c;
            color: white;
        }

        .modal-body {padding: 2px 16px;}

        .modal-footer {
            padding: 2px 16px;
            background-color: #5cb85c;
            color: white;
        }
    </style>
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
<div>
<c:forEach items="${medicines}" var="med">
    <form id="deleteMed" action="deleteMedicine" method="post">
        <div id="<c:out value='${med.mid}'/>delete" style="width:800px; margin-left:-400px;" class="modal" aria-hidden="true">
            <div class="modal-body">
                <p>Do you want delete Medicine ? </p>
                <div> <input type="text" name="mid" class="form-control" ><c:out value='${med.mname}'/></div>
            </div>
            <div class="modal-footer">
                <input type="submit" class="btn btn-primary" value="Delete">
            </div>

        </div>
    </form>
</c:forEach>
</div>

</body>

</html>
