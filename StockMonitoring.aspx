<%@ Page Title="Stock Monitoring" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockMonitoring.aspx.vb" Inherits="bcvr_web.StockMonitoring" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <p>Search by entering either Product Name, Brand, or Barcode.</p>
    </hgroup>


      <nav aria-label="breadcrumb" style="background-color:white;">
                     <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a id="A1" href="~/" runat="server">Home</a></li>
                            <li class="breadcrumb-item active"><%: Title %></li>
                      </ol>
    </nav>



   

    <div class="card shadow mb-4">
                        
                        <div class="card-body">
                           <label>Search Brand/Product Name/Barcode:<asp:TextBox ID="txt_search" runat="server" class="form-control form-control-sm-search"></asp:TextBox></label>
                            <div class="table-responsive">
                                <div id="dataTable_filter"></div>    
                                <asp:GridView class="table table-bordered dataTable" ID="grdview" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Size="Smaller">
                                </asp:GridView>

                               
                        </div>
                    </div>
        </div>
    
</asp:Content>