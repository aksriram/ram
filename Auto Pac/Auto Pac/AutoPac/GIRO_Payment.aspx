<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="GIRO_Payment.aspx.cs" Inherits="Auto_Pac.AutoPac.GIRO_Payment" %>
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
            

           <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ;color: brown;"> </asp:label>
              <br />
            <br />
            <div style="padding-left: 20px;">
               

                   

                     <span style="color:brown; font-size:18px;"><b>Contract Detail</b></span>

                         <br />
                         <br />

                 
                     <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblcontract_num" runat="server" Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcontract_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblcontract_date" runat="server" Font-Size="18px" Text="Contract Date " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcontract_date" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />

                 <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblinvoice_num" runat="server" Font-Size="18px" Text="Invoice Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtinvoice_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblmodel" runat="server" Font-Size="18px" Text="Model" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtmodel" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />

                 <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblregister_num" runat="server" Font-Size="18px" Text="Register Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtregister_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblregister_date" runat="server" Font-Size="18px" Text="Register Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtregister_date" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />

                 <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblvin_num" runat="server" Font-Size="18px" Text="Vin Number " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtvin_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblbuyer_name" runat="server" Font-Size="18px" Text="Buyer Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbuyer_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />

                <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblconsultant_name" runat="server" Font-Size="18px" Text="Sales Consultant Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtconsultant_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblconsultant_code" runat="server" Font-Size="18px" Text="Sales Consultant Code" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtconsultant_code" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />


            <span style="color:brown; font-size:18px;"><b>GIRO Detail</b></span>

                         <br />
                         <br />

                  <div class="row equal">
                    <div class="col-xs-6 col-sm-3"></div>
                   <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbbuyer" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblbuyer" runat="server" Font-Size="18px" Text="Buyer" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbconsultant" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblsalesconsultant" runat="server" Font-Size="18px" Text="Sales Consultant" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbothers" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblother" runat="server" Font-Size="18px" Text="Others" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>

                      </div>

                     <br />
                    <br />

                  <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblbank" runat="server" Font-Size="18px" Text="Bank" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbank" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblgiro_date" runat="server" Font-Size="18px" Text="GIRO Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtgiro_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">
                                 <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                         
                                  </div>
                       </div>
                <br />

                
                  <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblgiro_num" runat="server" Font-Size="18px" Text="GIRO Numbe" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtgiro_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblaccount_name" runat="server" Font-Size="18px" Text="Paid Account Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:DropDownList ID="ddlaccount_name" class="form-control" runat="server">
                                        <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                        
                                        
                                        
                                    </asp:DropDownList>      

                                </div>

                              </div>
                <br />

                  <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblaccount_num" runat="server" Font-Size="18px" Text="Bank Account Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtaccount_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblpay_to" runat="server" Font-Size="18px" Text="Pay To" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpat_to" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />

                <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblamount" runat="server" Font-Size="18px" Text="Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtamount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                      <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblpurpose" runat="server" Font-Size="18px" Text="Purpose" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpurpose" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              </div>
                <br />
              
                <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblaccount_code" runat="server" Font-Size="18px" Text="Account Code" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtaccount_code" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                             </div>
                <br />
    
                <div class="row equal">

                     <div class="col-xs-6 col-sm-6">
                            <asp:Label ID="Label1" runat="server" Font-Size="18px" Text="FINAL (EXCESS) / SHORT AFTER CHEQUE ISSUED :" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                           <asp:Label ID="lblfinal_amount" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                          </div>
                    </div>
                <br />

             <div class="row equal">

                     <div class="col-xs-6 col-sm-3">
                         </div>
                        <div class="col-xs-6 col-sm-8 ">
                            <asp:ImageButton ID="imgaddnew_giro" runat="server" ImageUrl="../Resources/aimages/Add_New_Giro.png" Height="35px"   />
                           <asp:ImageButton ID="imgupdata_giro" runat="server" ImageUrl="../Resources/aimages/Update_Giro.png" Height="35px"  Style="margin-left:10px"  />
                          <asp:ImageButton ID="imgcancle_giro" runat="server" ImageUrl="../Resources/aimages/Cancel_Giro.png" Height="35px" Style="margin-left:10px"  />
                         <asp:ImageButton ID="imgprint_giro" runat="server" ImageUrl="../Resources/aimages/Print_Giro.png" Height="35px" Style="margin-left:10px"  />
                        <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px"  />

                      </div> 
                     </div>

                
              </div>
            </div>
          </div>

</asp:Content>
