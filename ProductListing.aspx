<%@ Page Title="Product Listing" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductListing.aspx.vb" Inherits="bcvr_web.ProductListing" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <p>View and Search List of All Products; its description, preparation, packaging, barcode, lot number(s), and prices.</p>
    </hgroup>

   <nav aria-label="breadcrumb" style="background-color:white;">
                     <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a id="A1" href="~/" runat="server">Home</a></li>
                            <li class="breadcrumb-item active"><%: Title %></li>
                      </ol>
    </nav>
    

    <div class="card shadow mb-4">
            
                        <div class="card-body">
                            <label>Search Brand/Product Name/Barcode:
                                    <asp:TextBox ID="txt_search" runat="server" class="form-control form-control-sm-search" onfocus="this.value=''">
                                     </asp:TextBox></label>
                                                                       
                            <div class="table-responsive">
                                    
                                <div id="dataTable_filter">
                               
                    
                                </div>


                                <asp:GridView class="table table-bordered dataTable" ID="grdview" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Size="Smaller">
                                    
                                    <Columns>
                                        <asp:ButtonField Text="View/Edit" />
                                    </Columns>
                                  
                                </asp:GridView>

                               
                        </div>
                    </div>
        </div>


</asp:Content>

