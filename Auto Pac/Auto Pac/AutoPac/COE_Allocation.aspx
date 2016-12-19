<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="COE_Allocation.aspx.cs" Inherits="Auto_Pac.AutoPac.COE_Allocation" %>
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
     <div class="wrapper" style="margin-left: 0px; padding-left: 10px; background-color: white;">


        <div class="main">
            <br />

         <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ;color: brown;"> </asp:label>

            <br />
            <div style="padding-left: 20px;">

                <div>
                 <div id="tabs">

                        <ul id="myTab" >
                            <li style="background-image: url(../Resources/aimages/Single_Allocation.png); width: 180px; height: 30px;"><a  href="#fragment-1"></a></li>
                            <li style="background-image: url(../Resources/aimages/Allocate_All.png); width: 149px; height: 30px;"><a  href="#fragment-2"></a></li>
                       </ul>

                     <%-- Fragment 1 (Single allocation) --%>

                     <div id="fragment-1" class="ui-tabs-panel">
                   
                         <br />
                         <br />

                     <div class="row equal">
                     <div class="col-xs-6 col-sm-3">

                     </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbcustomer" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblcustomer" runat="server" Font-Size="18px" Text="&nbsp;Customer's Bid" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbkomoco" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblkomoco" runat="server" Font-Size="18px" Text="&nbsp;Komoco's Bid" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbothers" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblothers" runat="server" Font-Size="18px" Text="&nbsp;Others" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                </div>

                         <br />

                    <span style="color:brown; font-size:18px;"><b>Details of Contract</b></span>

                         <br />
                         <br />

                   <div class="row equal">
                      <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblcontnum" runat="server"  Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                      <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtcont_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                        
                      <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblcontname" runat="server"  Font-Size="18px" Text="Contract Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtcont_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>    
                    </div>

                         <br />

                     <span style="color:brown; font-size:18px;"><b>Details of COE</b></span>

                         <br />
                         <br />

                    <div class="row equal">
                      <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblnric" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Bidder's NRIC<span style="color:red">*</span></asp:Label>
                       </div>
                      <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtnric" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                        
                      <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblname" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Bidder's Name<span style="color:red">*</span></asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtname" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>    
                    </div>

                         <br />

                  <div class="row equal">
                      <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblcertnum" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Certificate Number<span style="color:red">*</span></asp:Label>
                       </div>
                      <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtcert_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                         
                      <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblamount" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Amount<span style="color:red">*</span></asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtamount" class="form-control" runat="server" placeholder="0.00"></asp:TextBox>
                         </div>    
                   </div>

                         <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lbldepamount" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Deposit Amount<span style="color:red">*</span></asp:Label>
                       </div>
                      <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtdep_amount" class="form-control" runat="server" placeholder="0.00"></asp:TextBox>
                         </div>
                        
                      <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblbiddate" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Bid Date<span style="color:red">*</span></asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtbid_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div>  
                      <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                      </div>  
                 </div>

                         <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblcategory" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Category</asp:Label>
                       </div>
                      <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtcategory" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                        
                      <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblexpdate" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Expiry Date<span style="color:red">*</span></asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtexp_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div> 
                      <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="btnimgcalender2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                     </div>   
                 </div>

                         <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lbltakendate" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Actual Taken Date</asp:Label>
                       </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txttaken_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="imgcalender3" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                     </div>
                         
                      <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lbltakenby" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Taken By</asp:Label>
                        </div>
                      <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txttaken_by" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>    
                 </div>

                         <br />
                         <br />


                   <div class="row equal">
                  <div class="col-xs-6 col-sm-3"></div>
                  <div class="col-xs-6 col-sm-6">
                        <asp:ImageButton ID="imgadd" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="40px"/>
                        <asp:ImageButton ID="imgupdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px" Style="margin-left:10px"  />
                        <asp:ImageButton ID="imgdelete" runat="server" ImageUrl="../Resources/images/B_Delete.png" Height="40px" Style="margin-left:10px"  />
                        <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px" Style="margin-left:10px"  />
                       </div>   
                </div>
                         <br />
                         <br />
                   <div class="row">
                  
                   <div class="col-xs-6 col-sm-2" ></div>
                   <div class="col-xs-6 col-sm-10" >
                   <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true" >
                      <Columns>
                          
                                      <asp:BoundField HeaderText="Contract Number" DataField="Contract_number" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="110px" />
                                      <asp:BoundField HeaderText="Bidder's Name" DataField="Bidder_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Bid Date" DataField="Bid_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Bid Amount" DataField="Bid_amount" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Category" DataField="Category" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="COE Certificate Number" DataField="Certificate_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="COE Deposit Amount" DataField="Deposit_amount" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                       <asp:CommandField ShowSelectButton="true" />
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

                   <%--  Fragment 2 (Allocate All)--%>

                     <div id="fragment-2" class="ui-tabs-panel">
                         
                         <br />
                         <br />

                         <span style="color:brown; font-size:18px;"><b>Upload COE Certificates</b></span>

                         <br />
                         <br />

                  <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblcoebiddate" runat="server"  Font-Size="18px" Text="Input COE Bid Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtcoe_biddate" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div> 
                        <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="imgcalender4" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                        </div> 
                  </div>

                     <br />

                    <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblfile" runat="server"  Font-Size="18px" Text="File Location" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-8">
                          <asp:ImageButton ID="imgbrowse" runat="server" ImageUrl="../Resources/aimages/Browse.png" Height="30px"  />
                          <asp:Label ID="lblfilename" runat="server"  Font-Size="18px" Text="No file Selected" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                        </div> 
                       
                     </div>

                         <br />

                          <div class="row equal">
                              <div class="col-xs-6 col-sm-3"></div>

                              <div class="col-xs-6 col-sm-6">
                             <asp:ImageButton ID="imgupload" runat="server" ImageUrl="../Resources/aimages/B_Upload.png" Height="35px"  />
                             <asp:ImageButton ID="imgshow_list" runat="server" ImageUrl="../Resources/aimages/Show_List.png" Height="35px" Style="margin-left:10px" />
                            <asp:ImageButton ID="img_clear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px" />


                        </div> 
                          </div>

                         <br />

                         <span style="color:brown; font-size:18px;"><b>Legend</b></span>

                         <br />
                         <br />
                         <div class="row equal">

                              <div class="col-xs-6 col-sm-4">
                            <asp:TextBox ID="colour1" runat="server" Height="25px" Width="25px" BackColor="BurlyWood"></asp:TextBox>
                            <asp:Label ID="Label1" runat="server"  Font-Size="18px" Text="Invalid Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                            </div>
                         </div>
                          <div class="row equal">

                              <div class="col-xs-6 col-sm-4">
                            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="25px"  BackColor="skyblue"></asp:TextBox>
                            <asp:Label ID="Label2" runat="server"  Font-Size="18px" Text="Duplicate COE Certificate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                            </div>
                         </div>
                          <div class="row equal">

                              <div class="col-xs-6 col-sm-4">
                            <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="25px"  BackColor="GreenYellow"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server"  Font-Size="18px" Text="Name Didn't match" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                            </div>
                         </div>
                         <br />
                          <span style="color:brown; font-size:18px;"><b>COE Certificates</b></span>

                         <br />
                         <br />
                         </div>
                     </div>
                </div>
                </div>
            </div>
         </div>
</asp:Content>
