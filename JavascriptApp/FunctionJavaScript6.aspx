<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FunctionJavaScript6.aspx.cs" Inherits="JavascriptApp.FunctionJavaScript6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        //Different Type of defining a function
        function addNumber(firstNumber, secondNumber) {
            return firstNumber + secondNumber;
        }
        var result = addNumber(3, 4);
        document.write(result + "</br>");


        //function define by function expression.It's can not be hoisted.Hoisting means declation any top or button does not metter.
        var AddNumber = function (firstNumber, secondNumber) {
            return firstNumber + secondNumber;
        }

        var sum = AddNumber(4, 5);
        document.write(sum + "</br>");

        //compute Factorial
        var factorial = function ComputeFactorial(number) {
            if (number <= 1) {
                return 1;
            }
            return number * ComputeFactorial(number - 1);
        }
        var result = factorial(5);
        document.write(result + "</br>");

        //Another way to define function
        var fact = (function ComputeFactorial(number) {
            if (number <= 1) {
                return 1;
            }
            return number * ComputeFactorial(number - 1);
        }(5)); 
        document.write(fact + "</br>");

        //Closures in javascrpit
        function addNumbers(firstNumber, secondNumber) {
            var returnValue = "Result is :";
            function add() {
                return returnValue + (firstNumber + secondNumber);
            }
            return add();
        }

        var myFun = addNumber(4, 5);
        var result = myFun();
        document.write("Closures " + result + "<br/>");

        //JavaScript Argument object
        function printArgument() {
            for (var i = 0; i < arguments.length; i++) {
                document.write("Argument" + i + arguments[i] + "</br>");
            }
            document.write("yes </br>");
        }

        printArgument();
        printArgument("A", "B");
        printArgument(1, 2, 3);

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
