<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="PARF_Transfer_Date.aspx.cs" Inherits="Auto_Pac.AutoPac.PARF_Transfer_Date" %>
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
            

           <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ;color: brown;"> </asp:label>
              <br />
            <br />
            <div style="padding-left: 20px;">
                                        
                    <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcontract_num" runat="server" Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcontract_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                   <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbltrandfer_date" runat="server" Font-Size="18px" Text="PARF Transfer Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txttransfer_date" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                          
                          </div>

                <br />

                     <span style="color:brown; font-size:18px;"><b>For Reference</b></span>

                <br />
                <br />

                 <div class="row equal">
                 
                    <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcontractdate" runat="server" Font-Size="18px" Text="Contract Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcontract_date" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                     
                                <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblparfvalue" runat="server" Font-Size="18px" Text="PARF Value" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtparf_value" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                     
                      </div>
                <br />              

                  <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblrebatevalue" runat="server" Font-Size="18px" Text="COE Rebate Value" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtrebate_value" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                                <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblparfamount" runat="server" Font-Size="18px" Text="Total PARF Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtparf_amount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                      </div>
                     <br />
                     <br />
                
                <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                         </div>
                        <div class="col-xs-6 col-sm-3 ">
                            <asp:ImageButton ID="imgupdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px" OnClick="imgupdate_Click"  />
                           <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px" Style="margin-left:10px"  />

                      </div> 
                     </div>

             <br />
                <br />


                </div>
            </div>
         </div>


</asp:Content>



