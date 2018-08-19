<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inline_External_Javascript.aspx.cs" Inherits="JavascriptApp.Inline_External_Javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <script type="text/javascript">
       function IsEven() {
           var number = document.getElementById("TextBox1").value;
           if (number % 2 == 0) {
               alert(number + " is even number");
           }
           else {
               alert(number + " is odd number");
           }
       }
   </script>

   <%-- External js
    <script type="text/javascript" src="external.js">

    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        Number:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <input type="button" value="check Number" onclick="IsEven()"/>
    </form>
</body>
</html>
