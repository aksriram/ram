<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Payment_Status.aspx.cs" Inherits="Auto_Pac.AutoPac.Payment_Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../tabs.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.7.custom.min.js"></script>

    
   
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
       .the-legend {
    border-style:none;
    border-width:0;
     color:brown;
    /*font-size: 20px;*/
    line-height: 15px;
    margin-bottom: 0;
   }
  .the-fieldset {
    border: 2px 2px 2px 2px groove threedface #444;
    border-radius:08px;
    background-color:white;
         
   
    }
  .line{
      border:4px 4px 4px 4px groove threedface #444 ;
      border-width:medium;
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

                 <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcontractnum" runat="server" Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbuyers_no" class="form-control" runat="server" placeholder="Ex:15060010"></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="img_contact_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblinvoicenum" runat="server" Font-Size="18px" Text="InVoice Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtinvoice_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imginvoice_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                  </div>
                   
                <br />

                <div class="row equal">
                            <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblregisternum" runat="server" Font-Size="18px" Text="Register Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                            </div>
                           <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtreg_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgreg_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                            </div>
                            <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblnric" runat="server" Font-Size="18px" Text="NRIC Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtnric" class="form-control" runat="server" placeholder="Ex:192345671I"></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgnric" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                             </div>

                </div>
                <br />

                <div id="tabs">

                        <ul >
                            <li style="background-image: url(../Resources/aimages/T_Balance_of_Payment.png); width: 190px; height: 30px;" ><a  href="#fragment-1"></a></li>
                            <li style="background-image: url(../Resources/aimages/T_Buyer_Account.png);      width: 190px; height: 30px;"><a  href="#fragment-2"></a></li>
                            <li style="background-image: url(../Resources/aimages/T_Consutlant_Account.png); width: 270px; height: 30px;"> <a  href="#fragment-3"></a></li>
                            <li style="background-image: url(../Resources/aimages/T_Komoco_Account.png);     width: 210px; height: 30px;"><a  href="#fragment-4"></a></li>
                            <li style="background-image: url(../Resources/aimages/T_Others.png);             width: 110px; height: 30px;" ><a  href="#fragment-5"></a></li>

                         </ul>

                     <%-- Fragment 1 starts here --%>

                     <div id="fragment-1" class="ui-tabs-panel">

                                         <br />

                     <span style="color:brown; font-size:18px;"><b>Details of Contract</b></span>

                         <br />
                         <br />

                     <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblcont_date" runat="server"  Font-Size="18px" Text="Contract Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcont_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblreg_date" runat="server"  Font-Size="18px" Text="Registration Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtreg_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                             </div> 
                     </div>

                         <br />

                     <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblvin_num" runat="server"  Font-Size="18px" Text="VIN Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtvin_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblchasis_num" runat="server"  Font-Size="18px" Text="Chasis Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtchasis_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                     </div>

                         <br />

                     <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblmodel" runat="server"  Font-Size="18px" Text="Model" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtmodel" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblcolour" runat="server"  Font-Size="18px" Text="Colour" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcolour" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                     </div>

                         <br />

                     <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblcoe_type" runat="server"  Font-Size="18px" Text="COE Type" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcoe_type" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblcar_type" runat="server"  Font-Size="18px" Text="Car Type" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcar_type" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                     </div>

                         <br />

                    
                     <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblconsultant" runat="server"  Font-Size="18px" Text="Sales Consultant" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtconsultant" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblreceipt_date" runat="server"  Font-Size="18px" Text="Finance Receipt Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtreceipt_date" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                     </div>

                         <br />

                      <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblreceipt_num" runat="server"  Font-Size="18px" Text="Finance Receipt Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtreceipt_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblbuyer_name" runat="server"  Font-Size="18px" Text="Buyer Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtbuyer_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                     </div>

                         <br />

                      <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblremarks" runat="server"  Font-Size="18px" Text="Remarks" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtremarks" class="form-control" runat="server" placeholder="" TextMode="MultiLine"></asp:TextBox>
                             </div> 
                      </div>
                         
                         <br />

                  <span style="color:brown; font-size:18px;"><b>Due Amount for Buyer</b></span>

                    <br />
                   <br />

                 <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblvehicle_price" runat="server"  Font-Size="18px" Text="Vehicle Price" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtvehicle_price" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbltop_up" runat="server"  Font-Size="18px" Text="COE Top Up" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txttop_up" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                   </div>

                         <br />

                 <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblroad_tax" runat="server"  Font-Size="18px" Text="Additional Road Tax " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtroad_tax" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblaccessory" runat="server"  Font-Size="18px" Text="Accessories" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtaccessory" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                   </div>

                   <br />

                    <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblretention_fee" runat="server"  Font-Size="18px" Text="Number Retention Fee" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtretention_fee" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                            
                   </div>
                         <br />

                    <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-5">
                               <asp:Label ID="Label1" runat="server"  Font-Size="18px" Text="Total Due Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               <asp:Label ID="lbltot_due_amount" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                           
                                   </div>
                    </div>
                        
                         <br />

                    <span style="color:brown; font-size:18px;"><b>Adjustment Amounts</b></span>

                         <br />
                         <br />

                         <br />

                                        
                   <div class="row equal">
                        <fieldset class="well the-fieldset line">
                     <legend class="the-legend">Rebates from Komoco</legend>
                   <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbldiscount" runat="server"  Font-Size="18px" Text="Cash Discount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcash_discount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblopc_rebate" runat="server"  Font-Size="18px" Text="OPC Rebate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtopc_rebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                   </div>

                   <br />

                    <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblcoe_rebate" runat="server"  Font-Size="18px" Text="COE Rebate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcoe_rebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblarf_rebate" runat="server"  Font-Size="18px" Text="ARF Rebate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtarf_rebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                   </div>

                         <br />

                     <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblduty_rebate" runat="server"  Font-Size="18px" Text="Duty Rebate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtduty_rebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                      </div>

                         <br />

                    <div class="row equal">
                        <fieldset class="well the-fieldset">
                        <legend class="the-legend">Rebates from Trade-In Vehicle</legend>

                         <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblparf_rebate" runat="server"  Font-Size="18px" Text="PARF Rebate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="Ttxtparf_rebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblresidual_rebate" runat="server"  Font-Size="18px" Text="COE Residual Rebate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtresidual_rebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                         </div>

                         </fieldset>
                     </div>

                 

                    <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-4">
                               <asp:Label ID="Label2" runat="server"  Font-Size="18px" Text="Total Rebate Amount :" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                              <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lbltot_rebate_amt" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                              </div>
                    </div>

                    <br />

                      <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-4">
                               <asp:Label ID="Label3" runat="server"  Font-Size="18px" Text="Total Due Amount (after rebates) : " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                              </div>
                              <div class="col-xs-6 col-sm-2">
                                <asp:Label ID="lbltot_due_amt" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                   
                              </div>
                    </div>

                         </fieldset>
                         </div>

                   
                     <br />

                    
                    <span style="color:brown; font-size:18px;"><b>Total Amount Received</b></span>

                    <br />
                    <br />

                    <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-5">
                               <asp:Label ID="Label4" runat="server"  Font-Size="18px" Text="Total Amount Received :" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               <asp:Label ID="lbltotamt_received" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                     </div>
                   
                    <br />

                    <span style="color:brown; font-size:18px;"><b>Details of Hire Purchase Application</b></span>
                         
                         <br />
                         <br />

                     <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblfin_company" runat="server"  Font-Size="18px" Text="Finance Company" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                     <asp:dropdownlist ID="ddlfin_company" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                      </asp:dropdownlist>                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblloan_period" runat="server"  Font-Size="18px" Text="Loan Period(months)" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtloan_period" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                         </div>

                         <br />

                          <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblloan_rate" runat="server"  Font-Size="18px" Text="Loan Rate(%)" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtloan_rate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblloan_amount" runat="server"  Font-Size="18px" Text="Loan Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtloan_amount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                         </div>
                         
                         <br />

                    <span style="color:brown; font-size:18px;"><b>Payment Status</b></span>

                         <br />
                         <br />

                     <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="Label5" runat="server"  Font-Size="18px" Text="Status :" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                                <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblstatus" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                                    </div>

                     </div>
                     
                         <br />

                    <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="Label6" runat="server"  Font-Size="18px" Text="Adjustment Amount :" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                              <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lbladjust_amount" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                                  </div>
                     </div>

                         <br />

                    <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="Label7" runat="server"  Font-Size="18px" Text="Balance Amount :" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                                <div class="col-xs-6 col-sm-2">
                                 <asp:Label ID="lblbal_amount" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                      
                                </div>

                     </div>

                         <br />

                      <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="Label8" runat="server"  Font-Size="18px" Text="Final Short :" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                          <div class="col-xs-6 col-sm-2">
                             <asp:Label ID="lblfinal_short" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               
                          </div>
                          
                     </div>
                        <br />
                         <br />

                    </div>

                    
                     <%-- Fragment 2 starts here --%>

                     <div id="fragment-2" class="ui-tabs-panel">
                         <div class="row equal">
                             <div class="col-xs-6 col-sm-4">
                               <asp:Label ID="Label9" runat="server"  Font-Size="18px" Text="Total Amount In Buyer's Account:" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                          <div class="col-xs-6 col-sm-2">
                             <asp:Label ID="lbltotamt_buyer" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               
                          </div>
                          
                         </div>
                          <br />
                     </div>
                    

                    <%-- Fragment 3 starts here --%>

                     <div id="fragment-3" class="ui-tabs-panel">
                          <div class="row equal">
                             <div class="col-xs-6 col-sm-4">
                               <asp:Label ID="Label11" runat="server"  Font-Size="18px" Text="Total Amount In Sales Consultant's Account:" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                          <div class="col-xs-6 col-sm-2">
                             <asp:Label ID="lbltotamt_consultant" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               
                          </div>
                          
                         </div>

                         <br />

                          <div class="row equal">
                             <div class="col-xs-6 col-sm-4">
                               <asp:Label ID="Label10" runat="server"  Font-Size="18px" Text="Total Amount Received :" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                          <div class="col-xs-6 col-sm-2">
                             <asp:Label ID="lbltotamount_received" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               
                          </div>
                          
                         </div>

                         <br />

                          <div class="row equal">
                             <div class="col-xs-6 col-sm-4">
                               <asp:Label ID="Label12" runat="server"  Font-Size="18px" Text="Balance Payment :" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                          <div class="col-xs-6 col-sm-2">
                             <asp:Label ID="lblbal_payment" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               
                          </div>
                          
                         </div>

                         <br />

                     </div>

                   

                     <%-- Fragment 4 starts here --%>

                     <div id="fragment-4" class="ui-tabs-panel">

                  <div class="row">
                  
                   <div class="col-xs-6 col-sm-3" ></div>
                  <div class="col-xs-6 col-sm-8" >
                   <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="false">
                      <Columns>
                          
                                      <asp:BoundField HeaderText="Item" DataField="Item" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="190px" />
                                      <asp:BoundField HeaderText="Price" DataField="Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="70px" />
                                     
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

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-4">
                               <asp:Label ID="Label13" runat="server"  Font-Size="18px" Text="Total Amount In Komoco's Account:" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                          <div class="col-xs-6 col-sm-2">
                             <asp:Label ID="lbltotamt_komoco" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               
                          </div>
                          
                         </div>

                         </div>
                    

                      <%-- Fragment 5 starts here --%>

                    <div id="fragment-5" class="ui-tabs-panel">
                        <br />

                        <span style="color:brown; font-size:18px;"><b>Short Payment</b></span>
   
                           <br />
                          <br />

                      <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblparf_date" runat="server"  Font-Size="18px" Text="PARF Received Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                               <asp:TextBox ID="txtparf_date" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                               <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblparf_value" runat="server"  Font-Size="18px" Text="PARF Value" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtparf_value" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                         </div>

                        <br />

                         <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblsettlement" runat="server"  Font-Size="18px" Text="Settlement Instruction to A/c" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                               <asp:TextBox ID="txtsettlement" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                               <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="imgcalender2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblrebate_value" runat="server"  Font-Size="18px" Text="COE Rebate Value" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtrebate_value" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                         </div>
                        
                        <br />

                        <span style="color:brown; font-size:18px;"><b>Hire Purchase Settlement</b></span>

                        <br />
                        <br />

                         <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblins_premium" runat="server"  Font-Size="18px" Text="Insurance Premium " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtins_premium" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblins_company" runat="server"  Font-Size="18px" Text="Insurance Company" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                              <div class="col-xs-6 col-sm-3">
                                        <asp:dropdownlist ID="ddlins_company" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                      </asp:dropdownlist>                          
                                  <asp:CheckBox ID="chk_issue" runat="server" Text="&nbsp;Proceed to Cheque Issue"/>
                               </div> 
                         </div>

                        <br />

                          <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblinstallment" runat="server"  Font-Size="18px" Text="First Installment" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtinstallment" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblfinance_company" runat="server"  Font-Size="18px" Text="Finance Company " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtfinance_cmny" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                         </div>

                        <br />

                         <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbladmin_charge" runat="server"  Font-Size="18px" Text="Administrative Charge" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtadmin_charge" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                          </div>
                       
                         <br />

                        <span style="color:brown; font-size:18px;"><b>Cheques Issued</b></span>
                        <br />
                        <br />

                        No Cheque Issued
                        <br />

                        <br />
                     </div>
                    <br />

                      
                    </div>

                <br />
               


                <div class="row equal">

                                 <div class="col-xs-6 col-sm-2" ></div>
                                 <div class="col-xs-6 col-sm-10" >
                                 <asp:ImageButton ID="imgsave" runat="server" ImageUrl="../Resources/aimages/B_Save1.png" Height="35px"  />
                                 <asp:ImageButton ID="imgprint_payment" runat="server" ImageUrl="../Resources/aimages/Print_Payment_Status.png" Height="35px" Style="margin-left:10px"   />
                                 <asp:ImageButton ID="imgdoc_submit" runat="server" ImageUrl="../Resources/aimages/Full_Docs_Submit.png" Height="35px" Style="margin-left:10px"   />                            
                                <asp:ImageButton ID="imgprint_parf" runat="server" ImageUrl="../Resources/aimages/print_PARF_Settlement.png" Height="35px" Style="margin-left:10px"/>
                                 <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px"  />
                                 <asp:ImageButton ID="imgto_invoice" runat="server" ImageUrl="../Resources/aimages/To_Invoice.png" Height="35px" Style="margin-left:10px"   />                            
                                 </div>
                </div>

                <br />
                <br />

                </div>
            </div>
         </div>
</asp:Content>
