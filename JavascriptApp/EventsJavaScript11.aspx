<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventsJavaScript11.aspx.cs" Inherits="JavascriptApp.EventsJavaScript11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--mouse over event-->
    <input type="button" value="Click Me" id="btn" 
        onmouseover="changeColorOnMourseOver()"
        onmouseout="changeColorMouseOut()"
        />
    <br />
    <!--confirmationevent--->
    <input type="submit" value="Submit" id="btn" onclick="return confirmOnSubmit()" />
    
    <!--Validation-->
    <br />
    First Name
    <input type="text" id="txtFirstname" onkeyup="validatRequiredField('txtFirstname')" onblur="validatRequiredField('txtFirstname')" />
    <br />
    Last Name
    <input type="text" id="txtLastName" onkeyup="validatRequiredField('txtLastName')" onblur="validatRequiredField('txtLastName')"/>

    <script type="text/javascript">
        //mousever event
        function changeColorOnMourseOver()
        {
            var control = document.getElementById("btn");
            control.style.background = 'red';
            control.style.color = 'yellow';
        }

        function changeColorMouseOut() {
            var control = document.getElementById("btn");
            control.style.background = 'black';
            control.style.color = 'white';
        }

        //confirmationevent
        function confirmOnSubmit() {
            if (confirm("Are you sure you want to submit")) {
                alert("you Selected Ok");
                return true;
            }
            else {
                alert("You selected Cancel");
                return false;
            }
        }

        //validation

        function validatRequiredField(controlId) {
            var control = document.getElementById(controlId);
            control.style.color = 'red';
            if (control.value == "") {
                control.style.background = 'red';
            }
            else {
                control.style.background = 'green';
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
