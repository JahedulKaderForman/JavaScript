 n<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StringJavascript2.aspx.cs" Inherits="JavascriptApp.StringJavascript2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
         //we can use either single or double quotes-
        var string1 = "string in double quotes";
        var string2 = 'string in single quotes';

        //Concatenating strings using + operator
        var result = string1 + " " + string2;
       
        document.write(result+"<br/>");

        //Concatenatring using concat menthod
        var result2 = string1.concat(string2," ","Hello world ");
      
        document.write(result2 + "<br/>");

        //to using single quotes in a string
        var string3 = "Its 'Bangladesh' which is our country";
        document.write(string3 + "<br/>");

        //convert uppercase
        var upperCaseString = "JavaScript";
        document.write(upperCaseString.toUpperCase() + "<br/>");

        //convert lowercase
        var lowerCaseString = "JAVASCRIPT";
        document.write(lowerCaseString.toLowerCase()+"<br/>");       

        //length function
        document.write(lowerCaseString.length + "<br/>");

        //Remove white space form start and ends of a string
        var string4 = "   Chtittagong   ";
        var string5 = " Bangladesh ";

        document.write(string4.trim() + string5.trim() + "<br/>");

        //Replace Method
        var replaceString = "Hello Javascript";
        document.write("Replace :" + replaceString.replace("Javascript", " World") + "<br/>");

        // A case-sensitive global replacement
        var myCaseSensitive = "You can see a road beside the town,same Road also have in our Vellage";
        var result3 = myCaseSensitive.replace(/road/g, "Tree");
        
        document.write(result3 + "<br/>");
        //A Not case-sensitive global replacement
        var myCaseNotSensitive = "You can see a road beside the town,same Road also have in our Vellage";
        var result4 = myCaseNotSensitive.replace(/road/gi, "Tree");
        document.write(result4 + "<br/>");

        //substring and index of example

        function getEmailandDomainparts() {
            var email = document.getElementById("TextBoxEmailAddress").value;
            var Emailpart = email.substring(0, email.indexOf("@"));
            var Domainpart = email.substring(email.indexOf("@") + 1);
            document.getElementById("TextBoxEmail").value = Emailpart;
            document.getElementById("TextBoxDomain").value = Domainpart;
        }

        function getTopLevelDomain() {
            var url = document.getElementById("TextBoxWebsiteUrl").value;
            var TopDomain = url.substr(url.lastIndexOf(".")+1);
            document.getElementById("TextBoxTopLevelDomain").value = TopDomain;
        }



    </script>
</head>
<body>
    <form id="form1" runat="server">
    <!--substring and index of example--->
   <table>
       <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label>
            </td>
           <td>
               <asp:TextBox ID="TextBoxEmailAddress" runat="server"></asp:TextBox>
           </td>
       </tr>
       <tr>
           <td>
                <asp:Label ID="Label2" runat="server" Text="Email Part"></asp:Label>
            </td>
           <td>
               <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
              
           </td>
       </tr>
        <tr>
           <td>
                <asp:Label ID="Label3" runat="server" Text="Domain"></asp:Label>
            </td>
           <td>
               <asp:TextBox ID="TextBoxDomain" runat="server"></asp:TextBox>
              
           </td>
       </tr>
        <tr>
           <td>
                
            </td>
           <td>
               <input id="EmailButton" type="button" value="Get email and Domain" onclick="getEmailandDomainparts()" />
              
           </td>
       </tr>
   </table>

    <!---substr and lastIndexOf--->
        <table>
        <tr>
           <td>
                <asp:Label ID="Label4" runat="server" Text="Web site URl"></asp:Label>
            </td>
           <td>
               <asp:TextBox ID="TextBoxWebsiteUrl" runat="server"></asp:TextBox>
              
           </td>
       </tr>
        <tr>
           <td>
                <asp:Label ID="Label5" runat="server" Text="Web site Domain"></asp:Label>
            </td>
           <td>
               <asp:TextBox ID="TextBoxTopLevelDomain" runat="server"></asp:TextBox>
              
           </td>
       </tr>
        <tr>
           <td>
                
            </td>
           <td>
               <input id="ButtonTopLevelDomain" type="button" value="Get Top Level Domain" onclick="getTopLevelDomain()" />
              
           </td>
       </tr>
            </table>
    </form>
</body>
</html>
