<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DateJavaScript8.aspx.cs" Inherits="JavascriptApp.DateJavaScript8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        var d = new Date();
        document.write(d+" </br>");
        
        //Create a specific date object
        var dateOfBirth1 = new Date("January 13,1980 11:20:00");
        document.write(dateOfBirth1 + " </br>");

        

        //Another way.In javaScript month start from 0
        var DateOfBirth3 = new Date(1980, 0, 13, 11, 20, 0, 0);
        document.write(DateOfBirth3 + " </br>");

        //Custom Month and week day show show
        var CustomDateOfBirth = new Date("January 13,1980 11:20:00");
        var monthNumber = CustomDateOfBirth.getMonth();

        function getMonthNameFromMonthNumber(monthNumber) {
            var monthNames = ["January", "February", "March", "April", "May", "June", "July", "Augues", "Septmber", "Octobar", "Novembar", "December"];
            return monthNames[monthNumber];
        }
        document.write(getMonthNameFromMonthNumber(monthNumber) + " </br>");

        var weekNumber = CustomDateOfBirth.getDay();
        function getWeekNameFromNumber(weekNumber) {
            var weekDay = ["Sunday", "Monday", "TuesDay", "WednesDay", "Thursday", "Friday", "Saturday"];
            return weekDay[weekNumber];
        }

        document.write("WeekDay " + getWeekNameFromNumber(weekNumber) + " </br>");

        //Date formate dd/mm//yyyy

        function formatDate() {
            var date = new Date();
            var year = date.getFullYear();

            var month = date.getMonth();
            month = month + 1;
            if (month < 10) {
                month = "0" + month;
            }

            var day = date.getDay();
            
            if (day < 10) {
                day = "0" + day;
            }

            return day + "/" + month + "/" + year;
        }
        document.write(formatDate());


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
