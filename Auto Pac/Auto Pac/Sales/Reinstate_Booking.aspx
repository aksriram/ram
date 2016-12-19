<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Reinstate_Booking.aspx.cs" Inherits="Auto_Pac.Sales.Reinstate_Booking" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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
        .Background
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.4;
        }
        .Popup
        {
            background-color: #FFFFFF;
            width: 470px;
            height: 300px;
           border-radius:8px;
          
         
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
          <br />
     
                <asp:Label ID="lblpagetitle" runat="server" Text=""></asp:Label>
         <br />
        <br />
        <div style="padding-left:20px;">
                
         <div>
		
		<div id="tabs">
		
    		<ul>
        		<li style="background-image:url(../Resources/images/Step1.png); width: 149px; height: 30px;"><a href="#fragment-1"> </a></li>
               
        		<li style="background-image:url(../Resources/images/Step2.png); width: 149px; height: 30px;"><a href="#fragment-2"></a></li>
        		<li style="background-image:url(../Resources/images/Step3.png); width: 149px; height: 30px;"><a href="#fragment-3"></a></li>
        		<li style="background-image:url(../Resources/images/Step4.png); width: 149px; height: 30px;"><a href="#fragment-4"></a></li>
         </ul>
             <%-- Step 1 starts here --%>
           <div id="fragment-1" class="ui-tabs-panel">
        	    <div class="row equal">
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblbuyers" runat="server"  Font-Size="18px" Text="Buyer's Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                     <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="txtbuyers_no" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div>
                  <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="Imgnumber" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px"  />
                  </div>

                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblbuyerdate" runat="server"  Font-Size="18px" Text="Buyer's Order Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtbuyers_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                     </div>
                       <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="Imagedate" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px"  />
                  </div>
            </div>
               <br />
                  <div class="row equal">
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="Label1" runat="server"  Font-Size="18px" Text="Cancel Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                     <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                          </div>
                  <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px"  />
                  </div>
          </div>
               <br />
                <div class="row equal">
                     <div class="col-xs-6 col-sm-1">

                     </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="RBlocal" runat="server" GroupName="rd" />
                       <asp:Label ID="lbllocal" runat="server" Font-Size="18px" Text="&nbsp;Local" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="RBforeigner" runat="server" GroupName="rd" />
                       <asp:Label ID="lblforeigner" runat="server" Font-Size="18px" Text="&nbsp;Foreigner" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                     </div>
                    <div class="col-xs-6 col-sm-2">
                           <asp:RadioButton ID="RBcompany" runat="server" GroupName="rd" />
                          <asp:Label ID="lblcompany" runat="server"  Font-Size="18px" Text="&nbsp;Company" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>

        	</div>
               <br />
               
                 <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details of Buyer</b></span>
                <br />
                <br />
                
                <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                            <asp:Label ID="lblpassport" runat="server"   Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">NRIC No/Passport No/RCB No <span style="color:red;">*</span></asp:Label>
                     </div>
                    <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txt_nricno" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lbltitle" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Title<span style="color:red;">*</span></asp:Label>
                     </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddltitle" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                                    <asp:ListItem>MRS</asp:ListItem>
                                            <asp:ListItem>MISS</asp:ListItem>
                                            <asp:ListItem>M/S</asp:ListItem>
                                            <asp:ListItem>MDM</asp:ListItem>
                                            <asp:ListItem>DR</asp:ListItem>
                                            <asp:ListItem>MS</asp:ListItem> 
                                                </asp:DropDownList>
                    </div>

        	</div>

                <br />

                <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label2" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Name as in NRIC/Passport <span style="color:red;">*</span></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtnric_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="Label3" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Mobile Number<span style="color:red;">*</span></asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtmobile" class="form-control" runat="server" placeholder="Ex: +65XXXXXXXX"></asp:TextBox>
                         </div>

                    </div>
<br />
                <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblhomephone" runat="server"  Font-Size="18px" Text="Home Tel Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txthomephone" class="form-control" runat="server" placeholder="Ex: +65XXXXXXXX"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-2">
                              <asp:Label ID="lbloffphone" runat="server"  Font-Size="18px" Text="Office Tel Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                     </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txtoffphone" class="form-control" runat="server" placeholder="Ex: +65XXXXXXXX"></asp:TextBox>
                    </div>

                </div>

                <br />

                 <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                         <asp:Label ID="lblblock" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Block<span style="color:red;">*</span></asp:Label>
                        </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtblock" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblroad" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Road<span style="color:red;">*</span></asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtroad" class="form-control" runat="server" placeholder=""></asp:TextBox>
                        </div>

                     </div>

                <br />

                 <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblunit" runat="server" Font-Size="18px" Text="Unit" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtunit" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblpostal" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Postal Code<span style="color:red;">*</span></asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txtpostalcode" class="form-control" runat="server" placeholder="Ex : 577532"></asp:TextBox>
                        </div>

                     </div>

                <br />

                 <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                         <asp:Label ID="lblmail" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Email<span style="color:red;">*</span></asp:Label>
                        </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Ex: john@attsystemsgroup.com "></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lbldob" runat="server" Font-Size="18px" Text="Date Of Birth" Style="font-family: 'Times New Roman', Times, serif;">Date Of Birth<span style="color:red;">*</span></asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtdob" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                        </div>

                     </div>

                <br />

                <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbloccupation" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Occupation<span style="color:red;">*</span></asp:Label>
                        </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtoccupation" class="form-control" runat="server"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblmodeofcontent" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Mode Of Contact<span style="color:red;">*</span></asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-3">
                            <asp:DropDownList ID="ddlmodeofcontact" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="REFERRAL" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="REPEAT" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="WALK-IN" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="CALL-IN" Value="4"></asp:ListItem>
                                                </asp:DropDownList>
                        </div>

                     </div>

               <br />
                    </div>

             <%-- Step 2 starts here --%>

            	<div id="fragment-2" class="ui-tabs-panel ui-tabs-hide">
                     <span style="color: brown; font-size: 18px; margin-left: 0px;"><b>Vehicle Type</b></span>

                 <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblmodel" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Model<span style="color:red;">*</span></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlmodel" class="form-control" runat="server">
                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                           </asp:DropDownList>
                     </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblcolor" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Color<span style="color:red;">*</span></asp:Label>
                     </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlcolor" class="form-control" runat="server">
                            <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                     </div>
                 </div>

                <br />
                <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblcartype" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Car Type<span style="color:red;">*</span></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlcartype" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                                    <asp:ListItem Value="NC">Standard</asp:ListItem>
                                                    <asp:ListItem Value="OPC">Off Peak Car (OPC)</asp:ListItem>
                                                    <asp:ListItem Value="CNG">Compressed Natural Gas (CNG)</asp:ListItem>
                                                    <asp:ListItem Value="CNG OPC">CNG OPC</asp:ListItem>
                                                    <asp:ListItem Value="Special">Special</asp:ListItem>
                                                </asp:DropDownList>
                    </div>
                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblceotype" runat="server"  Font-Size="18px" Text=" " Style="font-family: 'Times New Roman', Times, serif;">COE Type<span style="color:red;">*</span></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:DropDownList ID="ddlceotype" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="Bidding" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="OWN COE" Value="2"></asp:ListItem>
                                                </asp:DropDownList>
                    </div>

                    </div>
                    <br />
                <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblcategory" runat="server"  Font-Size="18px" Text="Category" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:DropDownList ID="ddlcategory" class="form-control" runat="server">
                                                 <asp:ListItem Text="Please Select" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="A" Value="1"></asp:ListItem>
                                                 <asp:ListItem Text="B" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="C" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="D" Value="4"></asp:ListItem>
                                                <asp:ListItem Text="E" Value="5"></asp:ListItem>
                                            </asp:DropDownList>
                    </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblsell" runat="server" Font-Size="18px" Text="Nett Selling Price" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txtselprice" class="form-control" runat="server" placeholder="0.00"></asp:TextBox>
                    </div>

                </div>
                             <br />
                <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                         <asp:Label ID="lblexpecteddate" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Expected Delivery Date<span style="color:red;">*</span></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:DropDownList ID="ddlexpected" class="form-control" runat="server">
                                                <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                                <asp:ListItem>DEC 16/FEB 17</asp:ListItem>
                                                <asp:ListItem>JAN 17/MAR 17</asp:ListItem>
                                                <asp:ListItem>FEB 17/APR 17</asp:ListItem>
                                                <asp:ListItem>MAR 17/MAY 17</asp:ListItem>
                                            </asp:DropDownList>
                    </div>
                  <%--  <div class="col-xs-6 col-sm-2">
                            <asp:Label ID="Label9" runat="server" for="inputEmail3"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Reserve for (MIN 7) Days<span style="color:red;">*</span></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtreserverday" class="form-control" runat="server" ></asp:TextBox>
                    </div>--%>

            </div>

                    <br />
                <br />
                <span style="color:brown; font-size:18px; margin-left:0px;"><b>Details of Cash Discount</b></span>
                 <div class="row equal">
                      
                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblamount" runat="server"  Font-Size="18px" Text="Amount" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtamount" class="form-control" runat="server" placeholder="SGD"></asp:TextBox> 
                          </div>

                     

                    </div>

                     <br />

                 <span style="color:brown; font-size:18px; margin-left:0px;"><b>Details of Deposit</b></span>
                <br />
                 <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblpayment" runat="server"   Font-Size="18px" Text="Payment Type" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddlpayment" class="form-control" runat="server">
                                              <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                                     <asp:ListItem Text="Cash" Value="1"></asp:ListItem>
                                                     <asp:ListItem Text="Cheque" Value="2"></asp:ListItem>
                                                     <asp:ListItem Text="Credit Card" Value="3"></asp:ListItem>
                                                     <asp:ListItem Text="Debit Card" Value="4"></asp:ListItem>
                                          </asp:DropDownList>
                          </div>

                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="Labelamount" runat="server"   Font-Size="18px" Text="Amount" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        </div>

                      <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="Textamount" class="form-control" runat="server" placeholder="SGD"></asp:TextBox>
                        </div>

                    </div>

                <br />

                 <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="Label4" runat="server"   Font-Size="18px" Text="Deposit Date" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtdeposit" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox> 
                          </div> 
                     </div>
                    <br />
                       <div class="row equal">   
                          <div class="col-xs-6 col-sm-2">
                              </div>           
                     <div class="col-xs-6 col-sm-4">
                         <asp:ImageButton ID="Img_Add" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                               <asp:ImageButton ID="Img_PayHistory" runat="server" ImageUrl="../Resources/images/Payment_History.png"  Style="margin-left:15px;"  />
                         </div>

                    </div>

                <br />
                   
                      <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblpay" runat="server"   Font-Size="18px" Text="Total Payment" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txt_payment" class="form-control" runat="server" placeholder="0.00"></asp:TextBox> 
                          </div>               

                    </div>
                    <br />
                      <span style="color:brown; font-size:18px; margin-left:0px;"><b>Details of Other Fees</b></span>
                        <div class="row equal">

                    <div class="col-xs-6 col-sm-4">
                          <asp:Label ID="lblroadtax" runat="server"  Font-Size="18px" Text="Additional Road Tax & Radio License $" Style="font-family:'Times New Roman', Times, serif; " ></asp:Label>
                        </div>

                      <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txtroadtax" class="form-control" runat="server" placeholder=""></asp:TextBox> 
                          </div>
                    </div>
                    <br />
                    <div class="row equal">
                     <div class="col-xs-6 col-sm-4">
                          <asp:Label ID="lblcommission" runat="server"  Font-Size="18px" Text="Spotter's Commission $" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtcommission" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div>

                    </div>
                    <br />
                    <br />
              </div>

              <%-- Step 3 starts here --%>
            <div id="fragment-3" class="ui-tabs-panel ui-tabs-hide">

                <span style="color: brown; font-size: 18px; margin-left: 0px;"><b>Details Of Insurance</b></span>

                <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblinsurance" runat="server"  Font-Size="18px" Text="Insurance Company" Style="font-family:'Times New Roman', Times, serif; "> </asp:Label> 
                    </div>

                    <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlinsurance" class="form-control" runat="server">
                                               <asp:ListItem Text="Please Select a Company " Value="0"></asp:ListItem>
                                                      <asp:ListItem Text="Accord Insurance Agency" Value="1"></asp:ListItem>
                                                       <asp:ListItem Text="Alpine Credit Pte Ltd" Value="2"></asp:ListItem>
                                                       <asp:ListItem Text="Cheap Car Insurance" Value="3"></asp:ListItem>
                                                       <asp:ListItem Text="EQ Insurance Company Ltd" Value="4"></asp:ListItem>
                                                       <asp:ListItem Text="China Taiping Insurance (S) Pte Ltd" Value="5"></asp:ListItem>
                                                       <asp:ListItem Text="Mitsui Sumitomo Insurance Singapore" Value="6"></asp:ListItem>
                                                  </asp:DropDownList> 
                    </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblpremium" runat="server"  Font-Size="18px" Text="Premium" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtpremium" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>

                </div>

                <br />
                
                <span style="color:brown; font-size:18px; margin-left:0px;"><b>Details Of Hire Purchase Application</b></span>   

                 <div class="row equal" style="margin-top:10px;">

                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblfinance1" runat="server"  Font-Size="18px" Text="Finance Company 1" Style="font-family:'Times New Roman', Times, serif; "> </asp:Label> 
                    </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddlfinance1" class="form-control" runat="server">
                                                      <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="Acqurec Group Pte Ltd" Value="1"></asp:ListItem>
                                                       <asp:ListItem Text="Advance Investment Management Capital Pte Ltd" Value="2"></asp:ListItem>
                                                       <asp:ListItem Text="AEP Investment Management Pte Ltd" Value="3"></asp:ListItem>
                                                       <asp:ListItem Text="AEW Asia Pte Ltd" Value="4"></asp:ListItem>
                                                       <asp:ListItem Text="Afc Merchant Bank" Value="5"></asp:ListItem>
                                                       <asp:ListItem Text="Alexander Forbes (Singapore) Pte Ltd" Value="6"></asp:ListItem>
                              </asp:DropDownList>
                        </div>

                      <div class="col-xs-6 col-sm-2">
                           <asp:Label ID="lblloan" runat="server"  Font-Size="18px" Text="Loan Amount" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txtloan" class="form-control" runat="server" placeholder="SGD"></asp:TextBox>
                        </div>

                </div>

                <br />

                 <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblloanperiod" runat="server"  Font-Size="18px" Text="Loan Period" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        </div>

                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtloanperiod" class="form-control" runat="server" placeholder="Ex: 3 Months"></asp:TextBox> 
                      </div>

                      <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblloanrate" runat="server"  Font-Size="18px" Text="Loan Rate" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        </div>

                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtloanrate" class="form-control" runat="server" placeholder="Ex: 15%"></asp:TextBox>
                      </div>

                 </div>

                <br />

                 <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblinstal" runat="server"   Font-Size="18px" Text="Monthly Installment" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txtinstall" class="form-control" runat="server" placeholder="SGD"></asp:TextBox>
                        </div>

                      <div class="col-xs-6 col-sm-2">
                            <asp:Label ID="lblfinance2" runat="server" for="inputEmail3" Font-Size="18px" Text="Finance Company 2" Style="font-family:'Times New Roman', Times, serif; "> </asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddlfinance2" class="form-control" runat="server">
                                                      <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                                  <asp:ListItem Text="Acqurec Group Pte Ltd" Value="1"></asp:ListItem>
                                                       <asp:ListItem Text="Advance Investment Management Capital Pte Ltd" Value="2"></asp:ListItem>
                                                       <asp:ListItem Text="AEP Investment Management Pte Ltd" Value="3"></asp:ListItem>
                                                       <asp:ListItem Text="AEW Asia Pte Ltd" Value="4"></asp:ListItem>
                                                       <asp:ListItem Text="Afc Merchant Bank" Value="5"></asp:ListItem>
                                                       <asp:ListItem Text="Alexander Forbes (Singapore) Pte Ltd" Value="6"></asp:ListItem>
                                                  </asp:DropDownList>
                        </div>

                </div>

                <br />

                  <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblfinance3" runat="server"  Font-Size="18px" Text="Finance Company 3" Style="font-family:'Times New Roman', Times, serif; "> </asp:Label> 
                    </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddlfinance3" class="form-control" runat="server">
                                                      <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>                                    
                                                  <asp:ListItem Text="Acqurec Group Pte Ltd" Value="1"></asp:ListItem>
                                                       <asp:ListItem Text="Advance Investment Management Capital Pte Ltd" Value="2"></asp:ListItem>
                                                       <asp:ListItem Text="AEP Investment Management Pte Ltd" Value="3"></asp:ListItem>
                                                       <asp:ListItem Text="AEW Asia Pte Ltd" Value="4"></asp:ListItem>
                                                       <asp:ListItem Text="Afc Merchant Bank" Value="5"></asp:ListItem>
                                                       <asp:ListItem Text="Alexander Forbes (Singapore) Pte Ltd" Value="6"></asp:ListItem>
                                                  </asp:DropDownList>
                        </div>

                      <div class="col-xs-6 col-sm-2">
                            <asp:Label ID="lblfinance4" runat="server"  Font-Size="18px" Text="Finance Company 4" Style="font-family:'Times New Roman', Times, serif; "> </asp:Label> 
                    </div>

                      <div class="col-xs-6 col-sm-3">
                           <asp:DropDownList ID="ddlfinance4" class="form-control" runat="server">
                                                      <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                                  <asp:ListItem Text="Acqurec Group Pte Ltd" Value="1"></asp:ListItem>
                                                       <asp:ListItem Text="Advance Investment Management Capital Pte Ltd" Value="2"></asp:ListItem>
                                                       <asp:ListItem Text="AEP Investment Management Pte Ltd" Value="3"></asp:ListItem>
                                                       <asp:ListItem Text="AEW Asia Pte Ltd" Value="4"></asp:ListItem>
                                                       <asp:ListItem Text="Afc Merchant Bank" Value="5"></asp:ListItem>
                                                       <asp:ListItem Text="Alexander Forbes (Singapore) Pte Ltd" Value="6"></asp:ListItem>
                                                  </asp:DropDownList>
                        </div>

                </div>

                <br />

                  <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblstatus" runat="server"  Font-Size="18px" Text="Loan Status" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>                                          
                    </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtloanstatus" class="form-control" runat="server" placeholder=""></asp:TextBox>
                        </div>

                      <div class="col-xs-6 col-sm-2">
                           <asp:Label ID="lblloandate" runat="server"  Font-Size="18px" Text="Loan Status Date" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtloandate" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox> 
                        </div>

                </div>

                <br />
                  <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                           <asp:Label ID="lblsubitdate" runat="server"  Font-Size="18px" Text="Loan Submitted Date" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtsubmitdate" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox> 
                        </div>                  

                </div>

                <br />
            		
                 <span style="color:brown; font-size:18px; margin-left:0px;"><b>Details Of Trade-In Vehicle</b></span>
               
                <div class="row equal" style="margin-top:10px;">

                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lbldealer" runat="server"  Font-Size="18px" Text="Dealer Name" Style="font-family:'Times New Roman', Times, serif; ">Dealer Name<span style="color:red;">*</span> </asp:Label> 
                    </div>

                      <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="txt_dealer" class="form-control" runat="server" placeholder=""></asp:TextBox>
                        </div>

                      <div class="col-xs-6 col-sm-2">
                            <asp:Label ID="lblvehicle" runat="server"  Font-Size="18px" Text="Vehicle Number" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtvehicle" class="form-control" runat="server" placeholder=""></asp:TextBox>
                        </div>

                </div>

                <br />

                <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblmake" runat="server" Font-Size="18px" Text="Make" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txtmake" class="form-control" runat="server" placeholder=""></asp:TextBox> 
                        </div>

                      <div class="col-xs-6 col-sm-2">
                            <asp:Label ID="lablemodel" runat="server" Font-Size="18px" Text="Model" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txtmodel" class="form-control" runat="server" placeholder=""></asp:TextBox> 
                        </div>

                </div>

                <br />

                <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="Label6" runat="server"  Font-Size="18px" Text="Year of Manufacture" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                              <asp:TextBox ID="TextBox5" class="form-control" runat="server" placeholder=""></asp:TextBox>  
                        </div>

                      <div class="col-xs-6 col-sm-2">
                              <asp:Label ID="lblkocomo" runat="server" Font-Size="18px" Text="PARF Rebate" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txtkocomo" class="form-control" runat="server" placeholder=""></asp:TextBox>
                        </div>

                </div>

                <br />
                
                 <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="Label8" runat="server"  Font-Size="18px" Text="COE Residual Rebate" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                              <asp:TextBox ID="txt_COE" class="form-control" runat="server" placeholder=""></asp:TextBox>  
                        </div>

                      <div class="col-xs-6 col-sm-2">
                              <asp:Label ID="Label9" runat="server" Font-Size="18px" Text="Body Value" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     
                        <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txt_value" class="form-control" runat="server" placeholder=""></asp:TextBox>
                        </div>

                </div>
                <br />
                  <div class="row equal">

                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="Label10" runat="server"  Font-Size="18px" Text="Komoco's Subsidy " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                              <asp:TextBox ID="txt_subsidy" class="form-control" runat="server" placeholder=""></asp:TextBox>  
                        </div>

                      <div class="col-xs-6 col-sm-2">
                              <asp:Label ID="Label11" runat="server" Font-Size="18px" Text="Total Amount " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>

                      <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txt_amt" class="form-control" runat="server" placeholder=""></asp:TextBox>
                        </div>

                </div>

                <br />
</div>
              <%-- Step 4 starts here --%>
            <div id="fragment-4" class="ui-tabs-panel ui-tabs-hide">

                <span style="color: brown; font-size: 24px; margin-left: 0px;"><b>Details Of Accounts</b></span>

                <br />
                <br />

                 <span style="color: brown; font-size: 20px; margin-left: 0px;"><b>Komoco's Account</b></span>
                 <br />
                <br />

                <span style="color: skyblue; font-size: 18px; margin-left: 0px;"><b><u>Non Accessories</u></b></span>
                 

                 <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblinstallment" runat="server"  Font-Size="18px" Text="Free Monthly Installment" Style="font-family:'Times New Roman', Times, serif; "> </asp:Label> 
                    </div>

                    <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlinstallment" class="form-control" runat="server">
                                               <asp:ListItem Text=" --Please Select--  " Value="0"></asp:ListItem>
                                                      
                                                  </asp:DropDownList> 
                    </div>

                     <div class="col-xs-6 col-sm-1"></div>

                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblamount1" runat="server"  Font-Size="18px" Text="Amount " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtamount1" class="form-control" runat="server" placeholder="EX: SGD"></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="img_add_amount" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                </div>

                <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblinspremium1" runat="server"  Font-Size="18px" Text="Insurance Premium " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtinspremium1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                     <asp:ImageButton ID="img_add_premium1" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                      
                 </div>

                <br />
                 <div class="row equal">
                     <div class="col-xs-6 col-sm-6">
                     <asp:Label ID="Label5" runat="server"  Font-Size="18px" Text="Additional Road Tax & Radio License" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                 </div>
                <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblpromotion1" runat="server"  Font-Size="18px" Text="Promotion" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtpromotion1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>

                     <div class="col-xs-6 col-sm-1"></div>

                     <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblnaprice1" runat="server"  Font-Size="18px" Text="Price " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtna_price1" class="form-control" runat="server" placeholder="Ex: SGD"></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                     <asp:ImageButton ID="img_add_naprice1" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                     </div>

                <br />

                <span style="color: skyblue; font-size: 18px; margin-left: 0px;"><b><u>Accessories</u></b></span>

                

                <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblaccessory1" runat="server"  Font-Size="18px" Text="Accessory" Style="font-family:'Times New Roman', Times, serif; "> </asp:Label> 
                    </div>

                    <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlaccessory1" class="form-control" runat="server">
                                               <asp:ListItem Text=" --Please Select--  " Value="0"></asp:ListItem>
                                                      
                                                  </asp:DropDownList> 
                    </div>

                     <div class="col-xs-6 col-sm-1"></div>

                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblaprice1" runat="server"  Font-Size="18px" Text="Price " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txta_price1" class="form-control" runat="server" placeholder="EX: SGD"></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="img_add_aprice1" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                </div>

                <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-6">
                         <asp:Label ID="Label7" runat="server"  Font-Size="18px" Text="Total Amount in Komoco's Account:" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        <asp:Label ID="lbltotamount" runat="server"  Font-Size="18px" Text="$0.00" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>       
               </div>
                     </div>

                <br />
                <br />

                <span style="color: brown; font-size: 20px; margin-left: 0px;"><b>Buyer's Account</b></span>
                 <br />
                <br />

                <span style="color: skyblue; font-size: 18px; margin-left: 0px;"><b><u>Non Accessories</u></b></span>
                 

                  <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblinspremium2" runat="server"  Font-Size="18px" Text="Insurance Premium " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtinspremium2" class="form-control" runat="server" placeholder="Ex: SGD"></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                     <asp:ImageButton ID="img_add_premium2" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                      
                 </div>

                <br />

                <div class="row equal">
                        <div class="col-xs-6 col-sm-6">
                    <asp:Label ID="Label13" runat="server"  Font-Size="18px" Text="Additional Road Tax & Radio License" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                </div>
                    </div>

                <div class="row equal">
                    <div class="col-xs-6 col-sm-6">
                    <asp:Label ID="Label12" runat="server"  Font-Size="18px" Text="First Installment" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                </div>
                    </div>
                <br />

                <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblpromotion12" runat="server"  Font-Size="18px" Text="Promotion" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtpromotion2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>

                     <div class="col-xs-6 col-sm-1"></div>

                     <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblnaprice2" runat="server"  Font-Size="18px" Text="Price " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtna_price" class="form-control" runat="server" placeholder="Ex: SGD"></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                     <asp:ImageButton ID="img_add_naprice" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                     </div>

                     <br />

                <span style="color: skyblue; font-size: 18px; margin-left: 0px;"><b><u>Accessories</u></b></span>

               

                <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblaccessory2" runat="server"  Font-Size="18px" Text="Accessory" Style="font-family:'Times New Roman', Times, serif; "> </asp:Label> 
                    </div>

                    <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlaccessory2" class="form-control" runat="server">
                                               <asp:ListItem Text=" --Please Select--  " Value="0"></asp:ListItem>
                                                      
                                                  </asp:DropDownList> 
                    </div>

                     <div class="col-xs-6 col-sm-1"></div>

                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblaprice2" runat="server"  Font-Size="18px" Text="Price " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txta_price2" class="form-control" runat="server" placeholder="EX: SGD"></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="img_add_aprice2" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                </div>

                <br />

                <div class="row equal">
                      <div class="col-xs-6 col-sm-6">
                         <asp:Label ID="Label14" runat="server"  Font-Size="18px" Text="Total Amount in Buyer's Account:" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        <asp:Label ID="Label15" runat="server"  Font-Size="18px" Text="$0.00" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>       
               </div>
                    </div>

                 <br />
                <br />

                <span style="color: brown; font-size: 20px; margin-left: 0px;"><b>Sales's Consultant's Account</b></span>
                 <br />
                <br />

                <span style="color: skyblue; font-size: 18px; margin-left: 0px;"><b><u>Non Accessories</u></b></span>
                 

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblpremium3" runat="server"  Font-Size="18px" Text="Insurance Premium " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtpremium3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                     <asp:ImageButton ID="img_add_premium3" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                      
                 </div>

                <br />

                 <div class="row equal">
                        <div class="col-xs-6 col-sm-6">
                    <asp:Label ID="Label16" runat="server"  Font-Size="18px" Text="Additional Road Tax & Radio License" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                </div>
                     </div>

                <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblpromotion3" runat="server"  Font-Size="18px" Text="Promotion" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtpromotion3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>

                     <div class="col-xs-6 col-sm-1"></div>

                     <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblnaprice3" runat="server"  Font-Size="18px" Text="Price " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtna_price3" class="form-control" runat="server" placeholder="Ex: SGD"></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                     <asp:ImageButton ID="img_addnaprice3" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                     </div>

                <br />

                 <span style="color: skyblue; font-size: 18px; margin-left: 0px;"><b><u>Accessories</u></b></span>

               

                <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblaccessory3" runat="server"  Font-Size="18px" Text="Accessory" Style="font-family:'Times New Roman', Times, serif; "> </asp:Label> 
                    </div>

                    <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlaccessory3" class="form-control" runat="server">
                                               <asp:ListItem Text=" --Please Select--  " Value="0"></asp:ListItem>
                                                      
                                                  </asp:DropDownList> 
                    </div>

                     <div class="col-xs-6 col-sm-1"></div>

                    <div class="col-xs-6 col-sm-2">
                         <asp:Label ID="lblaprice3" runat="server"  Font-Size="18px" Text="Price " Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txta_price3" class="form-control" runat="server" placeholder="EX: SGD"></asp:TextBox>
                    </div>
                      <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="img_add_aprice3" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" Width="30px"   />
                  </div>
                </div>

                <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-6">
                         <asp:Label ID="Label17" runat="server"  Font-Size="18px" Text="Total Amount in Sale's Consultant Account:" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                        <asp:Label ID="Label18" runat="server"  Font-Size="18px" Text="$0.00" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>       
               </div>
                     </div>

                <br />
                <br />

                <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                        </div>
                    <div class="col-xs-6 col-sm-6">
                     <asp:ImageButton ID="img_reinstate" runat="server" ImageUrl="../Resources/images/ReinstateBooking.png"     />
                    <asp:ImageButton ID="img_clear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="50px" Width="50px" Style="margin-left:10px;"   />
                  </div>
                </div>


                <br />

                <asp:Label ID="Label19" runat="server"  Font-Size="18px" Text="" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>  
                    </div>

                     </div>
                </div>
            </div>
        </div>
         </div>
      
     <cc1:modalpopupextender ID="mp1" runat="server" PopupControlID="pnl" TargetControlID="Img_PayHistory"
                CancelControlID="btnclose" BackgroundCssClass="Background"> </cc1:modalpopupextender>
       <asp:Panel ID="pnl" runat="server" CssClass="Popup" >
           <div style="margin-left:8px;">
                <div class="col-sm-11">
             <h3>Payment History</h3>
                    </div>
                <div class="col-sm-1">
                <asp:Button ID="btnclose" runat="server" Text="X" style="width:20px; height:25px; background-color:firebrick; color:white;" />
                    </div>
               </div>
               <br />
                 <div class="row" style="margin-left:8px;">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                                   <Columns>
                                        <asp:BoundField HeaderText="Customer ID" DataField="ID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Payment Type" DataField="Type" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Amount" DataField="amount" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Deposit Date" DataField="Date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                     
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
           <br />
           <br />
           <br />
             

           </asp:Panel>
</asp:Content>
