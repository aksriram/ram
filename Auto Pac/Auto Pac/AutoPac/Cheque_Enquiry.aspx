<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Cheque_Enquiry.aspx.cs" Inherits="Auto_Pac.AutoPac.Cheque_Enquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

          .auto-style3 {
              margin-left: 40px;
          }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper" style="margin-left: 0px; padding-left: 10px; background-color: white;">


        <div class="main">
            <br />

            <asp:Label ID="lblpagetitle" runat="server" Text=""></asp:Label>
              <br />
            <br />
            <div style="padding-left: 20px;">
 
                 <div class="row equal">
                                  <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcheque_num" runat="server" Font-Size="18px" Text="Cheque Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtcheque_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                                 <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="imgsearch" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcontract_num" runat="server" Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcontract_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                     
                          </div>

                <br />

                 <div class="row equal">
                                 

                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblbuyer_name" runat="server" Font-Size="18px" Text="Buyer Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbuyer_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                 <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcheque_date" runat="server" Font-Size="18px" Text="Cheque Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcheque_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>
                          </div>

                <br />

                 <div class="row equal">
                                 

                               <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblpay_to" runat="server" Font-Size="18px" Text="Pay To" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpay_to" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                 <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblAmount" runat="server" Font-Size="18px" Text="Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtAmount" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                                </div>
                          </div>

                <br />

                    <div class="row equal">
                             

                              <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblBank" runat="server" Font-Size="18px" Text="Bank" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtBank" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                  <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblpurpose" runat="server" Font-Size="18px" Text="Purpose" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpurpose" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                     </div>

                <br />
                <br />
                
              </div>
            </div>
         </div>

</asp:Content>
