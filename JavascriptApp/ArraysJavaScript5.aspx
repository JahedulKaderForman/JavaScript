<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArraysJavaScript5.aspx.cs" Inherits="JavascriptApp.ArraysJavaScript5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        //Array in Javascript
        var myArray = [10, 20, 30];
        document.write(myArray[0] + " " + myArray[myArray.length - 1] + "<br/>");

        var MyNewArray = new Array(3);
        MyNewArray[0] = 10;
        MyNewArray[1] = 20;
        MyNewArray[2] = 30;
        document.write(MyNewArray+"<br/>");

        //array using for loop
        var ArrayNew = [];
        for (var i = 0; i < 5; i++) {
            ArrayNew[i] = i * 2;
        }
        for (var i = 0; i < ArrayNew.length; i++) {
            document.write(ArrayNew[i] + "<br/>");
        }
        //array push pop
        document.write("push pop<br/>");
        var ArrayNew1 = [];
        for (var i = 0; i < 5; i++) {
            ArrayNew1.push(i * 2);
            
        }
        ArrayNew1.unshift(1);//push 1 fornt of the array
        ArrayNew1.shift();//remove value from the fornt
        while(ArrayNew1.length>0){
            document.write(ArrayNew1.pop() + "<br/>");
        }

        //string sort in a array
        var myArrayNew = ["Sam", "Mark", "Tom", "David"];
        myArrayNew.sort();
        document.write(myArrayNew + "<br/>");

        //Number sort in a array
        var myArray2 = [20, 3, 5, 1, 4];
        myArray2.sort(function (a, b) { return a - b });
        document.write(myArray2 + "<br/>");

        //Reverse in a array
        document.write(myArray2.reverse() + "<br/>");

        //add or remove number in array by splice 
        //add
        var myArray4 = [1, 2, 5];
        myArray4.splice(2, 0, 3, 4);//index,delectCount,item1..itemx output: 1,2,3,4,5
        document.write(myArray4 + "<br/>");

        //remove
        var myArray5 = [1, 2, 55, 67, 3];
        myArray5.splice(2, 2);//index,deleteCOunt,Output: 1,2,3
        document.write(myArray5 + "<br/>");

        //array filter method
        var myFilterArray = [1, 2, 3, 4, 5, 6, 7, 8, 9];

        function isEven(value, index, array) {
            if (value % 2 == 0) {
                return true;
            }
            else {
                return false;
            }
        }
        
        var result = myFilterArray.filter(isEven);
        document.write(result + "<br/>");

        //remove duplicate value
        var myArray5=["Sam","mark","Tim","Sam"];
        var result2 = myArray5.filter(function (value, index, array) { return array.indexOf(value) == index; });
        document.write(result2 + "<br/>");

        //Two dimensional Array
        document.write("Two Dimensional Array <br/>");
        var TwoDiArray = new Array(3);

        for (var i = 0; i < 3; i++) {
            TwoDiArray[i] = new Array(3);
        }
        for (var i = 0; i < 3; i++) {
            for (var j = 0; j < 3; j++) {
                TwoDiArray[i][j] = j * 2;
            }
        }
        for (var i = 0; i < 3; i++) {
            for (var j = 0; j < 3; j++) {
                document.write(TwoDiArray[i][j] +"&emsp;") ;
            }
            document.write( "<br/>");
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
