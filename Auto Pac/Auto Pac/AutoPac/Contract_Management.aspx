<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Contract_Management.aspx.cs" Inherits="Auto_Pac.Auto_Pac.Contract_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../tabs.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.7.custom.min.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
 

          

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
     <script type="text/javascript">
        $(function () {

            var $tabs = $('#tabs').tabs();

            $(".ui-tabs-panel").each(function (i) {

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

            $('.next-tab, .prev-tab').click(function () {
                $tabs.tabs('select', $(this).attr("rel"));
                return false;
            });


        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper" style="margin-left: 0px; padding-left: 10px; background-color: white;">


        <div class="main">
            <br />

          <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ; color: brown;"> </asp:label>
            <br />
            <br />
            <div style="padding-left: 20px;">
                 
                <div id="tabs">

                        <ul>
                            <li style="background-image: url(../Resources/images/Step1.png); width: 149px; height: 30px;"><a href="#fragment-1"></a></li>

                            <li style="background-image: url(../Resources/images/Step2.png); width: 149px; height: 30px;"><a href="#fragment-2"></a></li>
                            <li style="background-image: url(../Resources/images/Step3.png); width: 149px; height: 30px;"><a href="#fragment-3"></a></li>
                            <li style="background-image: url(../Resources/images/Step4.png); width: 149px; height: 30px;"><a href="#fragment-4"></a></li>
                           
                        </ul>



                <%-- fragment 1 (Step 1)--%>

                 <div id="fragment-1" class="ui-tabs-panel">

                <span style="color:brown; font-size:18px;"><b>Search Criteria</b></span>
                <br />
                <br />

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
                                    <asp:Label ID="lblbuyername" runat="server" Font-Size="18px" Text="Buyer's Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbuyer_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="img_buyer_name" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                    </div>

                <br />

                 <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblreceiptnum" runat="server" Font-Size="18px" Text="Receipt Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtreceipt_num" class="form-control" runat="server" placeholder="Ex:256748"></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgreceipt_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblordernum" runat="server" Font-Size="18px" Text="Buyer's Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtorder_num" class="form-control" runat="server" placeholder="Ex:122477"></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgorder_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                    </div>

                <br />

                     <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblnric" runat="server" Font-Size="18px" Text="Buyer's NRIC" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtnric" class="form-control" runat="server" placeholder="Ex:192345671I"></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgnric" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblregisternum" runat="server" Font-Size="18px" Text="Register Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtreg_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgreg_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                    </div>

                <br />

                <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblinvoicenum" runat="server" Font-Size="18px" Text="InVoice Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtinvoice_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imginvoice_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lbltcoe" runat="server" Font-Size="18px" Text="TCOE Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txttcoe_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgtcoe_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                    </div>

                <br />

                <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblconsultant" runat="server" Font-Size="18px" Text="Sales Consultant" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:DropDownList ID="ddlconsultant" class="form-control" runat="server">
                                        <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                        <asp:ListItem>AAR</asp:ListItem>
                                        <asp:ListItem>ADH</asp:ListItem>
                                        <asp:ListItem>ADL</asp:ListItem>
                                        
                                    </asp:DropDownList>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgconsultant" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblvinnum" runat="server" Font-Size="18px" Text="VIN Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtvin_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgvin_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                    </div>

                <br />

                <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblenginenum" runat="server" Font-Size="18px" Text="Engine Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtengine" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgengine" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblchasisnum" runat="server" Font-Size="18px" Text="Chasis Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtchasis" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgchasis" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                    </div>

                <br />

                 <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblregdate" runat="server" Font-Size="18px" Text="Registration Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtreg_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="imgcalender" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                </div>
                               <div class="col-xs-6 col-sm-1">
                                        <asp:ImageButton ID="imgreg_date" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />
                               </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcontdate" runat="server" Font-Size="18px" Text="Contract Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtcont_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>
                                 <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />

                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgcont_date" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                    </div>

                <br />

                <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblsfdc" runat="server" Font-Size="18px" Text="SFDC Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtsfdc" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgsfdc" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                    </div>
                <hr />
      
                <br />

                   <div class="row equal">
                  
                   <div class="col-xs-6 col-sm-2" ></div>
                  <div class="col-xs-6 col-sm-10"  >
                     
                   <asp:GridView ID="Gridview_access" runat="server" style="overflow:auto" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true"  >
                      <Columns>
                          
                                      <asp:BoundField HeaderText="Buyer IC" DataField="Buyer_ic" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="Contract Number" DataField="Contract_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="Buyer's Order Number" DataField="Order_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="Buyer Name" DataField="Buyer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="Register Number" DataField="Register_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
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
                  </div>

                    <%-- fragment 2--%>
                    <div id="fragment-2" class="ui-tabs-panel">
                 <div class="row equal">
                     <div class="col-xs-6 col-sm-3">

                     </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rblocal" runat="server" GroupName="rb"  />
                       <asp:Label ID="lbllocal" runat="server" Font-Size="18px" Text="&nbsp;Local" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbforeigner" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblforeigner" runat="server" Font-Size="18px" Text="&nbsp;Foreigner" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbcompany" runat="server" GroupName="rb"  />
                       <asp:Label ID="lblcompany" runat="server" Font-Size="18px" Text="&nbsp;Company" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                </div>
      
                        <br />

                <span style="color:brown; font-size:18px;"><b>Details of Buyer</b></span>

                <br />
                <br />

                 <div class="row equal">
                 <div class="col-xs-6 col-sm-3">
                  <asp:label id="lbltitle" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Title<span style="color:red;">*</span></asp:label>
                </div>
                  
                 <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddltitle" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                             <asp:ListItem>MRS</asp:ListItem>
                                            <asp:ListItem>MISS</asp:ListItem>
                                            <asp:ListItem>M/S</asp:ListItem>
                                            <asp:ListItem>MDM</asp:ListItem>
                                            <asp:ListItem>DR</asp:ListItem>
                                            <asp:ListItem>MS</asp:ListItem> 
                                      </asp:dropdownlist>
               </div>
                <div class="col-xs-6 col-sm-3">
                 <asp:Label ID="lblnricname" runat="server"   Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Name as in NRIC/Passport<span style="color:red;">*</span></asp:Label>
                 </div>
                <div class="col-xs-6 col-sm-3">
                 <asp:TextBox ID="txtnric_name" class="form-control" runat="server" placeholder=""></asp:TextBox> 
                </div>
                </div>

                <br />

                 <div class="row equal">
                <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblpassport" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">NRIC No/Passport No/RCB No<span style="color:red;">*</span></asp:label>
                </div>

                <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txtpassport" class="form-control" runat="server" placeholder="Ex:SxxxxxxC"></asp:textbox>
               </div>
                <div class="col-xs-6 col-sm-3">
                    <asp:Label ID="lblmobile" runat="server"    Font-Size="18px"  Style="font-family:'Times New Roman', Times, serif; ">Mobile Number<span style="color:red;">*</span></asp:Label>
               </div>
               <div class="col-xs-6 col-sm-3">
                  <asp:TextBox ID="txtmobile" class="form-control" runat="server" placeholder="Ex: +65XXXXXXXX"></asp:TextBox> 
                </div>
         </div>

                <br />

                 <div class="row equal">
                               <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblhomenum" runat="server" Font-Size="18px" Text="Home Tel Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txthome_num" class="form-control" runat="server" placeholder="Ex: +65XXXXXXXX"></asp:TextBox>
                                </div>  
                               <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbloffcnum" runat="server" Font-Size="18px" Text="Office Tel Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtoffc_num" class="form-control" runat="server" placeholder="Ex: +65XXXXXXXX"></asp:TextBox>
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
                                <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblroad" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Road<span style="color:red;">*</span></asp:Label>
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
                                <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblpostcode" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Postal Code<span style="color:red;">*</span></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpost_code" class="form-control" runat="server" placeholder="EX:577532"></asp:TextBox>
                                </div>   
                 </div>

                <br />

                 <div class="row equal">
                                 <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblemail" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Email<span style="color:red;">*</span></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Ex:lee@gmail.com"></asp:TextBox>
                                </div>
                              <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldob" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Date of Birth<span style="color:red;">*</span></asp:Label>
                                </div>
                                 <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtdob" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>    
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgdob" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                </div>
                 </div>

                <br />

                <div class="row equal">
                               <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbloccupation" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Occupation<span style="color:red;">*</span></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtoccupation" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                 <div class="col-xs-6 col-sm-3">
                             <asp:label id="lblcontmode" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Mode of Contact<span style="color:red;">*</span></asp:label>
                              </div>
                  
                               <div class="col-xs-6 col-sm-3">
                                 <asp:dropdownlist id="ddlcont_mode" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                      </asp:dropdownlist>
                               </div>
                </div>

                <br />

                    <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                      </div>
                   </div>

               
                <div class="row equal">
                     <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblconsentmode" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Mode of Consent</asp:Label>

                     </div>
                    <div class="col-xs-6 col-sm-2">
                        <asp:CheckBox ID="chkmailer" runat="server" Width="40px" />
                       <asp:Label ID="lblmailer" runat="server" Font-Size="18px" Text="&nbsp;Direct Mailer" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                      <div class="col-xs-6 col-sm-2">
                          <asp:CheckBox ID="chksms" runat="server" Width="40px" />
                       <asp:Label ID="lblsms" runat="server" Font-Size="18px" Text="&nbsp;SMS/MMS" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                    <div class="col-xs-6 col-sm-2">
                        <asp:CheckBox ID="chkcall" runat="server" Width="40px" />
                       <asp:Label ID="lblcall" runat="server" Font-Size="18px" Text="&nbsp;Phone Call" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:CheckBox ID="chkemail" runat="server" Width="40px" />
                       <asp:Label ID="lblemail1" runat="server" Font-Size="18px" Text="&nbsp;Email" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:CheckBox ID="chkall" runat="server" Width="40px" />
                       <asp:Label ID="lblall" runat="server" Font-Size="18px" Text="&nbsp;All" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                </div>
                
                <br />

                <div class="row equal">
                     <div class="col-xs-6 col-sm-2">

                     </div>
                    <div class="col-xs-6 col-sm-8">
                        <asp:CheckBox ID="chkdont" runat="server"  />
                       <asp:Label ID="Label1" runat="server" Font-Size="18px" Text="&nbsp;I do not wish to receive any communication from komoco Motors Pte Ltd and/or its partners." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                    </div>
                
                <br />
                <hr />
                <br />

                <span style="color:brown; font-size:18px;"><b>Details of Vehicle</b></span>

                <br />
                <br />

                 <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                        <asp:label id="lblmodel" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Model<span style="color:red;">*</span></asp:label>
                     </div>
                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlmodel" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                       <asp:Label ID="lblcolour" runat="server"   Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Colour<span style="color:red;">*</span></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlcolour" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist> 
                   </div>
                </div> 

                <br />

                <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                        <asp:label id="lblcartype" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Car Type<span style="color:red;">*</span></asp:label>
                     </div>
                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlcar_type" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                       <asp:Label ID="lblcoetype" runat="server"   Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">COE Type<span style="color:red;">*</span></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlcoe_type" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist> 
                   </div>
                </div> 

                <br />

                <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                        <asp:label id="lblcategory" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Category</asp:label>
                     </div>
                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlcategory" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                       <asp:Label ID="lblinvoice" runat="server"   Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Invoice Price</asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtinvoice_price" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>

                   </div>
                </div> 

                <br />

                <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                       <asp:Label ID="lblsellprice" runat="server"   Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Nett Selling Price</asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                          <asp:TextBox ID="txtsell_price" class="form-control" runat="server" placeholder="Ex:25000.00"></asp:TextBox>

                   </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:label id="lblexpdate" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Expected Delivery date<span style="color:red">*</span></asp:label>
                     </div>
                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddldelivery_date" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                    </div>
                </div>

                <hr />
               <br />

                  <span style="color:brown; font-size:18px;"><b>Details of Other Fees</b></span>

                <br />
                <br />

                 <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblroadtax" runat="server" Font-Size="18px" Text="Additional road Tax" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtroad_tax" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblcommission" runat="server" Font-Size="18px" Text="Spotter's Commission" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcommission" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                           </div>   
                  </div>

                 <br />
                
                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbltopup" runat="server" Font-Size="18px" Text="COE Top Up" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txttop_up" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbloffset" runat="server" Font-Size="18px" Text="COE Off Set" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtoffset" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                           </div>   
                  </div>

                  <br />

                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblfin_topup" runat="server" Font-Size="18px" Text="Finance Top Up" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtfin_topup" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblrebate" runat="server" Font-Size="18px" Text="COE Rebate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtrebate" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                            </div>   
                  </div>

                   <br />

                    <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblsurcharge" runat="server" Font-Size="18px" Text="CEVS Surcharge" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtsurcharge" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                          </div> 
                   </div>
                        <hr />
                        <br />

                  <span style="color:brown; font-size:18px;"><b>Details of Cash Discount</b></span>

                  <br />
                  <br />

                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblamount" runat="server" Font-Size="18px" Text="Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtamount" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                          </div> 
                   </div>
                    <hr />
                  <br />

                  <span style="color:brown; font-size:18px;"><b>Details of Deposit</b></span>
                  <br />
                  <br />
                  <span style="color:black; font-size:18px;"><b>1)</b></span>
                  <br />

                  <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                        <asp:label id="lblpaymenttype1" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Payment Type<span style="color:red;">*</span></asp:label>
                     </div>
                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlpayment_type1" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                       <asp:Label ID="lblbank1" runat="server"   Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Bank<span style="color:red;">*</span></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlbank1" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist> 
                   </div>
                </div> 

                <br />

                
                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblamount1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Amount<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtamount1" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblcheque1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Cheque Number<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcheque1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>   
                  </div>

                        <br />

                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                          <asp:label id="lblterminal1" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Terminal Number</asp:label>
                         </div>
                  
                          <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlterminal1" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                         </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblbatch1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Batch Number</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbatch1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                  </div>

                        <br />

                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblinvoice1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Invoice Number</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtinvoice1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbldepdate1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Deposit Date<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtdeposit_date1" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                            </div>   
                           <div class="col-xs-6 col-sm-1">
                         <asp:ImageButton ID="imgcalender3" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Height="30px" />
                         </div>  
                  </div>

                        <br />

                     
                  <span style="color:black; font-size:18px;"><b>2)</b></span>
                  <br />

                  <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                        <asp:label id="lblpaymenttype2" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Payment Type<span style="color:red;">*</span></asp:label>
                     </div>
                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlpayment_type2" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                       <asp:Label ID="lblbank2" runat="server"   Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Bank<span style="color:red;">*</span></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlbank2" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist> 
                   </div>
                </div> 

                <br />

                
                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblamount2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Amount<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtamount2" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblcheque2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Cheque Number<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcheque2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>   
                  </div>

                        <br />

                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                          <asp:label id="lblterminal2" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Terminal Number</asp:label>
                         </div>
                  
                          <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlterminal2" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                         </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblbatch2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Batch Number</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbatch2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                  </div>

                        <br />

                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="llblinvoice2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Invoice Number</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtinvoice2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbldepdate2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Deposit Date<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtdeposit_date2" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-sm-1">
                         <asp:ImageButton ID="imgcalender4" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Height="30px" />
                         </div>  
                  </div>

                        <br />

                     <span style="color:black; font-size:18px;"><b>3)</b></span>
                  <br />

                  <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                        <asp:label id="lblpaymenttype3" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Payment Type<span style="color:red;">*</span></asp:label>
                     </div>
                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlpayment_type3" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                       <asp:Label ID="lblbank3" runat="server"   Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Bank<span style="color:red;">*</span></asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlbank3" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist> 
                   </div>
                </div> 

                <br />

                
                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblamount3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Amount<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtamount3" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblcheque3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Cheque Number<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcheque3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>   
                  </div>

                        <br />

                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                          <asp:label id="lblterminal3" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Terminal Number</asp:label>
                         </div>
                  
                          <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlterminal3" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                         </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblbatch3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Batch Number</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtbatch3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>
                  </div>

                        <br />

                  <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblinvoice3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Invoice Number</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtinvoice3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbldepositdate3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Deposit Date<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtdeposit_date3" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                            </div> 
                            <div class="col-xs-6 col-sm-1">
                         <asp:ImageButton ID="imgcalender5" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Height="30px" />
                         </div>  
                  </div>
                        <br />
                        <br />

                  </div>

                     <%-- fragment 3--%>
                    <div id="fragment-3" class="ui-tabs-panel">
                        <br />
                                      
                        <span style="color:brown; font-size:18px;"><b>Details of Insurance</b></span>
                        
                        <br />
                        <br/>

                    <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                          <asp:label id="lblinscompany" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Insurance Company</asp:label>
                         </div>
                  
                          <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlins_company" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                         </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblpremium" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Premiun</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpremium" class="form-control" runat="server" placeholder="Ex:0.00"></asp:TextBox>
                            </div>
                  </div>
                        <hr />
                        <br />

                         <span style="color:brown; font-size:18px;"><b>Details of Hire Purchase Application</b></span>

                        <br />
                        <br />

                          <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                          <asp:label id="lblfincompany1" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Finance Company 1<span style="color:red">*</span></asp:label>
                         </div>
                  
                          <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlfin_company1" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                          <asp:CheckBox ID="chkfb" runat="server" Text="&nbsp;FB"/>
                         </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblloanamt" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Loan Amount<span style="color:red">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtloan_amount" class="form-control" runat="server" placeholder="Ex:25000.00"></asp:TextBox>
                            </div>
                          </div>

                        <br />

                           <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblloan_period" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Loan Period(Months)<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtloan_period" class="form-control" runat="server" placeholder="Ex:12"></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblloan_rate" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Loan Rate(%)<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtloan_rate" class="form-control" runat="server" placeholder="Ex:1.27"></asp:TextBox>
                            </div>   
                  </div>

                        <br />

                       <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblinstallment" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Monthly Installment<span style="color:red;">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtinstallment" class="form-control" runat="server" placeholder="Ex:6254.00"></asp:TextBox>
                          </div> 
                              <div class="col-xs-6 col-sm-3">
                          <asp:label id="lblfincompany2" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Finance Company 2</asp:label>
                         </div>
                  
                          <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlfin_company2" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                         </div>
                    </div>

                    <br />

                         <div class="row equal">
                     <div class="col-xs-6 col-sm-3">
                        <asp:label id="lblfin_company3" runat="server"   font-size="18px" text="" style="font-family: 'Times New Roman', Times, serif;">Finance Company 3</asp:label>
                     </div>
                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlfin_company3" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                       <asp:Label ID="lblfin_company4" runat="server"   Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Finance Company 4</asp:Label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlfin_company4" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                         </asp:dropdownlist> 
                   </div>
                       </div> 

                        <br />

                      <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblloanstatus" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Loan Status</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtloan_status" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblstatus_date" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Loan Status Date</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtstatus_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                            </div>   
                    </div>

                        <br />

                         <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblsubmitdate" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Loan Submitted Date</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtsubmit_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                          </div> 
                         </div>
                        <hr />
                        <br />

                       <span style="color:brown; font-size:18px;"><b>Details of Trade-in Vehicle</b></span>

                        <br />
                        <br />

                    <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldealername" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Dealer Name<span style="color:red">*</span></asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtdealer_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblvehiclenum" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Vehicle Number</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtvehicle_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>   
                    </div>

                        <br />

                        <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblmake" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Make</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtmake" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblmodel1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Model</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtmodel" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div>   
                      </div>

                        <br />

                      <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblmanufacture" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Year of Manufacture</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txtmanufacture" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div> 
                      </div>

                        
                        <br />

                         <div class="row equal">
                          <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblsubsidy" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Komoco Overtrade Subsidy </asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtsubsidy" class="form-control" runat="server" placeholder=""></asp:TextBox>
                          </div> 
                         <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblpruchase_price" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Total Purchase Price Of Used Vehicle</asp:Label>
                          </div>
                          <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtpurchase_price" class="form-control" runat="server" placeholder="Ex:50000.00"></asp:TextBox>
                            </div>   
                      </div>
                        <br />
                        <br />


                        </div>

                          <%-- fragment 4--%>
                    <div id="fragment-4" class="ui-tabs-panel">
                        <br />
                                      
                        <span style="color:brown; font-size:22px;"><b>Details of Accounts</b></span>

                        <br />
                        <br />

                   <%--     <span style="color:brown; font-size:18px;"><b>Komoco's Accounts</b></span>

                        <br />
                        <br />       --%>


                        <ul class="nav nav-tabs">
                              <li class="active"><a data-toggle="tab" href="#tab1">Komoco's Accounts</a></li>
                              <li><a data-toggle="tab" href="#tab2">Buyer's Accounts</a></li>
                             <li><a data-toggle="tab" href="#tab3">Sales Consultant's Accounts</a></li>
                              
                         </ul>


                         <div class="tab-content">

                             <%-- Tab 1 starts here--%>
                         <div id="tab1" class="tab-pane fade in active">    

                             <br />

                      <span style="color:skyblue; font-size:16px;"><b><u>Non Accessories</u></b></span>
                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblmnth_installment" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Free Monthly Installment</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                     <asp:dropdownlist id="ddlfree_installment" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                     </asp:dropdownlist> 
                             </div> 
                             <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lbl_amount" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Amount</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txt_amount" class="form-control" runat="server" placeholder="Ex:50000.00"></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd11" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div>  
                      </div>

                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblinspremium1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Insurance Premium</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtins_premium1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd12" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div> 
                         </div>

                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblroad_tax" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Additional Road Tax</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgyes1" runat="server" ImageUrl="../Resources/images/B_Yes.png" Height="30px" />
                             </div>
                         </div>

                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblpromofree" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Promotion(Free Items)</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                     <asp:dropdownlist id="ddlpromo_free" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                     </asp:dropdownlist> 
                             </div> 
                             <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblnaprice1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Price</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtna_price1" class="form-control" runat="server" placeholder="Ex:SGD"></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd13" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div>  
                        </div>

                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblpromotion1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Promotion</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txtpromotion1" class="form-control" runat="server" placeholder=""></asp:TextBox>

                             </div> 
                             <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblnaprice11" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Price</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtna_price11" class="form-control" runat="server" placeholder="Ex:SGD"></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd14" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div>  
                        </div>

                        <br />

                          <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbladminfee1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Admin Fee For Overtrade</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtadmin_fee1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd15" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div> 
                         </div>

                        <br />

                <div class="row equal">
                  
                   <div class="col-xs-6 col-sm-3" ></div>
                  <div class="col-xs-6 col-sm-9"  >
                     
                   <asp:GridView ID="Gridview_komoco1" runat="server" style="overflow:auto" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true"  >
                      <Columns>
                                        <asp:CommandField ShowDeleteButton="true" />
                                      <asp:BoundField HeaderText="Item" DataField="Item" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Price ($)" DataField="Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                     
                                    
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
                        <span style="color:skyblue; font-size:16px;"><b><u>Accessories</u></b></span>

                        <br />
                       

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblaccessory1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Accessory</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                     <asp:dropdownlist id="ddlaccessory1" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                     </asp:dropdownlist> 
                             </div> 
                             <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblaprice1" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Price</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txta_price1" class="form-control" runat="server" placeholder="Ex:SGD"></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd16" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div>  
                        </div>

                        <br />

                         <div class="row equal">
                  
                   <div class="col-xs-6 col-sm-3" ></div>
                  <div class="col-xs-6 col-sm-9"  >
                     
                   <asp:GridView ID="Gridview_komoco2" runat="server" style="overflow:auto" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true"  >
                      <Columns>
                                        <asp:CommandField ShowDeleteButton="true" />
                                      <asp:BoundField HeaderText="Item" DataField="Item" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Price ($)" DataField="Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                     
                                    
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

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-5">
                                 <asp:Label ID="Label2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Total Amount in Komoco Account :</asp:Label>
                               <asp:Label ID="lblkomoco_amount" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                                  </div>
                            
                         </div>

                       

                        </div>

                        
                        <br />
                  <%--       <span style="color:brown; font-size:18px;"><b>Buyer's Accounts</b></span>

                         <br />
                        <br />   --%>

                             <%-- Tab 2 starts here--%>
                       <div id="tab2" class="tab-pane fade ">

                       <span style="color:skyblue; font-size:16px;"><b><u>Non Accessories</u></b></span>
                         <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblinspremium2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Insurance Premium</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtins_premium2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd21" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div> 
                         </div>

                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblroad_tax2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Additional Road Tax</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgyes2" runat="server" ImageUrl="../Resources/images/B_Yes.png" Height="30px" />
                             </div>
                         </div>

                        <br />

                        <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblfirst_installment" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">First Installment</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgyes3" runat="server" ImageUrl="../Resources/images/B_Yes.png" Height="30px" />
                             </div>
                         </div>

                        <br />

                        <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblpromotion2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Promotion</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txtpromotion2" class="form-control" runat="server" placeholder=""></asp:TextBox>

                             </div> 
                             <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblna_price2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Price</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtna_price2" class="form-control" runat="server" placeholder="Ex:SGD"></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd22" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div>  
                        </div>

                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbladmin_fee2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Admin Fee For Overtrade</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtadmin_fee2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd23" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div> 
                         </div>
                        <br />

                          <div class="row equal">
                  
                   <div class="col-xs-6 col-sm-3" ></div>
                  <div class="col-xs-6 col-sm-8"  >
                     
                   <asp:GridView ID="Gridview_buyer1" runat="server" style="overflow:auto" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true"  >
                      <Columns>
                                        <asp:CommandField ShowDeleteButton="true" />
                                      <asp:BoundField HeaderText="Item" DataField="Item" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Price ($)" DataField="Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                     
                                    
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

                          <span style="color:skyblue; font-size:16px;"><b><u>Accessories</u></b></span>

                        <br />
                      

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblaccessory2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Accessory</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                     <asp:dropdownlist id="ddlaccessory2" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                     </asp:dropdownlist> 
                             </div> 
                             <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblaprice2" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Price</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txta_price2" class="form-control" runat="server" placeholder="Ex:SGD"></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd24" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div>  
                        </div>
                       
                             
                    
                 
                        <br />

                         <div class="row equal">
                  
                   <div class="col-xs-6 col-sm-3" ></div>
                  <div class="col-xs-6 col-sm-8"  >
                     
                   <asp:GridView ID="Gridview_buyer2" runat="server" style="overflow:auto" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true"  >
                      <Columns>
                                        <asp:CommandField ShowDeleteButton="true" />
                                      <asp:BoundField HeaderText="Item" DataField="Item" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Price ($)" DataField="Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                     
                                    
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
                          <div class="row equal">
                             <div class="col-xs-6 col-sm-5">
                                 <asp:Label ID="Label3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Total Amount in Buyer's Account :</asp:Label>
                                <asp:Label ID="lblbuyer_amount" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                             </div>
                          
                         </div>

                        <br />
                          </div>
                        
                        
                       

                    <%--      <span style="color:brown; font-size:18px;"><b>Sales Consultant's Accounts</b></span>

                         <br />
                        <br />   --%>

                                                <%-- Tab 3 starts here--%>
                        <div id="tab3" class="tab-pane fade ">
                       <span style="color:skyblue; font-size:16px;"><b><u>Non Accessories</u></b></span>
                         <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblins_premium3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Insurance Premium</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtins_premium3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd31" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div> 
                         </div>

                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblroad_tax3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Additional Road Tax</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgyes4" runat="server" ImageUrl="../Resources/images/B_Yes.png" Height="30px" />
                             </div>
                         </div>

                        <br />

                       
                        <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblpromotion3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Promotion</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txtpromotion3" class="form-control" runat="server" placeholder=""></asp:TextBox>

                             </div> 
                             <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblna_price3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Price</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtna_price3" class="form-control" runat="server" placeholder="Ex:SGD"></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd32" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div>  
                        </div>

                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbladmin" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Admin Fee For Overtrade</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="TextBox4" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd33" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div> 
                         </div>
                        <br />

                    <div class="row equal">
                  
                   <div class="col-xs-6 col-sm-3" ></div>
                  <div class="col-xs-6 col-sm-8"  >
                     
                   <asp:GridView ID="Gridview_sales1" runat="server" style="overflow:auto" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true"  >
                      <Columns>
                                        <asp:CommandField ShowDeleteButton="true" />
                                      <asp:BoundField HeaderText="Item" DataField="Item" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Price ($)" DataField="Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                     
                                    
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

                          <span style="color:skyblue; font-size:16px;"><b><u>Accessories</u></b></span>

                        <br />
                      

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblaccessory3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Accessory</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                                     <asp:dropdownlist id="ddlaccessory3" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                                     </asp:dropdownlist> 
                             </div> 
                             <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lbla_price3" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Price</asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txta_price3" class="form-control" runat="server" placeholder="Ex:SGD"></asp:TextBox>
                            </div> 
                             <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgadd34" runat="server" ImageUrl="../Resources/images/B_Add.png" Height="30px" />
                             </div>  
                        </div>

                        <br />
                           
                <div class="row equal">
                  
                   <div class="col-xs-6 col-sm-3" ></div>
                  <div class="col-xs-6 col-sm-8"  >
                     
                   <asp:GridView ID="Gridview_sales2" runat="server" style="overflow:auto" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true"  >
                      <Columns>
                                        <asp:CommandField ShowDeleteButton="true" />
                                      <asp:BoundField HeaderText="Item" DataField="Item" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Price ($)" DataField="Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                     
                                    
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
                          <div class="row equal">
                             <div class="col-xs-6 col-sm-5">
                                 <asp:Label ID="Label12" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Total Amount in Sales Consultant's Account :</asp:Label>
                                <asp:Label ID="lblconsultant_amount" runat="server" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                                  </div>
                             
                         </div>

                       

                         </div> 
                            

                       
                           <br />

                         <div class="row equal">
                              <div class="col-xs-6 col-sm-3"></div>
                              <div class="col-xs-6 col-sm-8">
                                   <asp:ImageButton ID="imgcancel_cont" runat="server" ImageUrl="../Resources/aimages/Cancel_Contract.png" Height="40px" />
                                   <asp:ImageButton ID="imgsupercede" runat="server" ImageUrl="../Resources/aimages/Supercede_Contract.png" Height="40px" Style="margin-left:10px" />
                                   <asp:ImageButton ID="imgudate_cont" runat="server" ImageUrl="../Resources/aimages/Update_Contract.png" Height="40px" Style="margin-left:10px" />
                                   <asp:ImageButton ID="imggenerate" runat="server" ImageUrl="../Resources/aimages/Generate_Contract.png" Height="40px" Style="margin-left:10px" />
                                  
                              </div>  
                         </div>

                        <br />

                         <div class="row equal">
                             <div class="col-xs-6 col-sm-3"></div>
                              <div class="col-xs-6 col-sm-8">
                                   <asp:ImageButton ID="imgbuyer_order" runat="server" ImageUrl="../Resources/aimages/Print_Buyer_Order.png" Height="40px" />
                                   <asp:ImageButton ID="imgthank_letter" runat="server" ImageUrl="../Resources/aimages/Thank_You_Letter.png" Height="40px" Style="margin-left:10px" />
                                   <asp:ImageButton ID="imgprint" runat="server" ImageUrl="../Resources/images/B_Print.png" Height="40px" Style="margin-left:10px" />
                                   <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px" Style="margin-left:10px" />

                              </div>  
                         </div>
                        <br />

                        <br />

                        </div>

                    </div>
                 </div>
            </div>
        </div>
        </div>
</asp:Content>
