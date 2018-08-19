<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoopJavaScipt4.aspx.cs" Inherits="JavascriptApp.LoopJavaScipt4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <script type="text/javascript">
       var target = Number(prompt("Please enter a Number"), " ");

       //for loop
       document.write("For Loop<br/>");
       for (var i = 1; i <= target; i++) {
           document.write(i + " ");
           if (i > 10) {
               break;
           }
       }

       //while Loop
       document.write("<br/>While Loop<br/>");
       var j = 1;
       while (j <= target) {
           document.write(j + " ");
           j++;
       }

       //Do while loop
       document.write("<br/>Do While Loop<br/>");
       var z = 1;
       do {
           document.write(z+ " ");
           z++;
       } while (z <= target);

   </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
