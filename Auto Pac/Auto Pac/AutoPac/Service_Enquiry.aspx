<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Service_Enquiry.aspx.cs" Inherits="Auto_Pac.AutoPac.Service_Enquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
    <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
        <div class="main">
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ;  color: brown;"> </asp:label>
             <%--<span style="color:brown; font-size:18px; margin-left:25px;"><b>Invoice</b></span>--%>
            <br /><br />
            <div style="padding-left:20px;">
                <div id="tabs">
                     <ul>
        		        <li style="background-image:url(../Resources/aimages/B_CD.png); width: 190px; height: 30px;"><a href="#fragment-1"></a></li>
               	        <li style="background-image:url(../Resources/aimages/B_PD.png); width: 190px; height: 30px;"><a href="#fragment-2"></a></li>        		       
                     </ul>
                    <div id="fragment-1" class="ui-tabs-panel">
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                            <asp:Label ID="Lbl_VINNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">VIN Number</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_VINNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-1">
                                </div>                       
                            <div class="col-xs-6 col-lg-2">
                            <asp:Label ID="Lbl_EngineNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Engine Number</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                            <asp:TextBox ID="Txt_EngineNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                       </div> 
                        <br />
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                            <asp:Label ID="Lbl_RegistrationDate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Registration Date</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_RegistrationDate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                <ajax:CalendarExtender ID="CalendarExtender2" CssClass= "cal_Theme1" TargetControlID="Txt_RegistrationDate" runat="server"/>
                            </div> 
                            <div class="col-xs-6 col-lg-1">
                                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                            </div>                       
                            <div class="col-xs-6 col-lg-2">
                            <asp:Label ID="Lbl_RegistrationNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Registration Number</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                            <asp:TextBox ID="Txt_RegistrationNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                       </div> 
                        <br />  
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                               <asp:Label ID="Lbl_ChassisNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Chassis Number</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_ChassisNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-1">
                                </div>                       
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_JobStatus" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Job Status</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:DropDownList ID="ddl_JobStatus" class="form-control" runat="server"></asp:DropDownList>
                            </div>
                       </div> 
                        <br />  
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                               <asp:Label ID="Lbl_Model" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Model</asp:Label>
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
                               <asp:Label ID="Lbl_ReadyDate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Ready Date</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_ReadyDate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                <ajax:CalendarExtender ID="CalendarExtender1" CssClass= "cal_Theme1" TargetControlID="Txt_ReadyDate" runat="server"/>
                            </div> 
                            <div class="col-xs-6 col-lg-1">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                             </div>                       
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_ContractNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Contract Number</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_ContractNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                        </div> 
                        <br />  
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                               <asp:Label ID="Lbl_CarType" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Car Type</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_CarType" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-1">                                
                             </div>                       
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_QCStatus" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">QC Status</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:DropDownList ID="Ddl_QCStatus" class="form-control" runat="server"></asp:DropDownList>
                            </div>
                       </div> 
                        <br />  
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                               <asp:Label ID="Lbl_SalesConsultant" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Sales Consultant</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_SalesConsultant" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-1">                                
                             </div>                       
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_DutyStatus" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Duty Status</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_DutyStatus" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                       </div> 
                        <br />  
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                               <asp:Label ID="Lbl_QCBy" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">QC By</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_QCBy" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-1">                                
                             </div>                       
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Remark" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Remark</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Remark" class="form-control" runat="server" placeholder="" TextMode="MultiLine"></asp:TextBox>
                            </div>
                       </div> 
                        <br />
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                               <asp:Label ID="Lbl_DutyStatusDate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Duty Status Date</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_DutyStatusDate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                        </div>
                        <br /><br />
                       <div class="row equal">
                              <span style="color:brown; font-size:18px; margin-left:10px;"><b>Accessories on Contract</b></span>
                              <br /><br />                                         
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Noaccessories" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">No accessories</asp:Label>
                             </div>
                             <br /><br />
                             <span style="color:brown; font-size:18px; margin-left:10px;"><b>Installed Accessories</b></span>
                              <br /><br />                                         
                             <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Noaccessoriesinstalled" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">No accessories installed</asp:Label>
                             </div>                             
                        </div> 
                        <br /><br />
                       <div class="row equal">
                            <div class="col-xs-6 col-lg-2">
                                </div>
                               <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="../Resources/aimages/B_S.png" Style="margin-left:8px; height:48px;"/>
                               <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="../Resources/aimages/B_Clear.png" Style="margin-left:8px;" />                             
                       </div> 
                   </div>
                    
                    <div id="fragment-2" class="ui-tabs-panel">
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                            <asp:Label ID="Label1" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Location</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Label3" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Date</asp:Label>
                            </div> 
                            <div class="col-xs-6 col-lg-3">
                                 <asp:Label ID="Label4" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">	Remark</asp:Label>
                            </div>                                                  
                       </div>
                        <br />
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-4">
                                 <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>                                                  
                       </div>
                        <br />
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:TextBox ID="TextBox5" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-4">
                                 <asp:TextBox ID="TextBox6" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>                                                  
                       </div>
                        <br />
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                            <asp:TextBox ID="TextBox7" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:TextBox ID="TextBox8" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-4">
                                 <asp:TextBox ID="TextBox9" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>                                                  
                       </div>
                        <br />
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                            <asp:TextBox ID="TextBox10" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:TextBox ID="TextBox11" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-4">
                                 <asp:TextBox ID="TextBox12" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>                                                  
                       </div>
                        <br />
                       <div class="row equal">                                                                 
                            <div class="col-xs-6 col-lg-2">
                            <asp:TextBox ID="TextBox13" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:TextBox ID="TextBox14" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-lg-4">
                                 <asp:TextBox ID="TextBox15" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>                                                  
                       </div>
                        <br />
                       <div class="row equal">                           
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../Resources/aimages/B_S.png" Style="margin-left:8px; height:48px;"/>
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../Resources/aimages/B_Clear.png" Style="margin-left:8px;" />                            
                       </div> 
                   </div>              
                </div>
            </div>
        </div>
    </div>
</asp:Content>
