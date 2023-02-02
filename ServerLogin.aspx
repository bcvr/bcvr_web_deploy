<%@ Page Title="Server Login" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ServerLogin.aspx.vb" Inherits="bcvr_web.ServerLogin" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent" Visible="True">
      <hgroup class="title">
        <h1><%: Title %></h1>
        <p>Enter correct server address to use Web App.</p>
    </hgroup>


        <fieldset>
            <ol>
                <li class="email">
                    <asp:Label ID="Label1" runat="server">Server Address: </asp:Label>
                    <asp:TextBox runat="server" ID="txt_serverName" />
                    
                </li>
            </ol>
            <asp:Button ID="btn_login" runat="server" Text="Log in" />
            <%--<asp:Button ID="btn_cancel" runat="server" Text="Cancel"/>--%>
        </fieldset>

</asp:Content>
