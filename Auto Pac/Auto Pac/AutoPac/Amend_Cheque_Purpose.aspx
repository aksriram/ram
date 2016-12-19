<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Amend_Cheque_Purpose.aspx.cs" Inherits="Auto_Pac.AutoPac.Amend_Cheque_Purpose" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

         .auto-style2 {
             left: 0px;
             top: 0px;
         }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper" style="margin-left: 0px; padding-left: 10px; background-color: white;">


        <div class="main">
            

           <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ;color: brown;"> </asp:label>
              <br />
            <br />
            <div style="padding-left: 20px;">
               
                
                 <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcheque_num" runat="server" Font-Size="18px" Text="Cheque Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcheque_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                     

                              </div>
                 <br />

                 <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblold_purpose" runat="server" Font-Size="18px" Text="Old Purpose" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtold_purpose" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                    </div>

                <br />

                 <div class="row equal">

                                  <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblnew_purpose" runat="server" Font-Size="18px" Text="New Purpose" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:DropDownList ID="ddlnew_purpose" class="form-control" runat="server">
                                        <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                        
                                        
                                        
                                    </asp:DropDownList>      

                                </div>

                              </div>
                <br />

                 <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                         </div>
                        <div class="col-xs-6 col-sm-2 ">
                            <asp:ImageButton ID="imgupdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px"  />
                           <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px"  Style="margin-left:10px"  />

                      </div> 
                     </div>

                </div>
            </div>
          </div>

                 
</asp:Content>
