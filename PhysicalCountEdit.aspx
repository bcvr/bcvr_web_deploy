<%@ Page Title="Physical Count Edit" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PhysicalCountEdit.aspx.vb" Inherits="bcvr_web.PhysicalCountEdit" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script src ="Scripts\bcvr.js"> </script>
    <hgroup class="title">
        <h1><%: Title %></h1>
        <p>Edit the physical quantity count of the following product based on its specific details.</p>
    </hgroup>



    <nav aria-label="breadcrumb" style="background-color:white;">
                     <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a id="A1" href="~/" runat="server">Home</a></li>
                            <li class="breadcrumb-item"><a id="A2" href="PhysicalCount.aspx" runat="server">Physical Count</a></li>
                            <li class="breadcrumb-item"><a id="A3"   runat="server">Physical Count Detail</a></li>
                            <li class="breadcrumb-item active"><%: Title %></li>
                      </ol>
    </nav>

   

    <div class="card shadow mb-4">
           <div class="card-body">
                
               <table class="table dataTable" id="dataTable" role="grid" aria-describedby="dataTable_info" style="width: 100%;" width="100%" cellspacing="0">
                                
                                
                                    <tbody>
                                 <tr class="even">
                                            <td>Brand ID :</td>
                                            <td>
                                                <asp:Label ID="lbl_brandid" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>
                                        
                                    <tr class="odd">
                                            <td>Item No :</td>
                                            <td>
                                                <asp:Label ID="lbl_itemNo" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even">
                                            <td>Product Name :</td>
                                            <td>
                                                <asp:Label ID="lbl_productName" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>
                                   <tr class="odd">
                                            <td>Brand Name :</td>
                                            <td>
                                                <asp:Label ID="lbl_brand" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>       
                                        
                                          <tr class="Even">
                                            <td>Lot Number :</td>
                                            <td>
                                                <asp:Label ID="lbl_lotno" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>    
                                        
                                          <tr class="odd">
                                            <td>Expiry Date :</td>
                                            <td>
                                                <asp:Label ID="lbl_expdate" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>                                                                                                           
                                 
                                      <tr class="odd">
                                            <td>Barcode :</td>
                                            <td>
                                                <div> <asp:TextBox ID="txt_barcode" runat="server" class="form-control-entertext2 text" UseSubmitBehavior="False"  onfocus="this.value=''"></asp:TextBox>  </div>
                                               
                                                 <input type="number" runat="server" id="txt_barcodeQuantity" name="Quantity" class="form-control-entertext3" Placeholder="# of Copies">
                                     
                                                <asp:Button ID="btn_print" runat="server"  Text="Print" CausesValidation="False"   ValidationGroup="NewDepartmentValidationGroup" />
                                            </td>
                                     </tr>         

                                    <tr class="odd">
                                            <td>System Count :</td>
                                            <td>
                                                <asp:Label ID="lbl_systemCount" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                        
                                    <tr class="even">
                                            <td>Physical Count :</td>
                                            <td>
                                               <div> <asp:TextBox ID="txt_physicalCount" runat="server" class="form-control-entertext2 text" onfocus="this.value=''" Width="100px"></asp:TextBox>  <asp:Label ID="lbl_packaging" runat="server" Text=""></asp:Label> </div>
                                            </td>
                                    </tr>

                                         <tr class="odd" id="tr_picture" runat="server">
                                            <td>Picture</td>
                                            <td>
                                                <asp:Image ID="product_img" runat="server" width="150" />
                                                <%--<input type="file" accept="image/*;capture=camera">--%>
                                                <asp:FileUpload ID="fileupload_productImg" runat="server" ValidateRequestMode="Inherit" ViewStateMode="Inherit" ClientIDMode="Static" />
                                               
                                          </td>
                                     </tr> 
                                         
                                </table>
            
             
               <asp:Button ID="btn_save" runat="server" Text="     Save     " class="btn" BackColor="#1CC88A" ForeColor="White" BorderColor="#1CC88A"/>       
               <asp:Button ID="btn_cancel" runat="server" Text="   Cancel   " class="btn" BackColor="gray" ForeColor="White" BorderColor="gray"/> 
           </div>
        


    </div>
    
   

            <script type="text/javascript">
                $(document).keypress(function (e) {
                    //Check which key is pressed on the document or window
                    if (e.which == 13) {
                        // if it is 13 that means enter key pressed, then call the function to cancel the event
                        e.preventDefault();
                    }
                });
</script>
</asp:Content>