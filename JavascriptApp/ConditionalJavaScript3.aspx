<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConditionalJavaScript3.aspx.cs" Inherits="JavascriptApp.ConditionalJavaScript3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <script type="text/javascript">
      
       var userInput = Number(prompt("Enter A number", " "));
       //if-else
       if (userInput == 1) {
           alert("Number is One");
       }
       else if (userInput == 2) {
           alert("Number is Two");
       }
       else {
           alert("Number is not between 1 & 2");
       }

       //switch
       switch (userInput) {
           case 1:
               alert("Number is One");
               break;
           case 2:
               alert("Number is Two");
               break;
           default:
               alert("Number is not between 1 & 2");

       }

       //Ternary Operator
       //Boolean Expression?Statement to execute if true:Statement to execute if false
       userInput % 2 == 0 ? document.write("your Number is even") : document.write("your Number id odd");


   </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
