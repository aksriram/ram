<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Customer_Search.aspx.cs" Inherits="Auto_Pac.Sales.Customer_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Resources/js/bootstrap-material-datetimepicker.js"></script>
    <link href="../Resources/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />

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
     <script>
		    (function (i, s, o, g, r, a, m) {
		        i['GoogleAnalyticsObject'] = r;
		        i[r] = i[r] || function () {
		            (i[r].q = i[r].q || []).push(arguments)
		        }, i[r].l = 1 * new Date();
		        a = s.createElement(o),
					m = s.getElementsByTagName(o)[0];
		        a.async = 1;
		        a.src = g;
		        m.parentNode.insertBefore(a, m)
		    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

		    ga('create', 'UA-60343429-1', 'auto');
		    ga('send', 'pageview');
		</script>
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('#<%=txtdob.ClientID%>').bootstrapMaterialDatePicker
             ({
			    time: false,
			    clearButton: true
             });
		        $('#<%=txtregdate.ClientID%>').bootstrapMaterialDatePicker
            ({
                time: false,
                clearButton: true
            });

      
		    $('#date').bootstrapMaterialDatePicker
			({
			    time: false,
			    clearButton: true
			});

		    $('#time').bootstrapMaterialDatePicker
			({
			    date: false,
			    shortTime: false,
			    format: 'HH:mm'
			});

		
			$('#date_format').bootstrapMaterialDatePicker
			({
			    format: 'dddd DD MMMM YYYY - HH:mm'
			});
			$('#date-fr').bootstrapMaterialDatePicker
			({
			    format: 'DD/MM/YYYY HH:mm',
			    lang: 'fr',
			    weekStart: 1,
			    cancelText: 'ANNULER',
			    nowButton: true,
			    switchOnClick: true
			});

			$('#date-end').bootstrapMaterialDatePicker
			({
			    weekStart: 0, format: 'DD/MM/YYYY HH:mm'
			});
			$('#date-start').bootstrapMaterialDatePicker
			({
			    weekStart: 0, format: 'DD/MM/YYYY HH:mm', shortTime: true
			}).on('change', function (e, date) {
			    $('#date-end').bootstrapMaterialDatePicker('setMinDate', date);
			});

			$('#min-date').bootstrapMaterialDatePicker({ format: 'DD/MM/YYYY HH:mm', minDate: new Date() });

			$.material.init()
		});
		</script>
       <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">

            
    <div class="main">
             <asp:Label ID="lblpagetitle" runat="server" Text=""></asp:Label>
                 <%--<span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Test Drive</b></span>--%>
         <br />
        <div style="padding-left:20px;">

           <%--  <span style="color:brown; font-size:18px; "><b>Buyer's Details</b></span>--%>

            <br />
            <br />

                         <div class="row equal">
                                
                              <div class="col-xs-6 col-sm-3">

                              <asp:Label ID="lbltitle" runat="server"  Font-Size="18px" Text="Title" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                              <div class="col-xs-6 col-sm-3">
                              <asp:DropDownList ID="ddltitle" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                             <asp:ListItem>MR</asp:ListItem>       
                                            <asp:ListItem>MRS</asp:ListItem>
                                            <asp:ListItem>MISS</asp:ListItem>
                                            <asp:ListItem>M/S</asp:ListItem>
                                            <asp:ListItem>MDM</asp:ListItem>
                                            <asp:ListItem>DR</asp:ListItem>
                                            <asp:ListItem>MS</asp:ListItem> 
                                                </asp:DropDownList>
                    </div>

                            
                                <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblnricname" runat="server" Font-Size="18px" Text="Name as in NRIC/Passport" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtnric_name" class="form-control" runat="server" placeholder=""></asp:TextBox>

                                </div>
                              <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgnric_name" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>

                            </div>

            <br />

            <div class="row equal">

                <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblnricnum" runat="server" Font-Size="18px" Text="NRIC No/RCB No/Passport No " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtnricnum" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgnric_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
           
               

                               <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblblock" runat="server" Font-Size="18px" Text="Block" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                 <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtblock" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
            </div>

            <br />

            <div class="row equal">

                               <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblroad" runat="server" Font-Size="18px" Text="Road" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                 <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtroad" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              

                              <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lblunit" runat="server" Font-Size="18px" Text="Unit" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                 <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtunit" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
            </div>

            <br />

             <div class="row equal">
                                <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblpostcode" runat="server" Font-Size="18px" Text="Postal Code" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtpost_code" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgpost_code" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                </div>
                                <div class="col-xs-6 col-sm-3">
                                 <asp:Label ID="lbldob" runat="server" Font-Size="18px" Text="Date of Birth" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                 <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtdob" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                                </div>
                  <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />

                                </div>
            </div>

            <br />

                           <div class="row equal">
                                <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblmobnum" runat="server" Font-Size="18px" Text="Mobile Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtmob_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                             
                                 <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblhomenum" runat="server" Font-Size="18px" Text="Home Tel Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txthome_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                           </div>

            <br />

                         <div class="row equal">
                               <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbloffcnum" runat="server" Font-Size="18px" Text="Office Tel Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtoffc_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                              

                                 <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lbloccupation" runat="server" Font-Size="18px" Text="Occupation" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtoccupation" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                             </div>

            <br />

                        <div class="row equal">
                               <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblemail" runat="server" Font-Size="18px" Text="Email" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                             
                                 <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblmodel" runat="server" Font-Size="18px" Text="Model" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtmodel" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                             </div>

            <br />

                         <div class="row equal">
                               <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblregnum" runat="server" Font-Size="18px" Text="Car Registration Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtregnum" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                                <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgreg_num" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />
                                </div>

                                 <div class="col-xs-6 col-sm-3">
                                    <asp:Label ID="lblregdate" runat="server" Font-Size="18px" Text="Car Registration Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtregdate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                                </div>
                              <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />

                                </div>
                             </div>

            <br />

                         <div class="row equal">

                                <div class="col-xs-6 col-sm-3"></div>
                               <div class="col-xs-6 col-sm-2">
                                   <asp:ImageButton ID="img_update" runat="server" ImageUrl="../Resources/images/B_Update.png"  />
                                </div>
                             </div>

            <br />

                    <span style="color:brown; font-size:18px; "><b>Buyer's Detail Based on Model</b></span>

            <br />
            <br />

                  <div class="row equal">
                                
                              <div class="col-xs-6 col-sm-3">

                              <asp:Label ID="lblmodel1" runat="server"  Font-Size="18px" Text="Model" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                              </div>
                              <div class="col-xs-6 col-sm-3">
                              <asp:DropDownList ID="ddlmodel" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                             <asp:ListItem>AVANTE 1.6 4DR A</asp:ListItem>       
                                             
                                                </asp:DropDownList>
                              </div>
                              <div class="col-xs-6 col-sm-2">
                                   <asp:ImageButton ID="imgdownload" runat="server" ImageUrl="../Resources/images/Download_Customer_List.png"  />
                              </div>
                      </div>
                 
            <br />

             <span style="color:brown; font-size:18px; "><b>Buyer's List</b></span>

            <br />
            <br />

               <div class="row">
                   <div class="col-xs-6 col-sm-3"></div>
                  <div class="col-xs-6 col-sm-8">
                   <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Name as in NRIC/Passport" DataField="Name_in_nric" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="230px" />
                                      <asp:BoundField HeaderText="NRIC No/RCB No/Passport No" DataField="NRIC_num" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="230px" />
                                      <asp:BoundField HeaderText="Register Number" DataField="Register_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                       <asp:BoundField HeaderText="Model" DataField="Model" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="250px" />
                                         
                                         
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
           </div>
</asp:Content>
