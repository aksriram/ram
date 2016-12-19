<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="Auto_Pac.AutoPac.Receipt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../tabs.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.7.custom.min.js"></script>

    
    <script type="text/javascript">
        $(document).ready(function () {
            $('.group').hide();
            $('#2').show();
            $('#ddldep_paymode').change(function () {
                $('.group').hide();
                $('#' + $(this).val()).show();
            })
        });
    </script>
  <script type="text/javascript">
		$(function() {

			var $tabs = $('#tabs').tabs();
	
			$(".ui-tabs-panel").each(function(i){
	
			  var totalSize = $(".ui-tabs-panel").size() - 1;
	
			  if (i != totalSize) {
			      next = i + 2;
		   		  $(this).append("<a href='#' class='next-tab mover' rel='" + next + "'>Next Page &#187;</a>");
			  }
	  
			  if (i != 0) {
			      prev = i;
		   		  $(this).append("<a href='#' class='prev-tab mover' rel='" + prev + "'>&#171; Prev Page</a>");
			  }
   		
			});
	
			$('.next-tab, .prev-tab').click(function() { 
		           $tabs.tabs('select', $(this).attr("rel"));
		           return false;
		       });
       

		});

    </script>

  

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="wrapper" style="margin-left: 0px; padding-left: 10px; background-color: white;">


        <div class="main">
            <br />

           <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ;color: brown;"> </asp:label>
            <br />
            <br />
            <div style="padding-left: 20px;">

                <div id="tabs">

                        <ul >
                            <li style="background-image: url(../Resources/aimages/Buyer_Receipt.png); width: 170px; height: 30px;"><a  href="#fragment-1"></a></li>
                            <li style="background-image: url(../Resources/aimages/Deposit_Receipt.png); width: 170px; height: 30px;"><a  href="#fragment-2"></a></li>
                       </ul>

                     <%-- Fragment 1 (Buyer Receipt) --%>

                     <div id="fragment-1" class="ui-tabs-panel">
                         
                         <br />

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
                             <asp:ImageButton ID="img_new" runat="server" ImageUrl="../Resources/aimages/Add_New_Receipt.png" Height="40px"  />
                             <asp:ImageButton ID="img_update" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="img_delete" runat="server" ImageUrl="../Resources/images/B_Delete.png" Height="40px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="img_clear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px" Style="margin-left:10px"  />
                                 <asp:ImageButton ID="img_print" runat="server" ImageUrl="../Resources/images/B_Print.png" Height="40px" Style="margin-left:10px"  />
                            </div> 
                         </div>
                         <br />
                         <br />
                    </div>

                     <%-- Fragment 2 Deposit Receipt) --%>

                     <div id="fragment-2" class="ui-tabs-panel">
                          <br />

                          <span style="color:brown; font-size:18px;"><b>Search Criteria</b></span>

                         <br />
                         <br />

                    <div class="row equal">
                     
                       <div class="col-xs-6 col-sm-3">
                         <asp:RadioButton ID="rbdep_order" runat="server" GroupName="rb"  />
                         <asp:Label ID="lbldeporder" runat="server" Font-Size="18px" Text="&nbsp;Buyer Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                      </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtdep_order" class="form-control" runat="server" placeholder=""></asp:TextBox>
                      </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbdep_cont" runat="server" GroupName="rb"  />
                         <asp:Label ID="lbldepcont" runat="server" Font-Size="18px" Text="&nbsp;Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                      </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtdep_cont" class="form-control" runat="server" placeholder=""></asp:TextBox>
                      </div>
                   </div>

                         <br />

                          <span style="color:brown; font-size:18px;"><b>Details of Buyer</b></span>

                         <br />
                         <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label10" runat="server" Font-Size="18px" Text="Contract Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldep_cont_date" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label12" runat="server" Font-Size="18px" Text="Buyer's Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldep_order_num" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                         </div>

                         <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label11" runat="server" Font-Size="18px" Text="NRIC No/RCB No/Passport No" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldep_nric" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label14" runat="server" Font-Size="18px" Text="Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldep_name" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                         </div>

                         <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label13" runat="server" Font-Size="18px" Text="Mobile Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldep_mob_num" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label16" runat="server" Font-Size="18px" Text="Address" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldep_address" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;height:50px"></asp:Label>
                             </div>
                         </div>

                         <br />

                          <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="Label18" runat="server" Font-Size="18px" Text="Sales Consultant" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldep_consultant" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                          </div>

                         <br />

                         <span style="color:brown; font-size:18px;"><b>Details of Buyer's Deposit Receipt</b></span>

                         <br />
                         <br />

                          <span style="color:brown; font-size:18px;"><b>Deposit Payment 1</b></span>

                         <br />
                         <br />

                          <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblreceipt_num" runat="server"  Font-Size="18px" Text="Receipt Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtdep_receipt_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div> 
                         </div>
                              <br />

                         <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbldeprec_date" runat="server"  Font-Size="18px" Text="Receipt Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtdep_rec_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div> 
                        <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="imgcalender3" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                         
                       </div>
                       <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbldeptrans" runat="server"  Font-Size="18px" Text="Transaction Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtdep_trans_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div> 
                        <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="imgcalender4" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                         
                       </div>
                        </div>

                         <br />

                         <div class="row equal">
                              <div class="col-xs-6 col-sm-3">
                             <asp:label ID="lbldep_paytype" runat="server"   font-size="18px" text="Payment Type" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                              </div>
                  
                               <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist ID="ddldep_paytype" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                      </asp:dropdownlist>
                               </div>
                         </div>

                         <br />

                          <div class="row equal">
                               <div class="col-xs-6 col-sm-3">
                             <asp:label ID="lbldep_paymode" runat="server"   font-size="18px" text="Payment Mode" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                              </div>
                  
                               <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist ID="ddldep_paymode"  class="form-control" runat="server" AutoPostBack="true">
                                      <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      <asp:ListItem Text="CREDIT CARD" Value="1"></asp:ListItem>
                                      <asp:ListItem Text="CHEQUE" Value="2"></asp:ListItem>
                                      <asp:ListItem Text="NETS" Value="3"></asp:ListItem>
                                      <asp:ListItem Text="AMEX" Value="4"></asp:ListItem>
                                      <asp:ListItem Text="CASH" Value="5"></asp:ListItem>
                                      <asp:ListItem Text="OTHERS" Value="6"></asp:ListItem> 
                                      
                                      </asp:dropdownlist>
                                      
                               </div>

                              
                          </div>

                            <br />
                        <div id="1" class="group">
                         <div class="row equal">
                                 <div class="col-xs-6 col-sm-3">
                                <asp:label ID="lbldep_issuer" runat="server"   font-size="18px" text="Issuer" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                              </div>
                               <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtdep_issuer"  class="form-control" runat="server" TextMode="MultiLine" ></asp:TextBox> 
                               </div>
                              <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbldep_bank" runat="server"  Font-Size="18px" Text="Bank" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtdep_bank" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div> 
                         </div>
                            </div>
                              <br />

                         <div id="2" class="group">
                            <div class="row equal">
                             
                              <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbldep_cheque" runat="server"  Font-Size="18px" Text="Cheque Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtdep_cheque" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div> 
                        <div class="col-xs-6 col-sm-3">
                             <asp:label id="lbldep_term" runat="server"   font-size="18px" text="Terminal Number" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                              </div>
                  
                               <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist id="ddldep_term" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                       
                                      </asp:dropdownlist>
                               </div>
                         </div>
                         </div>

                         <br />
                         <div id="3" class="group">
                         <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbldep_batch" runat="server"  Font-Size="18px" Text="Batch Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtdep_batch" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbldep_invoice" runat="server"  Font-Size="18px" Text="Invoice Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtdep_invoice" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                            </div>
                        </div>
                              <br />

                            <div class="row equal">
                                <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbldep_desc" runat="server"  Font-Size="18px" Text="Description" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtdep_desc" class="form-control" runat="server" placeholder="" TextMode="MultiLine"></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbldep_amount" runat="server"  Font-Size="18px" Text="Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtdep_amount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                <asp:Label ID="lbldep_amt" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                             </div> 
                          </div>
                           
                         <br />

                              <div class="row equal">
                                  <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbldep_payment" runat="server"  Font-Size="18px" Text="Total Payment" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtdep_payment" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                                   <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbldep_status" runat="server"  Font-Size="18px" Text="Status" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist id="ddldep_status" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                       
                                      </asp:dropdownlist>
                               </div>
                              </div>

                              <br />

                              <div class="row equal">
                                 <div class="col-xs-6 col-sm-3"></div>
                                 <div class="col-xs-6 col-sm-8" >
                                 <asp:ImageButton ID="img_andpr" runat="server" ImageUrl="../Resources/aimages/B_Andp.png" Height="40px" OnClick="img_andpr_Click"   />
                                 <asp:ImageButton ID="imgupdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px" Visible="false"   />
                              
                                <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px" Style="margin-left:10px"/>
                                <asp:ImageButton ID="imgprint" runat="server" ImageUrl="../Resources/images/B_Print.png" Height="40px" Style="margin-left:10px" Visible="false" />
                             </div>

                              </div>

                             

                         <br />

                 <div class="row">
                  
                   
                  <div class="col-xs-6 col-sm-12" >
                   <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="false">
                      <Columns>
                          
                                      <asp:BoundField HeaderText="Contract Number" DataField="Contract_number" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="110px" />
                                      <asp:BoundField HeaderText="Buyer's Order Number" DataField="Order_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Receipt Number" DataField="Receipt_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Invoice Number" DataField="Invoice_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Receipt Date" DataField="Receipt_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Buyer's NRIC" DataField="Buyer_NRIC" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Buyer's Name" DataField="Buyer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="110px" />
                                      <asp:BoundField HeaderText="Payment Type" DataField="Payment_type" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Amount" DataField="Amount" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                       <asp:BoundField HeaderText="Status" DataField="Status" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                         
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
            </div>
         </div>
</asp:Content>
