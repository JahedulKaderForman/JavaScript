<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConvertStringToNumbers_1.aspx.cs" Inherits="JavascriptApp.ConvertStringToNumbers_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function addNumbers() {
            var firstNumber = parseInt(document.getElementById("TextBox1").value);
            var secondNumber = parseInt(document.getElementById("TextBox2").value);
            if (isNaN(firstNumber)) {
                alert("Not a Number");
            }
           
            document.getElementById("TextBox3").value = firstNumber + secondNumber;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>
             <asp:Label ID="Label1" runat="server" Text="First Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
             <asp:Label ID="Label2" runat="server" Text="Second Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
             <asp:Label ID="Label3" runat="server" Text="Result"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
             
            </td>
            <td>
                <input type="button" value="Add" id="btnAdd" onclick="addNumbers()"/>
            </td>
        </tr>
    </table>
      
    
    </div>
    </form>
</body>
</html>
