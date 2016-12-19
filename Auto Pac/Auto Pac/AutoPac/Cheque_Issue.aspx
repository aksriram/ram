<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Cheque_Issue.aspx.cs" Inherits="Auto_Pac.AutoPac.Cheque_Issue" %>
    <asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
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

         <script src="../Resources/js/bootstrap-material-datetimepicker.js"></script>
    <link href="../Resources/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <script type="text/javascript">
        
        function ShowImagePreview1(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=ImgPrv1.ClientID%>').prop('src', e.target.result)
                        .width(150)
                        .height(160);
                };
                reader.readAsDataURL(input.files[0]);
                }
        }
        </script>
    <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
        <div class="main">            
            <asp:Label ID="lblpagetitle" runat="server" for="inputEmail3" Font-Size="26px" Text="" Style="font-family: 'Times New Roman', Times, serif; margin-top: 20px; margin-left:20px ; color: brown;"> </asp:Label>               
                <br />
                <br />    
               <div style="padding-left: 20px;">       
              <div id="tabs">
                    <ul>
                        <li style="background-image: url(../Resources/aimages/B_DBS_Maybank_Cheque.png); width: 240px; height: 30px;"><a href="#fragment-1"></a></li>
                        <li style="background-image: url(../Resources/aimages/B_Maybank_Cheque_Without_Contract.png); width: 335px; height: 30px;"><a href="#fragment-2"></a></li>
                        <li style="background-image: url(../Resources/aimages/B_DBS_Cheque_Express.png); width: 205px; height: 30px;"><a href="#fragment-3"></a></li>                       
                    </ul>                   
                  <div id="fragment-1" class="ui-tabs-panel">
                    <div style="padding-left: 20px;"> 
                        <div class="row equal">                            
                        <span style="color: brown; font-size: 18px; margin-left:0px;"><b>DBS and Maybank Cheque</b></span>
                            <br /> <br />
                           <div class="row equal">
                               <span style="color: brown; font-size: 18px; margin-left: 10px;"><b>Contract Detail</b></span>
                                <br /> <br />
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_ContractNumber" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Contract Number</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_ContractNumber" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-lg-1">
                                </div>
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_ContractDate" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Contract Date</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_ContractDate" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                                </div>                                
                          </div>
                            <br />
                           <div class="row equal">                          
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_BuyerOrderNumber" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Buyer Order Number</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_BuyerOrderNumber" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-1">
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_InvoiceNumber" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Invoice Number</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_InvoiceNumber" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                          </div>
                            <br />
                           <div class="row equal">                          
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_Model" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Model</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_Model" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-1">
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_RegisterNumber" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Register Number</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_RegisterNumber" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                          </div>
                            <br />
                           <div class="row equal">                          
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_RegisterDate" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Register Date</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_RegisterDate" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-1">
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_VinNumber" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Vin Number</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_VinNumber" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                          </div>
                            <br />
                           <div class="row equal">                          
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_BuyerName" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Buyer Name</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_BuyerName" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-1">
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_SalesConsultantName" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Sales Consultant Name</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_SaleConsultantName" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                          </div>
                            <br />
                           <div class="row equal">                          
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_SalesConsultantCode" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Sales Consultant Code</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_SalesConsultantCode" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                            <div class="col-xs-6 col-lg-1">
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_SpotterCommissionName" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Spotter Commission Name</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:TextBox ID="Txt_SpotterCommissionName" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                            </div>
                          </div>
                            <br />
                           <div class="row equal">
                           <span style="color: brown; font-size: 18px; margin-left: 10px;"><b>Cheque Detail</b></span>
                            <br /> <br />
                            <div class="col-xs-6 col-lg-1">
                                <asp:RadioButton ID="RadioButton1" Text="&nbsp;&nbsp;Buyer" runat="server" GroupName="sa" />
                            </div>
                            <div class="col-xs-6 col-lg-2">
                                <asp:RadioButton ID="RadioButton2" Text="&nbsp;&nbsp;Sales Consultant " runat="server" GroupName="sa" />
                            </div>                           
                            <div class="col-xs-6 col-lg-2">
                                <asp:RadioButton ID="RadioButton3" Text="&nbsp;&nbsp;Spotter Commission" runat="server" GroupName="sa" />
                            </div>
                            <div class="col-xs-6 col-lg-1">
                                <asp:RadioButton ID="RadioButton4" Text="&nbsp;&nbsp;Others" runat="server" GroupName="sa" />
                            </div>
                          </div>
                            <br /> 
                           <div class="row equal">                          
                                <div class="col-xs-6 col-lg-2">
                                 <asp:Label ID="Lbl_Bank" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Bank</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:DropDownList ID="ddl_Bank" class="form-control" runat="server"></asp:DropDownList>
                                </div>
                                 <div class="col-xs-6 col-lg-1">
                                 </div>
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_ReferenceCode" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Reference Code</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                            </div>
                            <br />
                           <div class="row equal">
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_ChequeDate" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Cheque Date</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_ChequeDate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                                </div>                                 
                                <div class="col-xs-6 col-lg-2">
                                     <asp:Label ID="Lbl_Address1" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Address 1</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                     <asp:TextBox ID="Txt_Address1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                            </div>
                            <br />
                           <div class="row equal">                                                                                 
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Address2" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Address 2</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Address2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                 <div class="col-xs-6 col-lg-1"> 
                                     </div>                                                 
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Address3" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Address 3</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Address3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                           </div>
                            <br />
                           <div class="row equal">
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_PostalCode" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Postal Code</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_PostalCode" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-lg-1">
                                 </div>
                                <div class="col-xs-6 col-lg-2">
                                     <asp:Label ID="Lbl_PayTo" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Pay To</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_PayTo" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                           </div>
                            <br />
                           <div class="row equal">                                                                               
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Amount" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Amount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-lg-1">
                                 </div>
                                <div class="col-xs-6 col-lg-2">
                                     <asp:Label ID="Lbl_ChequeNumber" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Cheque Number</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                     <asp:TextBox ID="Txt_ChequeNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                           </div>
                            <br />
                           <div class="row equal">                                                                              
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Purpose" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Purpose</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:DropDownList ID="Ddl_Purpose" class="form-control" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-xs-6 col-lg-1">
                                 </div>
                                <div class="col-xs-6 col-lg-2">
                                <asp:Label ID="Lbl_AccountCode" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Account Code</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                                </div>
                          </div>   
                           <br /><br />
                           <div class="row equal">                          
                             <div class="col-xs-6 col-lg-5">
                                <asp:Label ID="Lbl_FINAL" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">FINAL (EXCESS) / SHORT AFTER CHEQUE ISSUED :</asp:Label>
                            </div>
                            <div class="col-xs-6 col-lg-3">
                                <asp:Label ID="Label2" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                            </div>
                         </div>
                            <br /><br />                                                    
                           <div class="row">
                             <div class="col-xs-6 col-lg-1">
                             </div>
                               <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="../Resources/aimages/B_Add_New_Cheque.png"/>
                               <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="../Resources/aimages/B_Update_Cheque.png" Style="margin-left:8px;" /> 
                               <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../Resources/aimages/B_Cancel_Cheque.png" Style="margin-left:8px;" />
                               <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="../Resources/aimages/B_Pring_Cheque.png" Style="margin-left:8px;" />
                               <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="../Resources/aimages/B_Print_Payment.png" Style="margin-left:8px;" />
                               <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="../Resources/aimages/B_Clear.png" Style="margin-left:8px; height:31px;" />                            
                          </div>
                        </div>
                    </div>
                  </div>
                  
                   <div id="fragment-2" class="ui-tabs-panel">
                     <div style="padding-left: 20px;">
                        <div class="row equal">                            
                         <span style="color: brown; font-size: 18px; margin-left:0px;"><b>Maybank Cheque Without Contract</b></span>
                            <br /> <br />
                           <div class="row equal">
                               <span style="color: brown; font-size: 18px; margin-left: 10px;"><b>Cheque Detail</b></span>
                                <br /> <br />
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Cheque_Number" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Cheque Number</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Cheque_Number" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-lg-1">
                                </div>
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Bank1" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Bank</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:DropDownList ID="Ddl_Bank1" class="form-control" runat="server"></asp:DropDownList>
                                </div>                                
                          </div> 
                            <br />  
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Buyer_OrderNumber" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Buyer Order Number</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Buyer_OrderNumber" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-lg-1">
                                </div>
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Reference_Code" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Reference Code</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Reference_Code" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                          </div> 
                            <br />  
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Cheque_Date" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Cheque Date</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="txt_Cheque_Date" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                                </div> 
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Pay_To" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Pay To</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Pay_To" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                          </div> 
                            <br /> 
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Amount1" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Amount1" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-lg-1">
                                </div>
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_GST" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">GST</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_GST" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                          </div>
                            <br /> 
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Purpose1" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Purpose</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Purpose1" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-lg-1">
                                </div>
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_Account_Code" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Account Code</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Account_Code" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                          </div>
                            <br /><br /><br />
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Line1" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Line 1</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-4">
                                    <asp:TextBox ID="Txt_Line1" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                               
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Amount_1" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Amount_1" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                          </div>
                            <br />   
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Line2" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Line 2</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-4">
                                    <asp:TextBox ID="Txt_Line2" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                               
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Amount2" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Text_Amount2" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                           </div>
                            <br />   
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Line3" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Line 3</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-4">
                                    <asp:TextBox ID="Txt_Line3" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                               
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="lbl_Amount3" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Amount3" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                           </div>
                            <br />  
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Line4" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Line 4</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-4">
                                    <asp:TextBox ID="Txt_Line4" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                               
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="lbl_Amount4" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Amount4" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                           </div>
                            <br />    
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Line5" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Line 5</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-4">
                                    <asp:TextBox ID="Txt_Line5" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                               
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="lbl_Amount5" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Amount5" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                           </div>
                            <br />    
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Line6" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Line 6</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-4">
                                    <asp:TextBox ID="Txt_Line6" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                               
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="lbl_Amount6" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Amount6" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                           </div>
                            <br />    
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Line7" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Line 7</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-4">
                                    <asp:TextBox ID="Txt_Line7" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                               
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="lbl_Amount7" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Amount7" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                           </div>
                            <br />    
                           <div class="row equal">                             
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="Lbl_Line8" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Line 8</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-4">
                                    <asp:TextBox ID="Txt_Line8" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                               
                                <div class="col-xs-6 col-lg-1">
                                    <asp:Label ID="lbl_Amount8" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_Amount8" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>                                
                           </div>
                            <br /><br />
                           <div class="row">
                             <div class="col-xs-6 col-lg-1">
                             </div>
                               <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../Resources/aimages/B_Add_New_Cheque.png"/>                              
                               <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="../Resources/aimages/B_Cancel_Cheque.png" Style="margin-left:8px;" />
                               <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="../Resources/aimages/B_Pring_Cheque.png" Style="margin-left:8px;" />                            
                               <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="../Resources/aimages/B_Clear.png" Style="margin-left:8px; height:31px;"/>                            
                          </div>    
                        </div>
                    </div>
                  </div>

                  <div id="fragment-3" class="ui-tabs-panel">
                     <div style="padding-left: 20px;">
                        <div class="row equal">                            
                         <span style="color: brown; font-size: 18px; margin-left:0px;"><b>DBS Cheque Express</b></span>
                            <br /> <br />
                            <div class="row equal">
                               <span style="color: brown; font-size: 18px; margin-left: 10px;"><b>DBS Cheque Export</b></span>
                                <br /> <br />
                                <div class="col-xs-6 col-lg-2">
                                    <asp:Label ID="Lbl_ChequeDate2" runat="server" for="inputEmail3" Font-Size="18px" Style="font-family: 'Times New Roman', Times, serif;">Cheque Date</asp:Label>
                                </div>
                                <div class="col-xs-6 col-lg-3">
                                    <asp:TextBox ID="Txt_ChequeDate2" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-lg-1">
                                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                                </div>
                            </div>
                            <br /><br />
                            <div class="row equal">
                                    <div class="col-xs-6 col-lg-2">
                                        </div>
                                    <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="../Resources/aimages/B_Export.png" Style="margin-left:15px; height:35px"/>                              
                                </div> 
                            <br />
                            <div class="row equal">
                               <span style="color: brown; font-size: 18px; margin-left: 10px;"><b>DBS Cheque Import</b></span>
                                <br /> <br />                         
                            </div>
                            <br /><br /> 
                            <div class="row equal">
                               <div class="col-xs-6 col-sm-2">
                                  <asp:label id="lblFileLocation" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">File Location:<span style="color:red;"></span></asp:label>
                               </div>
                               <div class="col-xs-6 col-sm-3">
                                  <asp:Image ID="ImgPrv1" Height="170px" Width="200px" runat="server" /><br />
                                  <input type="file" name="filUpload" id="filUpload" runat="server" onchange="ShowImagePreview1(this)" />
                                <br />                   
                               </div>
                              <br />             
                            </div> 
                            <br />
                            <div class="row">
                               <div class="col-xs-6 col-sm-2">
                                   </div>
                               <asp:ImageButton ID="ImageSubmit" runat="server" ImageUrl="../Resources/aimages/B_Import.png" Style="margin-left:15px;"/> 
                               <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="../Resources/aimages/B_Clear.png" Style="margin-left:8px; height:31px;"/>           
                            </div>                                                           
                         </div>
                          </div>  
                        </div>

                   
                </div>
            </div>
        </div>          
           </div>
</asp:Content>
