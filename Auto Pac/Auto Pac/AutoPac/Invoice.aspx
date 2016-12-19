<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Auto_Pac.AutoPac.Invoice" %>
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
        /*Calendar Control CSS*/
        .cal_Theme1 .ajax__calendar_container   {
        background-color: #DEF1F4;
        border:solid 1px #77D5F7;
        }

        .cal_Theme1 .ajax__calendar_header  {
        background-color: #ffffff;
        margin-bottom: 4px;
        }

        .cal_Theme1 .ajax__calendar_title,
        .cal_Theme1 .ajax__calendar_next,
        .cal_Theme1 .ajax__calendar_prev    {
        color: #004080;
        padding-top: 3px;
        }

        .cal_Theme1 .ajax__calendar_body    {
        background-color: #ffffff;
        border: solid 1px #77D5F7;
        }

        .cal_Theme1 .ajax__calendar_dayname {
        text-align:center;
        font-weight:bold;
        margin-bottom: 4px;
        margin-top: 2px;
        color: #004080;
        }

        .cal_Theme1 .ajax__calendar_day {
        color: #004080;
        text-align:center;
        }

        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_day,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_month,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_year,
        .cal_Theme1 .ajax__calendar_active  {
        color: #004080;
        font-weight: bold;
        background-color: #DEF1F4;
        }

        .cal_Theme1 .ajax__calendar_today   {
        font-weight:bold;
        }

        .cal_Theme1 .ajax__calendar_other,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_today,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_title {
        color: #bbbbbb;
        }
</style>  

    <%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" tagPrefix="ajax" %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
     
     <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
        <div class="main">
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>
            <%--<span style="color:brown; font-size:18px; margin-left:25px;"><b>Invoice</b></span>--%>
            <br /><br />
            <div style="padding-left:20px;">
            <span style="color:brown; font-size:18px; margin-left:25px;"><b>Search</b></span>
            <br /><br />
             
                  <div class="row equal">
                    <div class="col-xs-6 col-lg-2">
                        <asp:Label ID="Lbl_ContractNum" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Contract Number</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_ContractNum" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-1">
                        <asp:ImageButton ID="ImageCalendr" runat="server" ImageUrl="../Resources/images/Search_Icon.png" />
                    </div>
                    <div class="col-xs-6 col-lg-2">
                        <asp:Label ID="Lbl_SalesConsultant" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Sales Consultant</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_SalesConsultant" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>
                </div>
                 <br />
                <div class="row equal">
                    <div class="col-xs-6 col-lg-2">
                        <asp:Label ID="Lbl_InvoiceNum" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Invoice Number</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_InvoiceNum" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-1">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Resources/images/Search_Icon.png" />
                    </div>
                    <div class="col-xs-6 col-lg-2">
                        <asp:Label ID="Lbl_InvoiceDate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Invoice Date</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_InvoiceDate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                        <ajax:CalendarExtender ID="CalendarExtender2" CssClass= "cal_Theme1" TargetControlID="Txt_InvoiceDate" runat="server"/>
                    </div>
                     <div class="col-xs-6 col-sm-1">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                    </div>
                </div>
                 <br />
                 <div class="row equal">
                    <div class="col-xs-6 col-lg-2">
                        <asp:Label ID="Lbl_LatestInvoiceNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Latest Invoice Number</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_LatestInvoiceNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>
                 </div>
                 <br />
                 <div id="tabs">
                     <ul>
        		        <li style="background-image:url(../Resources/aimages/B_CD.png); width: 190px; height: 30px;"><a href="#fragment-1"></a></li>
               	        <li style="background-image:url(../Resources/aimages/B_PD.png); width: 190px; height: 30px;"><a href="#fragment-2"></a></li>
        		        <li style="background-image:url(../Resources/aimages/B_R.png); width: 180px; height: 30px;"><a href="#fragment-3"></a></li>
                        <%--<li><a href="#fragment-4"></a></li>--%>
                     </ul>
                     <div id="fragment-1" class="ui-tabs-panel">
                        <span style="color:brown; font-size:18px; "><b>Details of Finance Company</b></span>
                         <br /><br />
                         <div class="row equal">
                              <br /><br />                                         
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_FinanceCompany" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Finance Company</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:DropDownList ID="ddl_FinanceCompany" class="form-control" runat="server"></asp:DropDownList>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Address1" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Address 1</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Address1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br /> 
                         <div class="row equal">                                                                      
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Address2" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Address 2</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Address2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                              <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Address3" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Address 3</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Address3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />       
                         <div class="row equal">                                                                      
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_PostalCode" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Postal Code</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_PostalCode" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>                                                    
                        </div> 
                        <br /><br />
                         <span style="color:brown; font-size:18px; "><b>Details of Buyer</b></span>    
                         <br /><br />
                                             
                         <div class="row equal">
                              <br /><br />                                         
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Name" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Name</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                  <asp:TextBox ID="Txt_Name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Block" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Block</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Block" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br /> 
                         <div class="row equal">                                                                      
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Road" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Road</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Road" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                              <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Unit" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Unit</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Unit" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />       
                         <div class="row equal">                                                                      
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Postal_Code" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Postal Code</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Postal_Code" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>                                                    
                        </div> 
                        <br /><br />
                          <span style="color:brown; font-size:18px;"><b>Details of Vehicle</b></span>
                              <br /><br /> 
                         <div class="row equal">
                                                                     
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="LblModel" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Model</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                  <asp:TextBox ID="Txt_Model" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Colour" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Colour</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Colour" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br /> 
                         <div class="row equal">                                                                      
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="lbl_EngineNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Engine Number</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_EngineNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                              <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_ChassisNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Chassis Number</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_ChassisNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />
                          <div class="row equal">                                                                      
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_RegistrationNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Registration Number</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_RegistrationNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                              <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_RegistrationDate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Registration Date</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_RegistrationDate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                <ajax:CalendarExtender ID="CalendarExtender1" CssClass= "cal_Theme1" TargetControlID="Txt_RegistrationDate" runat="server"/>
                             </div>
                             <div class="col-xs-6 col-sm-1">
                                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                             </div>
                        </div> 
                        <br />
                          <div class="row equal">                                                                      
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_FinanceReceiptNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Finance Receipt Number</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_FinanceReceiptNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                              <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_FinanceReceiptDate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Finance Receipt Date</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_FinanceReceiptDate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                <ajax:CalendarExtender ID="CalendarExtender3" CssClass= "cal_Theme1" TargetControlID="Txt_FinanceReceiptDate" runat="server"/>
                             </div>
                             <div class="col-xs-6 col-sm-1">
                                <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                             </div>
                        </div> 
                        <br />
                          <div class="row equal">                                                                      
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_CertificateofEntitlement" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Certificate of Entitlement</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_CertificateofEntitlement" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                              <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_InsuranceCompany" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Insurance Company</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_InsuranceCompany" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />
                         <div class="row equal">                                                                      
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_RoadTaxDuration" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Road Tax Duration</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:DropDownList ID="Ddl_RoadTaxDuration" class="form-control" runat="server"></asp:DropDownList>
                             </div>
                         </div>                                                                                            
                     </div>

                     <div id="fragment-2" class="ui-tabs-panel">
                         <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_NettVehiclePrice" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Nett Vehicle Price</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt__NettVehiclePrice" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_COESubsidy" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">COE Subsidy</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_COESubsidy" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />
                          <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_CostofCOE" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Cost of COE</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_CostofCOE" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_InvoiceAmount" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Invoice Amount</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_InvoiceAmount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />
                         <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_COERebate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">COE Rebate</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_COERebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_LoanAmount" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Loan Amount</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_LoanAmount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />  
                          <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_OPCRebate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">OPC Rebate</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_OPCRebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_DownPayment" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Down Payment</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_DownPayment" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />
                         <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_RoadTax" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Road Tax</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_RoadTax" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_BalancePayment" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Balance Payment</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_BalancePayment" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />    
                         <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_RadioLicence" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Radio Licence</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_RadioLicence" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_DuefromBuyer" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Due from Buyer</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_DuefromBuyer" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />    
                         <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Registration" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Registration</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_Registration" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_DutyRebate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Duty Rebate</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_DutyRebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />    
                         <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_GSTPayableat7" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">GST Payable at 7%	</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_GSTPayableat7" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_FirstInstallment" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">First Installment</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_FirstInstallment" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />
                          <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_GSTPayableat5" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">GST Payable at 5%</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_GSTPayableat5" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_InsurancePremium" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Insurance Premium</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_InsurancePremium" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />        
                          <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_ARFRebate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">ARF Rebate</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_ARFRebate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Accessories" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Accessories</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Accessories" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>
                        </div> 
                        <br />        
                          <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_CashDiscount" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Cash Discount</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_CashDiscount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div>                              
                        </div> 
                        <br />
                       </div>

                     <div id="fragment-3" class="ui-tabs-panel">
                         <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_PaymentRemarks" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Payment Remarks</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_PaymentRemarks" class="form-control" runat="server" placeholder="" TextMode="MultiLine"></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-lg-1">
                                 </div>                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_ChequeRemarks" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Cheque Remarks</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_ChequeRemarks" class="form-control" runat="server" placeholder="" TextMode="MultiLine"></asp:TextBox>
                             </div>
                        </div> 
                        <br /> 
                         <div class="row equal">                                                                       
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_FinanceRemarks" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Finance Remarks</asp:Label>
                             </div>
                             <div class="col-xs-6 col-lg-3">
                                 <asp:TextBox ID="Txt_FinanceRemarks" class="form-control" runat="server" placeholder="" TextMode="MultiLine"></asp:TextBox>
                             </div>                              
                        </div> 
                        <br />               
                     </div>
             
                 </div>
                 <br /><br />
                 <div class="row">
                    
                   <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="../Resources/aimages/B_S.png"/>
                   <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="../Resources/aimages/B_PI.png" Style="margin-left:8px;" /> 
                   <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../Resources/aimages/B_PCM.png" Style="margin-left:8px;" />
                   <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="../Resources/aimages/B_PDN.png" Style="margin-left:8px;" />
                   <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="../Resources/aimages/B_PS.png" Style="margin-left:8px;" />
                   <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="../Resources/aimages/B_PSfb.png" Style="margin-left:8px;" />
                   <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="../Resources/aimages/B_PSI.png" Style="margin-left:8px;" />                    
                     <br /> 
                   <div class="col-xs-6 col-lg-1">
                        </div>                   
                   <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="../Resources/aimages/B_PBI.png" Style="margin-left:8px;" /> 
                   <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="../Resources/aimages/B_PARTIFB.png" Style="margin-left:8px;"/>                         
                   <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="../Resources/aimages/B_PARTIFS.png" Style="margin-left:8px;"/>                         
                  </div>
                 <br />
             </div>
                 
        </div>
     </div>
</asp:Content>
