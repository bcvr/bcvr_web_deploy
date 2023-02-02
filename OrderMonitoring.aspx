<%@ Page Title="Order Monitoring" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderMonitoring.aspx.vb" Inherits="bcvr_web.OrderMonitoring" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <p>Search by order by entering its Order Number, Client Name, or Client P.O. Details.</p>
    </hgroup>


      <nav aria-label="breadcrumb" style="background-color:white;">
                     <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a id="A1" href="~/" runat="server">Home</a></li>
                            <li class="breadcrumb-item active"><%: Title %></li>
                      </ol>
    </nav>



   

    <div class="card shadow mb-4">
                        
                        <div class="card-body">
                          <label>Search Order No/Name/Details:<asp:TextBox ID="txt_search" runat="server" class="form-control form-control-sm-search"></asp:TextBox></label>
                            <div class="table-responsive">
                                
                                <div id="dataTable_filter">
                                     
                                </div>
                                <asp:GridView class="table table-bordered dataTable" ID="grdview" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Size="Smaller">
                                    <Columns>
                                        <asp:ButtonField Text="View" />
                                    </Columns>
                                  
                                </asp:GridView>

                               
                        </div>
                    </div>
        </div>
    
</asp:Content>