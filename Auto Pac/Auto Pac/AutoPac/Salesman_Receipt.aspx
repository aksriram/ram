<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Salesman_Receipt.aspx.cs" Inherits="Auto_Pac.AutoPac.Salesman_Receipt" %>
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

                  <span style="color:brown; font-size:18px;"><b>Search Criteria</b></span>

                         <br />
                         <br />

                <div class="row equal">
                     
                    <div class="col-xs-6 col-sm-3">
                         <asp:RadioButton ID="rborder" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblorder" runat="server" Font-Size="18px" Text="&nbsp;Buyer Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtorder" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbcontract" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblcontract" runat="server" Font-Size="18px" Text="&nbsp;Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtcontract" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                  

                </div>

                         <br />

                 <div class="row equal">
                       <div class="col-xs-6 col-sm-3">
                       <asp:RadioButton ID="rbcheque" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblcheque" runat="server" Font-Size="18px" Text="&nbsp;Cheque Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                       <div class="col-xs-6 col-sm-2">
                       <asp:TextBox ID="txtcheque" class="form-control" runat="server" placeholder=""></asp:TextBox>
                       </div>
                        <div class="col-xs-6 col-sm-2">
                       <asp:RadioButton ID="rbreceipt" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblreceipt" runat="server" Font-Size="18px" Text="&nbsp;Receipt Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                       <div class="col-xs-6 col-sm-2">
                       <asp:TextBox ID="txtreceipt" class="form-control" runat="server" placeholder=""></asp:TextBox>
                       
                        <asp:CheckBox ID="chktransfer" runat="server"  />
                       <asp:Label ID="lbltransfer" runat="server" Font-Size="18px" Text="&nbsp;Transfer Receipt" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                   
                       </div>

                       </div>

                         <br />

                          <span style="color:brown; font-size:18px;"><b>Details of Buyer</b></span>

                        <br />
                         <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label1" runat="server" Font-Size="18px" Text="Contract Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblcont_date" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label2" runat="server" Font-Size="18px" Text="Buyer's Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblorder_num" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                         </div>

                         <br />

                          <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label3" runat="server" Font-Size="18px" Text="Invoice Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblinvoice_date" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label5" runat="server" Font-Size="18px" Text="Invoice Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblinvoice_num" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                         </div>

                         <br />

                          <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label4" runat="server" Font-Size="18px" Text="NRIC No/RCB No/Passport No" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblnric" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label7" runat="server" Font-Size="18px" Text="Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblname" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                         </div>

                         <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label6" runat="server" Font-Size="18px" Text="Mobile Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblmob_num" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label9" runat="server" Font-Size="18px" Text="Address" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbladdress" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;height:50px"></asp:Label>
                             </div>
                         </div>

                         <br />

                          <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label8" runat="server" Font-Size="18px" Text="Sales Consultant" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblconsultant" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                          </div>

                         <br />

                         <span style="color:brown; font-size:18px;"><b>Details of Buyer Receipt</b></span>
                         <br />
                         <br />

                         <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblreceiptnum" runat="server"  Font-Size="18px" Text="Previous Receipt Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtreceipt_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div> 
                              
                        
                         
                     </div>

                         <br />

                         <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblreceiptdate" runat="server"  Font-Size="18px" Text="Receipt Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtreceipt_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div> 
                        <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                         
                       </div>
                       <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbltransdate" runat="server"  Font-Size="18px" Text="Transaction Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txttrans_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div> 
                        <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="imgcalender2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                         
                       </div>
                        

                         </div>

                         <br />

                         <div class="row equal">
                              <div class="col-xs-6 col-sm-3">
                             <asp:label ID="lblpaytype" runat="server"   font-size="18px" text="Payment Type" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                              </div>
                  
                               <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist ID="ddlpaytype" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                      </asp:dropdownlist>
                               </div>
                         </div>

                         <br />

                          <div class="row equal">
                               <div class="col-xs-6 col-sm-3">
                             <asp:label ID="lblpaymode" runat="server"   font-size="18px" text="Payment Mode" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                              </div>
                  
                               <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist ID="ddlpaymode" class="form-control" runat="server">
                                      <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      <asp:ListItem Text="" Value="1">CREDIT CARD</asp:ListItem>
                                      <asp:ListItem Text="" Value="2">CHEQUE</asp:ListItem>
                                      <asp:ListItem Text="" Value="3">NETS</asp:ListItem>
                                      <asp:ListItem Text="" Value="4">AMEX</asp:ListItem>
                                      <asp:ListItem Text="" Value="5">CASH</asp:ListItem>
                                      <asp:ListItem Text="" Value="6">OTHERS</asp:ListItem> 
                                     
                                      </asp:dropdownlist>
                                      
                               </div>

                              
                          </div>

                         <br />
                        
                         <div class="row equal">
                                 <div class="col-xs-6 col-sm-3">
                                <asp:label ID="lblissuer" runat="server"   font-size="18px" text="Issuer" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                              </div>
                               <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtissuers" class="form-control" runat="server" TextMode="MultiLine" ></asp:TextBox> 
                               </div>
                              <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblbank" runat="server"  Font-Size="18px" Text="Bank" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtbank" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div> 
                         </div>

                         <br />

                         <div class="row equal">
                             
                         <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblchequenum" runat="server"  Font-Size="18px" Text="Cheque Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtcheque_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div> 
                        <div class="col-xs-6 col-sm-3">
                             <asp:label id="lbltermnum" runat="server"   font-size="18px" text="Terminal Number" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                              </div>
                  
                               <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist id="ddlterm_num" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                       
                                      </asp:dropdownlist>
                               </div>
                         </div>

                         <br />

                         <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblbatchnum" runat="server"  Font-Size="18px" Text="Batch Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtbatch_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblinvoice" runat="server"  Font-Size="18px" Text="Invoice Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtinvoice" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                         </div>

                         <br />

                          <div class="row equal">
                                <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbldescription" runat="server"  Font-Size="18px" Text="Description" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtdescription" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblamount" runat="server"  Font-Size="18px" Text="Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtamount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                          </div>
                           
                         <br />

                          <div class="row equal">
                                <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblpayment" runat="server"  Font-Size="18px" Text="Total Payment" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtpayment" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblstatus" runat="server"  Font-Size="18px" Text="Status" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist id="ddlstatus" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                       
                                      </asp:dropdownlist>
                               </div>
                          </div>
                           
                         <br />
                         <br />

                         <div class="row equal">
                                 <div class="col-xs-6 col-sm-3"></div>
                             <div class="col-xs-6 col-sm-8">
                             <asp:ImageButton ID="img_new" runat="server" ImageUrl="../Resources/aimages/New_Receipt.png" Height="40px"  />
                             <asp:ImageButton ID="img_update" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="img_delete" runat="server" ImageUrl="../Resources/images/B_Delete.png" Height="40px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="img_clear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px" Style="margin-left:10px"  />
                                 <asp:ImageButton ID="img_print" runat="server" ImageUrl="../Resources/images/B_Print.png" Height="40px" Style="margin-left:10px"  />
                            </div> 
                         </div>
                         <br />
                         <br />
                </div>
            </div>
         </div>
</asp:Content>
