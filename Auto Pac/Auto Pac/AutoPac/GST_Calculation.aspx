<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="GST_Calculation.aspx.cs" Inherits="Auto_Pac.AutoPac.GST_Calculation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }
 </style>
     <style type="text/css">
       .the-legend {
    border-style: none;
    border-width: 0;
     color:brown;
    /*font-size: 20px;*/
    line-height: 15px;
    margin-bottom: 0;
   }
  .the-fieldset {
    border: 2px groove threedface #444;
    border-radius:08px;
    background-color:white;
         
    -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
    }
    </style>
     
        <link href="../tabs.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.7.custom.min.js"></script>
 <%-- <script type="text/javascript">
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
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
       <div class="main">
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>
        <%--   <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>GST Calculation</b></span>--%>
          <br />
         <br />
         <div style="padding-left:20px;">
               
		
		
    		<%--<ul>
        		<li style="background-image:url(../Resources/images/Step1.png); width: 150px; height: 30px;"><a href="#fragment-1"> </a></li>
               	<li style="background-image:url(../Resources/images/Step2.png); width: 150px; height: 30px;"><a href="#fragment-2"></a></li>
                </ul>--%>
              <div id="div1" runat="server">
               <div class="row equal">
                    <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Search</b></span>
          <br />
         <br />
                    <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblcontract" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Contract Number</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_cnum" class="form-control" runat="server" placeholder="" OnTextChanged="txt_cnum_TextChanged" ></asp:textbox>
            </div>
                   <div class="col-xs-6 col-sm-1">
                           <asp:ImageButton ID="Img_search" runat="server" ImageUrl="~/Resources/images/Search_Icon.png" OnClick="Img_search_Click"/> 
                       </div>
                   </div>
             <br />
                <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblregno" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Registration Number</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_regno" class="form-control" runat="server" placeholder="" ></asp:textbox>
            </div>
                    <div class="col-xs-6 col-sm-1">
                        </div>
                    <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblregdt" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Registration Date</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_rgdate" class="form-control" runat="server" placeholder="" ></asp:textbox>
            </div>
                    
                    </div>
             <br />
              <div class="row equal">
                    <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Total Amounts Of Contract</b></span>
          <br />
         <br />
                    <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblvehicle" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Vehicle Price</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_vehicleprice" class="form-control" runat="server" placeholder="" ></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblCOE" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Top Up</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_COEtopup" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_COEtopup_TextChanged" ></asp:textbox>
            </div>
         </div>
  <br />
               <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbltax" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Additional Road Tax</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_addrdtax" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_addrdtax_TextChanged" ></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblicense" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Additional Radio License</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_add_rdlicense" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_add_rdlicense_TextChanged" ></asp:textbox>
            </div>
                   </div>
             <br />
                 <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbldeposit" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Deposit</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_coedeposit" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_coedeposit_TextChanged" ></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblaccess" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Accessories</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_accessory" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_accessory_TextChanged" ></asp:textbox>
            </div>
                   </div>
             <br />
               <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                            <asp:label id="lbltotal" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Sub Total:</asp:label>
                          </div>
                    <div class="col-xs-6 col-sm-2">
                          <asp:label id="lbltotamt_in_gst" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                        </div>
                   </div>
             <br />
             
             <div class="row equal">
                 
                    <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Less Amounts Not Taxable</b></span>
          <br />
         <br />
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblrefund" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Road Tax Refund</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_refund" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_refund_TextChanged" ></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblcost" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Cost Of COE</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_costcoe" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_costcoe_TextChanged" ></asp:textbox>
            </div>
                   </div>
             <br />
                      <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblrebate" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Registration Rebate</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_regrebate" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_regrebate_TextChanged" ></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblrdtax" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Road Tax</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_roadtax" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_roadtax_TextChanged" ></asp:textbox>
            </div>
                   </div>
             <br />
                      <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbldiscount" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Cash Discount</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_discount" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_discount_TextChanged"></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblradio" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Radio License</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_radio" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_radio_TextChanged" ></asp:textbox>
            </div>
                   </div>
             <br />
                  <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblsub" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Subsidy</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_subsidy" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_subsidy_TextChanged" ></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblregistr" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Registration</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_registr" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_registr_TextChanged" ></asp:textbox>
            </div>
                   </div>
                  <br />
                   <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblreb" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Rebate</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_coerebat" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_coerebat_TextChanged"></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblweighing" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Weighing Fee</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_weighing" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_weighing_TextChanged" ></asp:textbox>
            </div>
                   </div>
                  <br />
                    <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblduty" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Duty Rebate</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_dutyrebate" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_dutyrebate_TextChanged" ></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblARF" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">ARF</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_ARF" class="form-control" runat="server" placeholder="" AutoPostBack="true"   OnTextChanged="txt_ARF_TextChanged" ></asp:textbox>
            </div>
                   </div>
                  <br />
                    <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblARFreb" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">ARF Rebate</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_ARFreb" class="form-control" runat="server" placeholder="" AutoPostBack="true"  OnTextChanged="txt_ARFreb_TextChanged" ></asp:textbox>
            </div>
                     <div class="col-xs-6 col-sm-1">
                         </div>
                      <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblamt" runat="server" for="inputEmail3"  font-size="18px"   style="font-family: 'Times New Roman', Times, serif;">Total Amount Payable to LTA</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_totamt_lta" class="form-control" runat="server" placeholder="" ></asp:textbox>
            </div>
                   </div>
                  <br />
                      <div class="row equal">
             <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblCEVS" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">CEVS Rebate</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_CEVSrebate" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_CEVSrebate_TextChanged" ></asp:textbox>
            </div>
            <div class="col-xs-6 col-sm-1"></div>
             <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label2" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">CEVS Surcharge</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_cevs_surcharge" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_cevs_surcharge_TextChanged"></asp:textbox>
            </div>
               </div>
                  <br />

                  <div class="row equal">
                       <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label3" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Rebate LTA</asp:label>
                   </div>
                <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_coerebate_lta" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                  </div>

             <br />
                <div class="row equal">
                    <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Others(Non-GST Vehicle Only)</b></span>
          <br />
         <br />
              <div class="col-xs-6 col-sm-3">
              </div>
            <div class="col-xs-6 col-sm-3">
                 <asp:label id="lbldesc" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Description</asp:label>
            </div>
                     <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblamount" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Amount</asp:label>
            </div>
        </div>
             <br />
               <div class="row equal">
                     <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Less</asp:label>
              </div>
            <div class="col-xs-6 col-sm-3">
                 <asp:textbox id="txt_less_desc" class="form-control" runat="server" placeholder="" ></asp:textbox>
                </div>
              <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_less_amt" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_less_amt_TextChanged" ></asp:textbox>
                </div>
                   </div>
             <br />
              <div class="row equal">
                     <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbladd" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Add</asp:label>
              </div>
            <div class="col-xs-6 col-sm-3">
                 <asp:textbox id="txt_add_desc" class="form-control" runat="server" placeholder="" ></asp:textbox>
                </div>
              <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_add_amt" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_add_amt_TextChanged" ></asp:textbox>
                </div>
                   </div>
             <br />
               <div class="row equal">
                     <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblttl" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Sub Total:</asp:label>
              </div>
                     <div class="col-xs-6 col-sm-3">
                 <asp:label id="lbl_totamt_notin_gst" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
              </div>
                   </div>
                  <br />
                                         <%-- Next button--%>
                   <div class="row">
                        <div class="col-xs-6 col-sm-5"></div>
                        <div class="col-xs-6 col-sm-4">
                        <asp:Button ID="dv1" runat="server" class="next-btn" Font-Bold="true" style="width:80px; height:40px; background-color:#337ab7; color:black; " Text="Next" OnClick="dv1_Click"/>                          
                    </div>
                    </div>
                  </div>
      <%--      2step started--%>
              <div id="div2" runat="server">
                  <fieldset class="well the-fieldset">
                   <div class="row equal">
                        <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Rebate Not Included In GST Calculation</b></span>
          <br />
         <br />
                    <div class="col-xs-6 col-sm-2">
                     <asp:label id="lblparf" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">PARF Rebate</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_PARF" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_PARF_TextChanged" ></asp:textbox>
                </div>
                       </div>
                  <br />
                    <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                     <asp:label id="lblcoerebate" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Residual Rebate</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_coeres_rebate" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_coeres_rebate_TextChanged" ></asp:textbox>
                </div>
                       </div>
                  <br />
                    <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                     <asp:label id="lblopc" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">OPC Rebate</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_opc" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_opc_TextChanged" ></asp:textbox>
                </div>
                  
                  </div>
                      </fieldset>
                  <br />
                     <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                     <asp:label id="lblcredit" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Credit Note</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_credit" class="form-control" runat="server" placeholder="" AutoPostBack="true" OnTextChanged="txt_credit_TextChanged" ></asp:textbox>
                </div>
                   <div class="col-xs-6 col-sm-2">
                     <asp:label id="lblwords" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">In Words</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-4">
                   <asp:textbox id="txt_words" class="form-control" runat="server" placeholder="" ></asp:textbox>
                </div>
                  </div>
                  <br />
                     <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                     <asp:label id="lblsbtotal" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Sub Total</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_subtotal" class="form-control" runat="server" placeholder="" AutoPostBack="true" ></asp:textbox>
                </div>
                         </div>
                  <br />
                  <div class="row equal">
                      <div class="col-xs-6 col-sm-4">
                     <asp:label id="lbltx" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Regrossed Taxable Amount Subject to 5% GST</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_taxableamt_old" class="form-control" runat="server" placeholder="" AutoPostBack="true" ></asp:textbox>
                </div>
                         </div>
                  <br />
                   <div class="row equal">
                      <div class="col-xs-6 col-sm-4">
                     <asp:label id="lblGTS" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">GTS Payable at 5%</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_gstold" class="form-control" runat="server" placeholder="" ></asp:textbox>
                </div>
                         </div>
                  <br />
                   <div class="row equal">
                      <div class="col-xs-6 col-sm-4">
                     <asp:label id="lblregross" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Regrossed Taxable Amount Subject to 7% GST</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_taxableamt" class="form-control" runat="server" placeholder="" ></asp:textbox>
                </div>
                         </div>
                  <br />
                    <div class="row equal">
                      <div class="col-xs-6 col-sm-4">
                     <asp:label id="lblGTSPAY" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">GTS Payable at 7%</asp:label>
                  </div>
                    <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_gst" class="form-control" runat="server" placeholder="" ></asp:textbox>
                </div>
                         </div>
<br /><br />
                     <div class="row equal">
                            <div class="col-xs-6 col-sm-4">
                                </div>
                      <div class="col-xs-6 col-sm-4">
                          <asp:ImageButton ID="Img_save" runat="server" ImageUrl="~/Resources/aimages/B_Save.png" Height="35px" OnClick="Img_save_Click"/> 
                          <asp:ImageButton ID="Img_print" runat="server" ImageUrl="~/Resources/images/B_Print.png" style="margin-left:15px;" Height="35px" OnClick="Img_print_Click"/> 
                          <asp:ImageButton ID="Img_invoice" runat="server" ImageUrl="~/Resources/aimages/Invoice.png" style="margin-left:15px;" Height="35px" OnClick="Img_invoice_Click"/> 
                          </div>
                         </div>
                  <%-- back button--%>
                   <div class="row">
                        <div class="col-xs-6 col-sm-5"></div>
                        <div class="col-xs-6 col-sm-4">
                        <asp:Button ID="Button1" runat="server" class="next-btn" Font-Bold="true" style="width:80px; height:40px; background-color:#337ab7; color:black; " Text="Back" OnClick="Button1_Click"/>                          
                    </div>
                    </div>

                  </div>
                  
                
             </div>
           </div>
          </div>
</asp:Content>
