<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GeneratedBarcode.aspx.vb" Inherits="bcvr_web.GeneratedBarcode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>

</head>
    <style>
@import url('https://fonts.googleapis.com/css2?family=Libre+Barcode+39+Text&display=swap');
</style>
<body onload="window.print()">
   
    
     <div class="main" >
<%--<a href="#" id="link_back" onclick="history.go(-1)" style="display:none">&lt;&lt; Back to Search Results</a>--%>
        <div class="inner" style="font-size: 25px;" >
            <p style="font-family:'Tahoma'; font-size: 15px;"> <%=item_name %></p>

            <script>
                 index = <% =param2%>
                 index_break = 1
                document.write(" <table border=1pt dotted black;>")
                for (rows = 1; rows <= Math.ceil(index / 5) ; rows++) {
                    document.write(" <tr style=font-family:'Libre Barcode 39 Text';> ")
                    for (col = 1; col <= 5; col++) {
                        if (index_break > index) break;
                        document.write(" <td style =\"padding: -100px\"; ><p style=\"font-size: 45px; font-family:'Libre Barcode 39 Text'\">&nbsp;*" + <% =param1%> +"*&nbsp;</p> </td> ")
                        index_break++
                    }
                    document.write(" </tr> ")
                }
                document.write(" </table> ")
                //window.print()
               
            </script>
             <%--<button onclick="window.print()">Print this page</button>--%>
        </div>
    </div>
</body>
</html>
