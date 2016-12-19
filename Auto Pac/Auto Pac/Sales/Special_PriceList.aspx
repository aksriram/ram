<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Special_PriceList.aspx.cs" Inherits="Auto_Pac.Sales.Special_PriceList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     <style type="text/css">

        .main{
             box-shadow:5px 0 30px -5px #333, 5px 0 0 -5px #333;
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
     <script src="../Resources/js/bootstrap-material-datetimepicker.js"></script>
    <link href="../Resources/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />

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
		        $('#<%=txt_date.ClientID%>').bootstrapMaterialDatePicker
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
    <%-- <script src="http://code.jquery.com/jquery-1.8.2.js" type="text/javascript"></script>--%>
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
              <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
         
         <br />
             <br />
              <div style="padding-left:20px;">
                   <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                 <asp:label id="lbldesc" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Short Description</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txtdesc" class="form-control" runat="server" placeholder="EX: ELANTRA 1.6 4DR A"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:label id="lblgroup" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Group</asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_group" class="form-control" runat="server" placeholder="EX: ELANTRA"></asp:textbox>
            </div>
                       </div>
                 <br />
                   <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Eng.Cap</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_cap" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:label id="Label2" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Lucky Draw</asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_draw" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                       </div>
                  <br />
                   <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label3" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Diplomat</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_diplomat" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:label id="Label4" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">US Army</asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_army" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                       </div>
                  <br />
                    <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label5" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Handicap</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_handicap" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:label id="Label6" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Handicap(Starex Minibus-P plate)</asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_hcap" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                       </div>
                  <br />
                     <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label7" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Own COE</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_coe" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:label id="Label8" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Effective Date</asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-2">
                    <asp:textbox id="txt_date" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                           <div class="col-xs-6 col-sm-1">
                                <asp:ImageButton ID="Imagecal" runat="server" ImageUrl="~/Resources/images/B_Calendr.png"/> 
                               </div>
                       </div>
                  <br />
                  <div class="row equal">
                       <div class="col-xs-6 col-sm-3">
                           </div>
                       <asp:ImageButton ID="Img_add" runat="server" ImageUrl="~/Resources/images/B_Add.png"/> 
                       <asp:ImageButton ID="Img_update" runat="server" ImageUrl="~/Resources/images/B_Update.png" style="margin-left:8px;"/> 
                       <asp:ImageButton ID="Img_delete" runat="server" ImageUrl="~/Resources/images/B_Delete.png" style="margin-left:8px;"/> 
                       <asp:ImageButton ID="Img_clear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" style="margin-left:8px;"/> 
                      </div>
                  <br />
                    <div class="row equal">
                        <span style="color:brown; font-size:18px; margin-left:10px;"><b>Special Prices</b></span>
                  <br />
                  <br />
                           <div class="col-xs-6 col-sm-12">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                       Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" AutoGenerateSelectButton="true">
                                               <Columns>
                                             <asp:BoundField HeaderText="Model Short Description" DataField="Description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                             <asp:BoundField HeaderText="Model Group" DataField="Group" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Eng.Cap" DataField="Eng.Cap" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Effective Date" DataField="Date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Lucky Draw" DataField="Draw" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Diplomat" DataField="Diplomat" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="US Army" DataField="Army" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Handicap" DataField="Handicap" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="P Plate" DataField="P Plate" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="S Plate" DataField="S Plate" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                             <asp:BoundField HeaderText="Own COE" DataField="Own COE" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
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
                        <span style="color:brown; font-size:18px; margin-left:25px;"><b>Model List</b></span>
                  <br />
                  <br />
                             <div class="col-xs-6 col-sm-3">
                                 </div>
                                <div class="col-xs-6 col-sm-8">
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                       Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" AutoGenerateSelectButton="true">
                                               <Columns>
                                             <asp:BoundField HeaderText="Model Short Description" DataField="Descr" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                             <asp:BoundField HeaderText="Model Group" DataField="Grp" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Model Long Description" DataField="long" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                             <asp:BoundField HeaderText="Model Code" DataField="code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             
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
                        <div class="row equal" >
                                 <div class="col-xs-6 col-sm-2">
                                     </div>
                            <div class="col-xs-6 col-sm-3">
                              <asp:Image ID="ImgPrv1" Height="100px" Width="200px" runat="server" /><br />
                               <input type="file" name="filUpload" id="filUpload" runat="server" onchange="ShowImagePreview1(this)" />
                                <br />

                                 <asp:Button ID="btnupload" runat="server" Text="Upload" />
                                </div>
                          
                               <div class="col-xs-6 col-sm-6">
                                 <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                       Font-Size="Small" PageSize="50" HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                                               <Columns>
                                             <asp:BoundField HeaderText="File Name" DataField="name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                                    <asp:TemplateField>
                                                  <ItemTemplate>
                                                 <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" Width="130px"></asp:LinkButton>
                                                   
                                             </ItemTemplate>
                                           </asp:TemplateField>
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
                        <div>
                  </div>
                 </div>
               </div>
             </div>
         </div>
</asp:Content>
