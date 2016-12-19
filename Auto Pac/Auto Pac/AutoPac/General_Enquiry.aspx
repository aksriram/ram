<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="General_Enquiry.aspx.cs" Inherits="Auto_Pac.AutoPac.General_Enquiry" %>
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
               
                 <span style="color:brown; font-size:18px;"><b>Search Criteria</b></span>

                         <br />
                         <br />
                     <div class="row equal">
                                  <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblDescription" runat="server" Font-Size="18px" Text="Description" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <asp:TextBox ID="txtdescription" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                              
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgsearch" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                        </div>
                    
                 <br />
                 <br />

                     <div class="row equal">
                    <div class="col-xs-6 col-sm-1"></div>
                   <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbcont_num" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblcontractnum" runat="server" Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>
                   
                      <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rborder_num" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblorder_num" runat="server" Font-Size="18px" Text="Buyer Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>

                    <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbpayee" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblPayee" runat="server" Font-Size="18px" Text="Payee" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>

                     <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rdbuyer_name" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblbuyer_name" runat="server" Font-Size="18px" Text="Buyer Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>

                     <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rdvehicle_num" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblvehicle_name" runat="server" Font-Size="18px" Text="Vehicle Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>

                        </div>

                     <br />
                    <br />

                     <span style="color:brown; font-size:18px;"><b>Search Result</b></span>

                         <br />
                         <br />

                   
                     <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcontract_number" runat="server" Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcontract_number" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblorder_number" runat="server" Font-Size="18px" Text="Buyer Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtorder_number" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />              

                  <div class="row equal">

                      <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblbuyername" runat="server" Font-Size="18px" Text="Buyer Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbuyer_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                       <div class="col-xs-6 col-sm-3">
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

                       <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblamount" runat="server" Font-Size="18px" Text="Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtamount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                       </div>
                <br />              

                  <div class="row equal">

                  <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblpurpose" runat="server" Font-Size="18px" Text="Purpose" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpurpose" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                  <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblbank" runat="server" Font-Size="18px" Text="Bank" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbank" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                       </div>
                <br />              

                  <div class="row equal">

                  <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcheque_number" runat="server" Font-Size="18px" Text="Cheque Number " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcheque_number" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                       </div>
                <br />              
                <br />

                  
              </div>
           </div>
            </div>
      

</asp:Content>

                    