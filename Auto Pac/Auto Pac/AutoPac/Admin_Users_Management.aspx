﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Admin_Users_Management.aspx.cs" Inherits="Auto_Pac.AutoPac.Admin_Users_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

    </style>
      <style type="text/css">
         table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
            background-color:#fff;
            font-size: 10pt !important;
             font-family: Arial !important;
             text-align:center;
       
        }
        table th
        {
   
            font-weight: bold;
            text-align:center;
           
        }
        table th, table td
        {
            padding: 5px;
            border: 2px solid #ccc;
            font-size:14px;
            text-align:center;
           
        }
        table, table table td
        {
            border: 0px solid #ccc;
           text-align:center;
        }
         
           
        </style>
</asp:Content>

    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper" style="margin-left: 0px; padding-left: 10px; background-color: white;">


        <div class="main">
           

            <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ;color: brown;"> </asp:label>
              <br />
            <br />
            <div style="padding-left: 20px;">
   
                                     
                     <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lbluser_id" runat="server" Font-Size="18px" Text="User ID" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtused_id" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lbluser_name" runat="server" Font-Size="18px" Text="User Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtused_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />

                
                     <div class="row equal">

                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblpassword" runat="server" Font-Size="18px" Text="Password" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpassword" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                                 <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblconfirm_password" runat="server" Font-Size="18px" Text="Confirm Password" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtconfirm_password" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />

                <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                         </div>
                         <div class="col-xs-6 col-sm-8">
                             <asp:ImageButton ID="img_new" runat="server" ImageUrl="../Resources/aimages/B_New.png" Height="35px"  />
                             <asp:ImageButton ID="img_update" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="35px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="img_delete" runat="server" ImageUrl="../Resources/images/B_Delete.png" Height="35px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="img_clear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px"  />
                            </div>
                     </div>
                <br />
                <br />

                 <div class="row">
                   <div class="col-xs-6 col-sm-2"></div>
                  <div class="col-xs-6 col-sm-8">
                   <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                         
                                      <asp:BoundField HeaderText="User ID" DataField="User_id" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="User Name" DataField="User_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="190px" />
                                     <asp:CommandField ShowSelectButton="true" />
                     </Columns>
                      <EditRowStyle BorderStyle="Solid" />
                         <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#009688" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                         <RowStyle BackColor="#F6F6F6" ForeColor="#333333" />
                         <SelectedRowStyle BackColor="#99bbff" Font-Bold="True" ForeColor="black" BorderColor="Black" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />

               </asp:GridView>
                   </div>
                       

               

                   </div>
                <br />
                <br />


              </div>
            </div>
          </div>

</asp:Content>
