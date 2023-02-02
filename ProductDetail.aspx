<%@ Page Title="Product Detail" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.vb" Inherits="bcvr_web.ProductDetail" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <hgroup class="title">
        <h1><%: Title %></h1>
        <p>View and Search List of All Products; its description, preparation, packaging, barcode, lot number(s), and prices.</p>
    </hgroup>

    <nav aria-label="breadcrumb" style="background-color:white;">
                     <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a id="A1" href="~/" runat="server">Home</a></li>
                            <li class="breadcrumb-item"><a id="A2" href="ProductListing.aspx" runat="server">Product Listing</a></li>
                            <li class="breadcrumb-item active"><%: Title %></li>
                      </ol>
    </nav>
    
    <asp:Button ID="btn_back" runat="server" Text="&lt;&lt; Back to Search Results" BackColor="Transparent" BorderColor="Transparent" BorderStyle="None" ForeColor="Blue" CausesValidation="False" />

    <div class="card shadow mb-4">
        
           <div class="card-body">
               <table class="table table-bordered dataTable" id="dataTable" role="grid" aria-describedby="dataTable_info" style="width: 100%;" width="100%" cellspacing="0">
                                  
                                
                                    <tbody>
                                 
                                        
                                    <tr class="odd">
                                            <td>Brand Name</td>
                                            <td>
                                                <asp:Label ID="lbl_brandname" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even">
                                            <td>Product Name</td>
                                            <td>
                                                <asp:Label ID="lbl_productname" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>
                                    <tr class="odd">
                                            <td class="auto-style1">Lot Number(s)</td>
                                            <td class="auto-style1">
                                                <asp:Label ID="lbl_lotnumber" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even">
                                            <td>Barcode</td>
                                            <td>
                                                
                                                <asp:TextBox ID="txt_barcode" runat="server"  onfocus="this.value=''" class="form-control-entertext3"></asp:TextBox>
                                              
                                                
                                               <input type="number" runat="server" id="txt_barcodeQuantity" name="Quantity" class="form-control-entertext3" Placeholder="# of Copies">
                                     
                                                <asp:Button ID="btn_print" runat="server"  Text="Print" CausesValidation="False"   ValidationGroup="NewDepartmentValidationGroup" />
                                            </td>
                                     </tr>          
                                    <tr class="odd">
                                            <td>Preparation</td>
                                            <td>
                                                <asp:Label ID="lbl_preparation" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even">
                                            <td>Packaging</td>
                                            <td>
                                                <asp:Label ID="lbl_packaging" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>          
                                     <tr class="odd">
                                            <td>Expiration Date(s)</td>
                                            <td>
                                                <asp:Label ID="lbl_expdate" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even">
                                            <td>Special Price</td>
                                            <td>
                                                <asp:Label ID="lbl_sp" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>
                                     <tr class="odd">
                                            <td>Distribution Price</td>
                                            <td>
                                                <asp:Label ID="lbl_dp" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even">
                                            <td>Retail Price</td>
                                            <td>
                                                <asp:Label ID="lbl_rp" runat="server" Text=""></asp:Label>
                                            </td>
                                     </tr>          
                                      <tr class="odd">
                                            <td>Government Price</td>
                                            <td>
                                                <asp:Label ID="lbl_gp" runat="server" Text=""></asp:Label>
                                            </td>
                                    </tr>
                                    <tr class="even" id="tr_picture" runat="server">
                                            <td>Picture</td>
                                            <td>
                                                <asp:Image ID="product_img" runat="server" width="150" />
                                                <%--<input type="file" accept="image/*;capture=camera">--%>
                                                <asp:FileUpload ID="fileupload_productImg" runat="server" ValidateRequestMode="Inherit" ViewStateMode="Inherit" ClientIDMode="Static" />
                                               
                                          </td>
                                     </tr>                                   
                                </table>
               
               <br />
               <asp:Button ID="btn_save" runat="server" Text="     Save     " class="btn" BackColor="#1CC88A" ForeColor="White" BorderColor="#1CC88A" CausesValidation="False"/>       
               <asp:Button ID="btn_cancel" runat="server" Text="   Cancel   " class="btn" BackColor="gray" ForeColor="White" BorderColor="gray"  data-toggle="modal" data-target="#dialogModal" CausesValidation="False"/> 
              
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
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</asp:Content>
