<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Account_Code_Creation.aspx.cs" Inherits="Auto_Pac.AutoPac.Account_Code_Creation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

         

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper" padding-left: "10px"; background-color: white;">


       <div class="main">
              <br />

            <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ;color: brown;"> </asp:label>
              <br />
            <br />
            <div style="padding-left: 20px;">
        
                  <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblaccount_code" runat="server" Font-Size="18px" Text="Account Code" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtaccount_code" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                 </div>

                <br />

                <div class="row equal">
                          <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblPurpose" runat="server" Font-Size="18px" Text="Purpose" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpurpose" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                          
                 </div>
                

                <br />
                <br />


                <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                         </div>
                        <div class="col-xs-6 col-sm-6">
                             <asp:ImageButton ID="img_addnew" runat="server" ImageUrl="../Resources/aimages/B_Add_New.png" Height="35px"  />
                           <asp:ImageButton ID="imgdelete" runat="server" ImageUrl="../Resources/images/B_Delete.png" Height="35px" Style="margin-left:10px"  />
                          <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px"   />


                      </div> 
                     </div>

             <br />
                <br />


                </div>
            </div>
         </div>

</asp:Content>
