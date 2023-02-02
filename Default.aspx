<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="bcvr_web._Default" %>

<%--<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>--%>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent" Visible="True">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <h3>Quick Actions</h3>
    <ol class="round">
        <%--<li class="one">
            <h5> <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Product Listing</a></h5>
            View and Search List of All Products; its description, preparation, packaging, barcode, lot number(s), and prices.
            
        </li>

        <li class="two">
           <h5> <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Stock Monitoring</a></h5>
            View and Search List of Stock Balance of a specific product.
        </li>

        <li class="three">
           <h5> <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Orders Monitoring </a></h5>
            View and Search List of Client Orders; its date of order, status, peso value, and invoice.
        </li>

        <li class="four">
           <h5> <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Physical Count</a></h5>
            View, Search, and Record physical count details of a product. 
        </li>--%>

    </ol>

 



    <a href="ProductListing.aspx" class="card bg-primary text-white shadow">
           <div class="card-body" style="position:relative; overflow: hidden; color:white;"><b>Product Listing</b>
             <div class="text-white-50 small" >View list of all products and its details.<img src="/Images/productlist.png" width="100" style="position: absolute; right:0; top:-10px;">      </div>                                     
 
           </div></a>

    <br />

    <a href="StockMonitoring.aspx" class="card bg-danger text-white shadow">
           <div class="card-body" style="position:relative; overflow: hidden; color:white;"><b>Stock Monitoring</b>
             <div class="text-white-50 small" > View available stock balance of products. <img src="/Images/stockmonitoring.png" width="120" style="position: absolute; right:0; top:-10px;">      </div>                                     
 
           </div></a>

    <br />

     <a href="OrderMonitoring.aspx" class="card bg-success text-white shadow">
           <div class="card-body" style="position:relative; overflow: hidden; color:white;"><b>Orders Monitoring</b>
             <div class="text-white-50 small" > View list of orders and its details. <img src="/Images/ordermonitoring.png" width="120" style="position: absolute; right:0; top:-10px;">      </div>                                     
 
           </div></a>

    <br />

    <a href="PhysicalCount.aspx" class="card bg-info text-white shadow" runat="server">
           <div class="card-body" style="position:relative; overflow: hidden; color:white;"><b>Physical Count</b>
             <div class="text-white-50 small" > View list and Entry records of physical inventory. <img src="/Images/physicalcount.png" width="120" style="position: absolute; right:0; top:-10px;">      </div>                                     
 
           </div></a>

    <br />




    


   <%-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <div>
    <asp:GridView ID="grdview" runat="server">
    </asp:GridView>
    </div>
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>--%>


</asp:Content>
