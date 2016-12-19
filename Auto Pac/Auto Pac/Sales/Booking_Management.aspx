<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Booking_Management.aspx.cs" Inherits="Auto_Pac.Sales.Booking_Management" %>
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
        		<li style="background-image:url(../Resources/images/B_Enquiry.png); width: 120px; height: 30px;"><a href="#fragment-1"> </a></li>
               	<li style="background-image:url(../Resources/images/B_Nego.png); width: 120px; height: 30px;"><a href="#fragment-2"></a></li>
        		<li style="background-image:url(../Resources/images/B_BO.png); width: 126px; height: 30px;"><a href="#fragment-3"></a></li>
                <li><a href="#fragment-4"></a></li>
                  </ul>

              <div id="fragment-1" class="ui-tabs-panel">
                    <asp:label id="Label8" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
                  <br />
                  <br />
                    <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Identification Details</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblideno" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Identification Number</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_idnum" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbldocumnet" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Identification Document</asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                              <asp:DropDownList ID="ddldocument" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                </div>
                  <br />
                   <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Model Interest</b></span>
                  <br />
                  <br />
                        <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblinterest" runat="server" for="inputEmail3"  font-size="18px" Text="Model Interest"   style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lbmodel" runat="server" class="form-control"></asp:ListBox>
            </div>
               <div class="col-xs-6 col-sm-1">
                   </div>

             <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="img_optnxt" runat="server" ImageUrl="~/Resources/images/B_Nxt.png" />
                 <br />
                  <asp:ImageButton ID="img_optpre" runat="server" ImageUrl="~/Resources/images/B_Pre.png"/>
            </div>
                       <div class="col-xs-6 col-sm-1">
                   </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lbminterest" runat="server" class="form-control"></asp:ListBox>
            </div>
    </div>
          <br />
             <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Business Information</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblbname" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Business Name</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_busname" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
               </div>
                  <br />
                    <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Contact Person Details</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblcntper" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Contact Person</asp:Label>
                       </div>
                   <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_cperson" class="form-control" runat="server" placeholder=""></asp:TextBox>
                      </div>
                         <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblmob" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Mobile Number</asp:Label>
                       </div>
                   <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_mob" class="form-control" runat="server" placeholder=""></asp:TextBox>
                      </div>
              </div>
                  <br />
                     <div class="row equal">
                  
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lbloffc" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Office Number</asp:Label>
                       </div>
                   <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_offc" class="form-control" runat="server" placeholder=""></asp:TextBox>
                      </div>
                         <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lbldesig" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Designation</asp:Label>
                       </div>
                   <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_designation" class="form-control" runat="server" placeholder=""></asp:TextBox>
                      </div>
              </div>
                  <br />
                    <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblmail" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Email</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_mail" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
               </div>
                  <br />
                   <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Follow Up Notes</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label1" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Follow Up After Enquiry</asp:Label>
                       </div>
                   <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlfollowup" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                      </div>
                       </div>
                  <br />
                   <div class="row equal">
                         <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblremarks" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Remarks</asp:Label>
                       </div>
                   <div class="col-xs-6 col-sm-9">
                         <asp:TextBox ID="txt_remarks" class="form-control" runat="server" placeholder="" style="height:55px;"></asp:TextBox>
                      </div>
              </div>
                  <br />
                   <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>eSignature</b></span>
                  <br />
                  <br />
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label2" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Sign your Name</asp:Label>
                       </div>
                       </div>
                    <br />
            <div class="row equal">
                 <div class="col-xs-6 col-sm-3">
                     </div>
                 <div class="col-xs-6 col-sm-3">
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Resources/images/BSubmit.png"/>
                     </div>
                </div>
</div>  
          <%--  negotiation--%>
               <div id="fragment-2" class="ui-tabs-panel">
                     <asp:label id="Label9" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
                   <br />
                   <br />
                    <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Identification Details</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblno" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Identification Number</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbldoc" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Identification Document</asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                              <asp:DropDownList ID="ddldoc" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                </div>
            <br />
           
                    <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Personal Details</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblsalut" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Salutation</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddlsalut" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblname" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">First Name</asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                             <asp:TextBox ID="txt_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                              </div>
                      </div>
            <br />
             <div class="row equal">
                   <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblsur" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Surname</asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                             <asp:TextBox ID="txt_surname" class="form-control" runat="server" placeholder=""></asp:TextBox>
                              </div>
                 </div>
            <br />
                    <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Communication Details</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lbl_mob" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Mobile</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_mobile" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbl_email" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Email</asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txt_email" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                </div>
                   <br />
                        <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Model</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblmodel" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Model Interest</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddlmodel" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblcolor" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Colour</asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                               <asp:DropDownList ID="ddlcolor" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                              </div>
                      </div>
                   <br />
                   <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblcatgry" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Mobile</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_category" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblselling" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Email</asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txt_selling" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                       </div>

                   <br />
                    <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:10px;"><b>Model Stock Availability</b></span>
                  <br />
                  <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                            <Columns>
                                 <asp:BoundField HeaderText="Exterior Colour" DataField="exteriorcolour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Interior Colour" DataField="interiorcolour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="In Stock" DataField="instock" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="ETA 1" DataField="eta1" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                               <asp:BoundField HeaderText="ETA 2" DataField="eta2" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                               <asp:BoundField HeaderText="ETA 3" DataField="eta3" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                               <asp:BoundField HeaderText="ETA 4" DataField="eta4" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                               <asp:BoundField HeaderText="ETA 5" DataField="eta5" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
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
                       <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:10px;"><b>Vehicle History</b></span>

                  <br />
                  <br />
                           <div class="col-xs-6 col-sm-3">
                            </div>
                                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                       Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                                               <Columns>
                                             <asp:BoundField HeaderText="Active" DataField="active" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Model" DataField="model" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Registration Number" DataField="registrationnumber" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Registration Date" DataField="registrationdate" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
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
                    <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:10px;"><b>Hire Purchase</b></span>

                  <br />
                  <br />
                     <div class="col-xs-6 col-sm-3">
                         <asp:Label ID="Label5" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Finance Company</asp:Label>
                    
                        </div>
                    <div class="col-xs-6 col-sm-3">
                                  <asp:DropDownList ID="ddlfinance" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                     </div>
                   <br />
                    <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:10px;"><b>Trade-in Vehicle</b></span>

                  <br />
                  <br />
                     <div class="col-xs-6 col-sm-3">
                           <asp:Label ID="Label6" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Dealer Name</asp:Label>
                     
                        </div>
                    <div class="col-xs-6 col-sm-3">
                                   <asp:DropDownList ID="ddldealer" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                     </div>
                   <br />
                    <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:10px;"><b>Promotions</b></span>

                  <br />
                  <br />
                     <div class="col-xs-6 col-sm-3">
                      <asp:Label ID="Label4" runat="server"  class="col-sm-3 control-label" Text="Promotions" Font-Size="18px"  Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                                   <asp:DropDownList ID="ddlpromotion" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                     </div>
                   <br />
                    <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                            </div>
                         <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                       Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                                               <Columns>
                                                    <asp:TemplateField>
                                                  <ItemTemplate>
                                                 <asp:LinkButton ID="lnkremove6" Text = "Remove" CommandArgument = '<%# Eval("Value6") %>' runat="server" Width="130px"></asp:LinkButton>
                                                   
                                             </ItemTemplate>
                                           </asp:TemplateField>
                                          
                                             <asp:BoundField HeaderText="Promotion Item" DataField="promotionitem" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Price" DataField="price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
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
                     <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:10px;"><b>Accessories</b></span>

                  <br />
                  <br />
                     <div class="col-xs-6 col-sm-3">
                           <asp:Label ID="lblaccess" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Accessories</asp:Label>
                     
                        </div>
                    <div class="col-xs-6 col-sm-3">
                                   <asp:DropDownList ID="ddlaccess" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                     </div>
                   <br />
                     <div class="row equal">
                       
                     <div class="col-xs-6 col-sm-3">
                           <asp:Label ID="Label3" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Add 6 Months Road Tax</asp:Label>
                     
                        </div>
                    <div class="col-xs-6 col-sm-3">
                               <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Resources/images/B_Yes.png"/>  
                      </div>
                     </div>
                   <br />
                     <div class="row equal">
                         <div class="col-xs-6 col-sm-3">
                            </div>
                          <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                       Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                                               <Columns>
                                               <asp:BoundField HeaderText="Action" DataField="actionn" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Accessory Item" DataField="accessoryitem" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Price" DataField="pricee" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
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
                     <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:10px;"><b>Personal Consent</b></span>

                  <br />
                  <br />
                         <div class="col-xs-6 col-sm-12" style="border:solid #333 thin; border-radius:05px;">
                          <P style="font-size:18px; font-family:'Times New Roman', Times, serif;">I hereby consent to Komoco Motors Pte Ltd and/or its partners using my personal information in accordance with their privacy policy, and to
                        send communications to me relating to marketing, advertising, event and promotional information on Sales, After Sales, Products, Services
                      and Merchandise that Komoco Motors Pte Ltd and/or its partners maybe selling, marketing, offering or promoting whether such products or
                          services exist now or are created in future through:</P>
                         </div>
                         </div>
                   <br />
                    <div class="row equal">
                         <div class="col-xs-6 col-sm-12" style="border:solid #333 thin; border-radius:05px;">
                             <P style="font-size:18px; font-family:'Times New Roman', Times, serif;">(Please mark your preferred channel of communication. You may mark more than one channel of communication.
A copy of our privacy policy is found on:<a href=" http://www.hyundai.com/sg/en/Privacy/index.html"></a>)</P>
                            
                   <br />
                        <div class="col-xs-6 col-sm-2">
                              <asp:CheckBox ID="cbdisplay" runat="server" />
                                      <asp:Label ID="lbldisplay" runat="server" for="inputEmail3"  Font-Size="18px" Text="Direct Mailer" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                                    
                             </div>
                         <div class="col-xs-6 col-sm-2">
                              <asp:CheckBox ID="cb_pricelist" runat="server" />
                                      <asp:Label ID="lbl_pricelist" runat="server" for="inputEmail3" Font-Size="18px" Text="SMS/MMS" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                                    
                             </div>
                        <div class="col-xs-6 col-sm-2">
                             <asp:CheckBox ID="cbcall" runat="server" />
                                      <asp:Label ID="lblcall" runat="server" for="inputEmail3"  Font-Size="18px" Text="Phone Call" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                                    
                            </div>
                         <div class="col-xs-6 col-sm-2">
                              <asp:CheckBox ID="cbemail" runat="server" />
                              <asp:Label ID="lblemail" runat="server" for="inputEmail3" Font-Size="18px" Text="Email" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                            </div>
                          <div class="col-xs-6 col-sm-2">
                                <asp:CheckBox ID="cbmail" runat="server" />
                              <asp:Label ID="lblall" runat="server" for="inputEmail3" Font-Size="18px" Text="All" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                       </div>
                        </div>
                   <br />
                    <div class="row equal">
                         <div class="col-xs-6 col-sm-12" style="border:solid #333 thin; border-radius:05px;">
                
                              <asp:CheckBox ID="cbcomm" runat="server" />
                                      <asp:Label ID="lblcomm" runat="server" for="inputEmail3" Font-Size="18px" Text="I do not wish to receive any communication from Komoco Motors Pte Ltd and/or its partners." Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                                    
                             </div>
                        </div>
                   <br />
                    <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:10px;"><b>Follow Up Notes</b></span>

                  <br />
                  <br />
                           <div class="col-xs-6 col-sm-3">
                           <asp:Label ID="Label7" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Follow up After Negotiation</asp:Label>
                     
                        </div>
                    <div class="col-xs-6 col-sm-3">
                                   <asp:DropDownList ID="ddlnegoti" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                        </div>
                   <br />
                   <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                           <asp:Label ID="lbl_remarks" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Remarks</asp:Label>
                     
                        </div>
                    <div class="col-xs-6 col-sm-6">
                                 <asp:TextBox ID="txt_remrks" class="form-control" runat="server" placeholder="" Height="60px"></asp:TextBox>
                         </div>
                       </div>
                   <br />
                      <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:10px;"><b>Customer Remarks</b></span>
                            <br />
                            <br />
                           <div class="col-xs-6 col-sm-3">
                           <asp:Label ID="lblrks" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Remarks</asp:Label>
                     
                        </div>
                    <div class="col-xs-6 col-sm-6">
                                 <asp:TextBox ID="txtrks" class="form-control" runat="server" placeholder="" Height="60px"></asp:TextBox>
                         </div>
                   </div>
                   <br />
                     <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                            </div>
                         <div class="col-xs-6 col-sm-3">
                             <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Resources/images/B_Submit.png"/> 
                            </div>

                     </div>
                </div>
           <%-- Buyer's Order--%>
             <div id="fragment-3" class="ui-tabs-panel">

                   <asp:label id="Label10" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
                 <br />
                 <br />
                  <div style="padding-left:20px;">
                    <div class="row equal">
                         <span style="color:brown; font-size:18px; margin-left:0px;"><b>Identification Details</b></span>

                  <br />
                  <br />
                         <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                              <asp:Label ID="lbl_finance" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Identification Number</asp:Label>
                        </div>
                         <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txt_finance" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                              <div class="col-xs-6 col-sm-3">
                                     <asp:Label ID="lbl_doc" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Identification Document</asp:Label>
                          </div>
                         <div class="col-xs-6 col-sm-3">
                                <asp:DropDownList ID="ddl_doc" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                       </div>
                </div>
                 <br />
                  <div class="row equal">
                         <span style="color:brown; font-size:18px; margin-left:0px;"><b>Personal Details</b></span>

                  <br />
                  <br />
                         <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                              <asp:Label ID="Label11" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Salutation</asp:Label>
                        </div>
                         <div class="col-xs-6 col-sm-3">
                                <asp:DropDownList ID="ddlsaluta" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                              <div class="col-xs-6 col-sm-3">
                                     <asp:Label ID="lblfirname" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Firstname</asp:Label>
                          </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txt_fname" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                       </div>
                      <br />
                       <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                              <asp:Label ID="lblsname" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Surname</asp:Label>
                        </div>
                         <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txt_sname" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                              <div class="col-xs-6 col-sm-3">
                                     <asp:Label ID="lbl_nric" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Name as in NRIC/Passport</asp:Label>
                          </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txt_NRIC" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                       </div>
                      <br />
                       <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                              <asp:Label ID="lbl_occup" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Occupation</asp:Label>
                        </div>
                         <div class="col-xs-6 col-sm-3">
                                <asp:TextBox ID="txt_occup" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                              <div class="col-xs-6 col-sm-3">
                                     <asp:Label ID="lbl_dob" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Date Of Birth</asp:Label>
                          </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txt_dob" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                         </div>
                       </div>
                      <br />
                        <div class="row equal">
                         <span style="color:brown; font-size:18px; margin-left:0px;"><b>Communication Details</b></span>
                             <br />
                              <br />
                            
                        <div class="col-xs-6 col-sm-3">
                              <asp:Label ID="lblphone" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Home Phone</asp:Label>
                        </div>
                         <div class="col-xs-6 col-sm-3">
                                <asp:TextBox ID="txt_phone" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                              <div class="col-xs-6 col-sm-3">
                                     <asp:Label ID="lblmobi" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Mobile</asp:Label>
                          </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txt_mobil" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                         </div>
                       </div>
            
                      <br />
                       <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                              <asp:Label ID="lbleml" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Email</asp:Label>
                        </div>
                         <div class="col-xs-6 col-sm-3">
                                <asp:TextBox ID="txt_emails" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                              <div class="col-xs-6 col-sm-3">
                                     <asp:Label ID="lblsource" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Lead Source</asp:Label>
                          </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:DropDownList ID="ddlsource" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                       </div>
                      <br />
                       <div class="row equal">
                         <span style="color:brown; font-size:18px; margin-left:0px;"><b>Address Information</b></span>
                             <br />
                              <br />
                              
                        <div class="col-xs-6 col-sm-3">
                              <asp:Label ID="lblcode" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Postal Code</asp:Label>
                        </div>
                         <div class="col-xs-6 col-sm-2">
                                <asp:TextBox ID="txtcode" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                           
                         <div class="col-xs-6 col-sm-1">
                               <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Resources/images/B_Yes.png"/> 
                             </div>
                              <div class="col-xs-6 col-sm-3">
                                     <asp:Label ID="lblblock" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Block</asp:Label>
                          </div>
                         <div class="col-xs-6 col-sm-3">
                                <asp:TextBox ID="txt_block" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                       </div>
                        
                      <br />
                        <div class="row equal">
                         <div class="col-xs-6 col-sm-3">
                              <asp:Label ID="lblroad" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Road</asp:Label>
                        </div>
                         <div class="col-xs-6 col-sm-3">
                                <asp:TextBox ID="txtroad" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                              <div class="col-xs-6 col-sm-3">
                                     <asp:Label ID="lblunit" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Unit</asp:Label>
                          </div>
                         <div class="col-xs-6 col-sm-3">
                                <asp:TextBox ID="txt_unit" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                       </div>
                      <br />
                        <div class="row equal">
                          <span style="color:brown; font-size:18px; margin-left:0px;"><b>Personal Consent</b></span>

                  <br />
                  <br />
                         <div class="col-xs-6 col-sm-11" style="border:solid #333 thin; border-radius:05px;">
                     <P style="font-size:18px; font-family:'Times New Roman', Times, serif;">   I hereby consent to Komoco Motors Pte Ltd and/or its partners using my personal information in accordance with their privacy policy, and to
                         send communications to me relating to marketing, advertising, event and promotional information on Sales, After Sales, Products, Services
                          and Merchandise that Komoco Motors Pte Ltd and/or its partners maybe selling, marketing, offering or promoting whether such products or
                         services exist now or are created in future through: </P>
                         </div>
                         </div>
                   <br />

                    <div class="row equal">
                         <div class="col-xs-6 col-sm-11" style="border:solid #333 thin; border-radius:05px; ">
                       <P style="font-size:18px; font-family:'Times New Roman', Times, serif;">  (Please mark your preferred channel of communication. You may mark more than one channel of communication.
                        A copy of our privacy policy is found on:<a href= "http://www.hyundai.com/sg/en/Privacy/index.html"></a>)</P>
                         
                      
                   <br />
                  <br />
                        <br />

                         <div class="col-xs-6 col-sm-2">
                              <asp:CheckBox ID="cbdmailer" runat="server" />
                                      <asp:Label ID="lbldmailer" runat="server" for="inputEmail3"  Font-Size="18px" Text="Direct Mailer" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                                    
                             </div>
                         <div class="col-xs-6 col-sm-2">
                              <asp:CheckBox ID="cbmms" runat="server" />
                                      <asp:Label ID="lblmms" runat="server" for="inputEmail3" Font-Size="18px" Text="SMS/MMS" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                                    
                             </div>
                        <div class="col-xs-6 col-sm-2">
                             <asp:CheckBox ID="cbpcall" runat="server" />
                                      <asp:Label ID="lblcal" runat="server" for="inputEmail3"  Font-Size="18px" Text="Phone Call" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                                    
                            </div>
                         <div class="col-xs-6 col-sm-2">
                              <asp:CheckBox ID="cb_mail" runat="server" />
                              <asp:Label ID="lbl_eml" runat="server" for="inputEmail3" Font-Size="18px" Text="Email" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                            </div>
                          <div class="col-xs-6 col-sm-2">
                                <asp:CheckBox ID="cb_all" runat="server" />
                              <asp:Label ID="lbl_all" runat="server" for="inputEmail3" Font-Size="18px" Text="All" Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                       </div>
                        </div>
                   <br />
                    <div class="row equal">
                         <div class="col-xs-6 col-sm-11" style="border:solid #333 thin; border-radius:05px;">
                              <asp:CheckBox ID="cbmsgs" runat="server" />
                                      <asp:Label ID="lbl_mg" runat="server" for="inputEmail3" Font-Size="18px" Text="I do not wish to receive any communication from Komoco Motors Pte Ltd and/or its partners." Style="font-family:'Times New Roman', Times, serif;"></asp:Label>
                                    
                             </div>
                        </div>
                   <br />
                        <div class="row equal">
                         <span style="color:brown; font-size:18px; margin-left:0px;"><b>Model</b></span>
                    <br />
                  <br />
                    <div class="col-xs-6 col-sm-3">
                    <asp:Label ID="lblmodl" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Model</asp:Label>
                      </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:DropDownList ID="ddlmodels" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                           
                  <div class="col-xs-6 col-sm-3">
                    <asp:Label ID="Label12" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Colour</asp:Label>
                      </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:DropDownList ID="ddlcolour" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                             </div>
                         </div>
                      <br />
                        <div class="row equal">
                        
                    <div class="col-xs-6 col-sm-3">
                    <asp:Label ID="Label13" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Car Type</asp:Label>
                      </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:DropDownList ID="ddlcar" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                           
                  <div class="col-xs-6 col-sm-3">
                    <asp:Label ID="Label14" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Type</asp:Label>
                      </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:DropDownList ID="ddltype" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                             </div>
                         </div>
                      <br />
                         <div class="row equal">
                        
                    <div class="col-xs-6 col-sm-3">
                    <asp:Label ID="lblcaty" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Category</asp:Label>
                      </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbl_category" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                           
                  <div class="col-xs-6 col-sm-3">
                    <asp:Label ID="lbldate" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Expected Delivery Date</asp:Label>
                      </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:DropDownList ID="ddl_date" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                             </div>
                         </div>
                      <br />
                        <div class="row equal">
                        
                    <div class="col-xs-6 col-sm-3">
                    <asp:Label ID="lbl_period" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Road Tax Period</asp:Label>
                      </div>
                         <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbltax" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                            </div>
                      <br />
                       <div class="row equal">
                        <span style="color:brown; font-size:18px; margin-left:0px;"><b>Negotiation History</b></span>
                   <br />
                  <br />
                          <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                       Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                                               <Columns>
                                                <asp:BoundField HeaderText="Selected" DataField="selected" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Effectivity" DataField="effectivity" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Colour" DataField="colour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            <asp:BoundField HeaderText="Cash Discount Amount" DataField="Cash_Discount_Amount" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Finance" DataField="finance" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Loan Amount" DataField="Loan_Amount" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            <asp:BoundField HeaderText="Monthly Installment" DataField="Monthly_Installment" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Trade Mark" DataField="Trade_Mark" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Overtrade Subsidy" DataField="Overtrade_Subsidy" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            <asp:BoundField HeaderText="Created Date" DataField="Created_Date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Expiry" DataField="expiry" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                           
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
                         <div class="row equal">
                        <span style="color:brown; font-size:18px; margin-left:0px;"><b>Model Stock Availability</b></span>
                   <br />
                  <br />
                          <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                       Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                                               <Columns>
                                                <asp:BoundField HeaderText="Exterior Colour" DataField="Exterior_Colour" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Interior Colour" DataField="Interior_Colour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="In Stock" DataField="In_Stock" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            <asp:BoundField HeaderText="ETA 1" DataField="ETA_1" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="ETA 2" DataField="ETA_2" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="ETA 3" DataField="ETA_3" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            <asp:BoundField HeaderText="ETA 4" DataField="ETA_4" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="ETA 5" DataField="ETA_5" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                         
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
                        <div class="row equal">
                        <span style="color:brown; font-size:18px; margin-left:0px;"><b>Vehicle History</b></span>
                   <br />
                  <br />
                          <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                       Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                                               <Columns>
                                                  <asp:BoundField HeaderText="Active" DataField="active" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Model" DataField="model" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Registration Number" DataField="Registration_Number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            <asp:BoundField HeaderText="Registration Date" DataField="Registration_Date" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            
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
                 </div>
                 </div>
                        <%--buyers order 2nd part continue--%>

                       <div id="fragment-4" class="ui-tabs-panel">
                             <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details Of Pricing</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblpric" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Price(Inc.of Free Options & GST)</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:Label ID="lbl_price" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblOPC" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">OPC Amount</asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lbl_OPC" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                </div>
                           <br />
                            <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details Of Deposit</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label15" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Payment Type</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                        <asp:DropDownList ID="ddlpaytype" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                         <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="Label17" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Deposit Amount</asp:Label>
                        </div>
                         <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_amt" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                        </div>
                           <br />
                             <div class="row equal">
                                  <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label16" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Deposit Date</asp:Label>
                       </div>
                           <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_date" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                           <div class="col-xs-6 col-sm-3">
                         <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Resources/images/AddDeposit.png"/> 
                       </div>
                                 </div>
                           <br />
                           <div class="row equal">
                           <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                             Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                              <Columns>
                                  <%--  <asp:TemplateField>
                                                  <ItemTemplate>
                                                 <asp:LinkButton ID="lnkremove" Text = "Remove" CommandArgument = '<%# Eval("Value") %>' runat="server" Width="130px"></asp:LinkButton>
                                                   
                                             </ItemTemplate>
                                           </asp:TemplateField>--%>

                                        
                                             <asp:BoundField HeaderText="Payment Type" DataField="Payment_Type" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Deposit Amount" DataField="Deposit_Amount" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            <asp:BoundField HeaderText="Deposit Date" DataField="Deposit_Date" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                              <asp:BoundField HeaderText="Terminal No" DataField="Terminal_No" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Bank" DataField="bank" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Other Bank" DataField="Other_Bank" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            <asp:BoundField HeaderText="Check Number" DataField="Check_Number" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Receipt Number" DataField="Receipt_Number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Batch Number" DataField="Batch_Number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            <asp:BoundField HeaderText="Invoice Number" DataField="Invoice_Number" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                            
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
                              <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details Of Insurance</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label18" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Insurance Company</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddlcmpy" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                                  </div>
                           <br />
                            <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details Of Hire Purchase</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label19" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Finance Company</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddl_finance" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                           </div>
                           <br />
                             <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details Of Other Fees</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label20" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Off Set</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txt_fees" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label21" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Top Up</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtcoe" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                           </div>
                           <br />
                           <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details Of Other Fees</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label22" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Spotter's Commission</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txt_commisi" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label23" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Overtrade</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txt_trade" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                           </div>
                           <br />
                             <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details Of Trade-In Vehicle</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label24" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Dealer Name</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddldname" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                           </div>
                           <br />
                             <div class="row equal">
                    <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details Of Discount</b></span>
                  <br />
                  <br />
                   <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label25" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Discount Amount</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txt_damt" class="form-control" runat="server" placeholder="SGD"></asp:TextBox>
                         </div>
                           </div>
                           <br />
                            <div class="row equal">
                    <span style="color:brown; font-size:24px; margin-left:10px;"><b>Details Of Account</b></span>
                  <br />
                  <br />
              
                <span style="color: skyblue; font-size: 20px; margin-left: 5px;"><b><u>Promotions</u></b></span>
                                <br />
                                <br />
                  <div class="row equal">
                       <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label26" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Promotions</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="SGD"></asp:TextBox>
                         </div>
                           </div>
                  </div>
                           <br />
                           <div class="row equal">
                           <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                             Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                             
                                <Columns>
                                   <%--  <asp:TemplateField>
                                                  <ItemTemplate>
                                                 <asp:LinkButton ID="lnkremove1" Text = "Remove" CommandArgument = '<%# Eval("Value") %>' runat="server" Width="130px"></asp:LinkButton>
                                                   
                                             </ItemTemplate>
                                           </asp:TemplateField>--%>
                                          
                                             <asp:BoundField HeaderText="Promotion Item" DataField="promotion_Item" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Price" DataField="price1" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                          
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
                           <div class="row equal">
                                    <span style="color: skyblue; font-size: 20px; margin-left: 5px;"><b><u>Non Accessories</u></b></span>
                               <br />
                               <br />

                                   <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="SGD"></asp:TextBox>
                         </div>
                                 <div class="col-xs-6 col-sm-3">
                           <asp:ImageButton ID="Img_insurance" runat="server" ImageUrl="~/Resources/images/Insurance.png"/> 
                         </div>
                    </div>
                           <br />
                            <div class="row equal">
                                    <span style="color: skyblue; font-size: 20px; margin-left: 5px;"><b><u>Accessories</u></b></span>
                               <br />
                                <br />

                                  <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label27" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Accessories</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddlaccessory" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
               
                          
                             <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label28" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Add 6 Months Road Tax</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                           <asp:ImageButton ID="img_add" runat="server" ImageUrl="~/Resources/images/B_Yes.png" Height="35px"/> 
                         </div>
                                </div>
                           <br />
                           
                            <div class="row equal">
                             <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                             Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                             
                                <Columns>
                                  <%--   <asp:TemplateField>
                                                  <ItemTemplate>
                                                 <asp:LinkButton ID="lnkremove2" Text = "Remove" CommandArgument = '<%# Eval("Value") %>' runat="server" Width="130px"></asp:LinkButton>
                                                   
                                             </ItemTemplate>
                                           </asp:TemplateField>--%>
                                         
                                             <asp:BoundField HeaderText="Accessory Item" DataField="accessory_Item" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Price" DataField="price1" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                          
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
                           
                            <div class="row equal">
                    <span style="color:brown; font-size:24px; margin-left:10px;"><b>Buyer's Account</b></span>
                  <br />
                  <br />
              
                <span style="color: skyblue; font-size: 20px; margin-left: 5px;"><b><u>Non Accessories</u></b></span>
                                <br />
                                <br />
                  <div class="row equal">
                       <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblmonths" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Add 6 Months Road Tax</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Resources/images/B_Yes.png"/>
                         </div>
                      
                       <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="TextBox4" class="form-control" runat="server" placeholder=""></asp:TextBox>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                           <asp:ImageButton ID="Img_finstall" runat="server" ImageUrl="~/Resources/images/AddInstal.png"/>
                         </div>
                           </div>
                                <br />
                                  
                       <div class="row equal">
                              <div class="col-xs-6 col-sm-6">
                                  </div>
                             <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="TextBox5" class="form-control" runat="server" placeholder=""></asp:TextBox>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                           <asp:ImageButton ID="Img_insupre" runat="server" ImageUrl="~/Resources/images/AddInsu.png"/>
                         </div>
                           </div>
                                <br />
                     <div class="row equal">
                          <div class="col-xs-6 col-sm-6">
                                  </div>
                       <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="TextBox6" class="form-control" runat="server" placeholder=""></asp:TextBox>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                           <asp:ImageButton ID="Img_admin" runat="server" ImageUrl="~/Resources/images/AddAdmin.png" />
                         </div>
                                   
                           </div>
                                <br />
                                <div class="row equal">
                                  <span style="color: skyblue; font-size: 20px; margin-left: 15px;"><b><u>Accessories</u></b></span>
                                <br />
                                <br />
                                    <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label32" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Accessories</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddl_buyaccess" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                                <div class="col-xs-6 col-sm-6">
                             <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                             Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                             
                                <Columns>
                                     <asp:TemplateField>
                                                  <ItemTemplate>
                                                 <asp:LinkButton ID="lnkremove3" Text = "Remove" CommandArgument = '<%# Eval("Value11") %>' runat="server" Width="130px"></asp:LinkButton>
                                                   
                                             </ItemTemplate>
                                           </asp:TemplateField>
                                           
                                             <asp:BoundField HeaderText="Accessory Item" DataField="accessory_Item" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Price" DataField="price1" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                          
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
                            </div>
                           <br />
                               <div class="row equal">
                    <span style="color:brown; font-size:24px; margin-left:10px;"><b>Salesman's Account</b></span>
                  <br />
                  <br />
              
                <span style="color: skyblue; font-size: 20px; margin-left: 5px;"><b><u>Non Accessories</u></b></span>
                                <br />
                                <br />
                  <div class="row equal">
                       <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblsadd" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Add 6 Months Road Tax</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                     <asp:ImageButton ID="Img_sadd" runat="server" ImageUrl="~/Resources/images/B_Yes.png"/>
                         </div>
                      
                       <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txt_sfirst" class="form-control" runat="server" placeholder=""></asp:TextBox>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                           <asp:ImageButton ID="imd_addins" runat="server" ImageUrl="~/Resources/images/AddInsu.png"/>
                         </div>
                           </div>
                                <br />
                                  
                       <div class="row equal">
                              <div class="col-xs-6 col-sm-6">
                                  </div>
                             <div class="col-xs-6 col-sm-3">
                           <asp:TextBox ID="txt_coe" class="form-control" runat="server" placeholder=""></asp:TextBox>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                           <asp:ImageButton ID="Img_coe" runat="server" ImageUrl="~/Resources/images/AddCoe.png"/>
                         </div>
                           </div>
                                <br />
                     <div class="row equal">
                          <div class="col-xs-6 col-sm-6">
                                  </div>
                       <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txt_admin" class="form-control" runat="server" placeholder=""></asp:TextBox>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                           <asp:ImageButton ID="Img_saleadmin" runat="server" ImageUrl="~/Resources/images/AddAdmin.png" />
                         </div>
                                   
                           </div>
                                <br />
                                <div class="row equal">
                                  <span style="color: skyblue; font-size: 20px; margin-left: 15px;"><b><u>Accessories</u></b></span>
                                <br />
                                <br />
                                    <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblaccesso" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Accessories</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                          <asp:DropDownList ID="ddl_access" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                         </div>
                               
                                <div class="col-xs-6 col-sm-6">    
                             <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                             Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                             
                                <Columns>
                                     <asp:TemplateField>
                                                  <ItemTemplate>
                                                 <asp:LinkButton ID="lnkremove4" Text = "Remove" CommandArgument = '<%# Eval("Value") %>' runat="server" Width="130px"></asp:LinkButton>
                                                   
                                             </ItemTemplate>
                                           </asp:TemplateField>
                                           
                                             <asp:BoundField HeaderText="Accessory Item" DataField="accessory" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Price" DataField="prices" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                          
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
                            </div>
                           <br />
                             <div class="row equal">
                    <span style="color:brown; font-size:24px; margin-left:10px;"><b>Additional Remarks</b></span>
                  <br />
                  <br />
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="Label29" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Remarks</asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-6">
                          <asp:TextBox ID="txtremarks" class="form-control" runat="server" placeholder="" Height="60px"></asp:TextBox>
                         </div>

                                 </div>
                           <br />
                           <br />

                            <div class="row equal">
                                 <div class="col-xs-6 col-sm-3">
                                     </div>
                                 <div class="col-xs-6 col-sm-3">
                                      <asp:ImageButton ID="Img_submit" runat="server" ImageUrl="~/Resources/images/BSubmit.png" />
                                     </div>
                                </div>



                         </div>
                     </div>
                 </div>
             </div>
          </div>
        </div>
     
     
</asp:Content>
