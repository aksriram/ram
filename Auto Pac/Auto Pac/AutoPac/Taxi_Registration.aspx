<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Taxi_Registration.aspx.cs" Inherits="Auto_Pac.AutoPac.Taxi_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper" style="margin-left: 0px; padding-left: 10px; background-color: white;">

       <div class="main">
            <br />

           <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ;color: brown;"> </asp:label>
            <br />
            <br />
            <div style="padding-left: 20px;">

                  <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblfile_location" runat="server"  Font-Size="18px" Text="File Location" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-7">
                              <asp:ImageButton ID="imgbrowse" runat="server" ImageUrl="../Resources/aimages/Browse.png" Height="25px"  />
                                <asp:Label ID="lblfile_name" runat="server"  Font-Size="18px" Text="No File selected" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               
                             </div> 
                           
                  </div>

                <br />

                 <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblcustomer_name" runat="server"  Font-Size="18px" Text="Customer Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist id="ddlcustomer_name" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                       
                                      </asp:dropdownlist>
                               </div>
                 </div>

                <br />

                 <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblreg_date" runat="server"  Font-Size="18px" Text="Registration Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtreg_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                             </div> 
                            <div class="col-xs-6 col-sm-1">
                             <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                         
                           </div>
                  </div>

                <br />

                    <div class="row equal">
                                 <div class="col-xs-6 col-sm-2"></div>
                             <div class="col-xs-6 col-sm-8">
                             <asp:ImageButton ID="img_upload" runat="server" ImageUrl="../Resources/aimages/B_Upload.png" Height="30px"  />
                             <asp:ImageButton ID="img_register" runat="server" ImageUrl="../Resources/aimages/B_Register.png" Height="30px" Style="margin-left:10px"  />
                           
                            </div>
                    </div>

                <br />
                <br />

                </div>
           </div>
        </div>

</asp:Content>
