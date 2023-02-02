<%@ Page Title="Order Detail" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.vb" Inherits="bcvr_web.OrderDetail" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <p>View and Search List of All Products; its description, preparation, packaging, barcode, lot number(s), and prices.</p>
    </hgroup>

    <nav aria-label="breadcrumb" style="background-color:white;">
                     <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a id="A1" href="~/" runat="server">Home</a></li>
                            <li class="breadcrumb-item"><a id="A2" href="OrderMonitoring.aspx" runat="server">Order Monitoring</a></li>
                            <li class="breadcrumb-item active"><%: Title %></li>
                      </ol>
    </nav>

    <asp:Button ID="btn_back" runat="server" Text="&lt;&lt; Back to Search Results" BackColor="Transparent" BorderColor="Transparent" BorderStyle="None" ForeColor="Blue" />

    <div class="card shadow mb-4">
           <div class="card-body">
               <table class="table dataTable" id="dataTable" role="grid" aria-describedby="dataTable_info" style="width: 100%;" width="100%" cellspacing="0">
                                  
                                
                                    <tbody>
                                 
                                        
                                    <tr class="odd">
                                            <td>Order No :</td>
                                            <td>
                                                <asp:Label ID="lbl_orderNo" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even">
                                            <td>Order Date :</td>
                                            <td>
                                                <asp:Label ID="lbl_orderDate" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>
                                    <tr class="odd">
                                            <td>Client Name :</td>
                                            <td>
                                                <asp:Label ID="lbl_name" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even">
                                            <td>Address :</td>
                                            <td>
                                                <asp:Label ID="lbl_address" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>          
                                    <tr class="odd">
                                            <td>PO#/PR#/Notes/Terms :</td>
                                            <td>
                                                <asp:Label ID="lbl_terms" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even">
                                            <td>Order Type :</td>
                                            <td>
                                                <asp:Label ID="lbl_orderType" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                     <tr class="odd">
                                            <td>Order Total :</td>
                                            <td>
                                                <asp:Label ID="lbl_orderTotal" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>                 
                                </table>
           </div>


        <div class="card-body">
                          
                            <div class="table-responsive">
                                
                               
                                <asp:GridView class="table table-bordered dataTable" ID="grdview" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Size="Smaller">
                                  
                                </asp:GridView>

                               
                        </div>
                    </div>


    </div>
    
</asp:Content>