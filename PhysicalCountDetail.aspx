<%@ Page Title="Physical Count Detail" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PhysicalCountDetail.aspx.vb" Inherits="bcvr_web.PhysicalCountDetail" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1> 
        <p>Search product details that is tagged to its group to record physical count or inventory.</p>
    </hgroup>

    <nav aria-label="breadcrumb" style="background-color:white;">
                     <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a id="A1" href="~/" runat="server">Home</a></li>
                            <li class="breadcrumb-item"><a id="A2" href="PhysicalCount.aspx?param=<%: =param %>" runat="server">Physical Count</a></li>
                            <li class="breadcrumb-item active"><%: Title %></li>
                      </ol>
        
    </nav>

    

    <div class="card shadow mb-4">
           <div class="card-body">
               
           </div>


        <div class="card-body">
                          <h4>Physical Count Group: <asp:Label ID="physcount_name" runat="server" Text="Label"></asp:Label></h4>
            <label>Search Product Name/Brand/Barcode/Lot Number:<asp:TextBox ID="txt_search" runat="server" class="form-control form-control-sm-search" placeholder ="Enter product details, then press enter." onfocus="this.value=''"></asp:TextBox></label>
              <asp:Button ID="btn_show" runat="server" Text="  Show All  "  ForeColor="White" Font-Size="10" BackColor="#666666" style="border-radius:.5rem;" TabIndex="1" UseSubmitBehavior="False"/>                
            <div class="table-responsive">
                                <div id="dataTable_filter">                        
                                </div>
                                <asp:GridView class="table table-bordered dataTable" ID="grdview" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Size="Smaller">
                                    <Columns>
                                        <asp:ButtonField HeaderText="Action" Text="View/Edit" />
                                    </Columns>
                                  
                                </asp:GridView>

                               
                        </div>
                    </div>


    </div>
    
</asp:Content>