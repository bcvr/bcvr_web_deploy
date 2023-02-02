<%@ Page Title="Physical Count" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PhysicalCount.aspx.vb" Inherits="bcvr_web.PhysicalCount" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <p>Select date of Physical Count/Inventory Date</p>
    </hgroup>

   <nav aria-label="breadcrumb" style="background-color:white;">
                     <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a id="A1" href="~/" runat="server">Home</a></li>
                            <li class="breadcrumb-item active"><%: Title %></li>
                      </ol>
       
    </nav>
    

    <div class="card shadow mb-4">
            
                        <div class="card-body">
                          <label>Enter date of Physical Count:
                                     <input type="date" runat="server" id="dt_dateOfInventory"  name="Date of Inventory"  class="form-control form-control-sm-search" width="10%">
                              <asp:Button ID="btn_submit" runat="server" Text="Submit" ForeColor="White" Font-Size="10" BackColor="#666666" style="border-radius:.5rem;" TabIndex="1" UseSubmitBehavior="False"/>
                                 </label>
                            <div class="table-responsive">
                                
                                 

                            </div>
                       
                                <%--<asp:Calendar runat="server" ID="cal_dateOfCount"></asp:Calendar>--%>
                                 
                                
                                <div id="dataTable_filter">
                                     
                                <asp:GridView class="table table-bordered dataTable" ID="grdview" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Size="Smaller">
                                    <Columns>
                                        <asp:ButtonField Text="View/Edit" HeaderText="Action" />
                                    </Columns>
                                  
                                </asp:GridView>

                               
                        </div>
                    </div>
        </div>
    
</asp:Content>