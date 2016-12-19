<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Change_password.aspx.cs" Inherits="Auto_Pac.Sales.Change_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

        .main{
             box-shadow:5px 0 30px -5px #333, 5px 0 0 -5px #333;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
         <div class="main">
              <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
          <br />
             <br />
              <div style="padding-left:20px;">
                   <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                 <asp:label id="lbldesc" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Old Password</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_oldpass" class="form-control" runat="server"></asp:textbox>
            </div>
                       </div>
                  <br />
               <div class="row equal">
             <div class="col-xs-6 col-sm-3">
                  <asp:label id="lblgroup" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">New Password</asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_newpass" class="form-control" runat="server"></asp:textbox>
            </div>
                       </div>
                  <br />
                    <div class="row equal">
             <div class="col-xs-6 col-sm-3">
                  <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Confirm New Password</asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_confirmpass" class="form-control" runat="server"></asp:textbox>
            </div>
                       </div>
                  <br />
                  <div class="row equal">
             <div class="col-xs-6 col-sm-3">
                 </div>
                       <div class="col-xs-6 col-sm-3">
                           <asp:ImageButton ID="Img_add" runat="server" ImageUrl="~/Resources/images/B_Update.png"/> 
                 </div>
                      </div>
                </div>
             </div>
        </div>

</asp:Content>
