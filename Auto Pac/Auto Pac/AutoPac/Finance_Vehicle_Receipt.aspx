<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Finance_Vehicle_Receipt.aspx.cs" Inherits="Auto_Pac.AutoPac.Finance_Vehicle_Receipt" %>
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
    <script type="text/javascript">
		    $(document).ready(function () {
		        $('#<%=Txt_ReceiptDate.ClientID%>').bootstrapMaterialDatePicker
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
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>
            <%--<span style="color:brown; font-size:18px; margin-left:25px;"><b>Finance Vehicle Receipt</b></span>--%>
            <br /><br />
            <div style="padding-left:20px;">
            <span style="color:brown; font-size:18px; "><b>Search</b></span>
            <br /><br />
            
                <div class="row equal">
                    <div class="col-xs-6 col-lg-2">
                        <asp:Label ID="Lbl_FinanceCompany" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Finance Company :</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-3">
                         <asp:dropdownlist id="ddl_FinanceCompany" class="form-control" runat="server"><asp:ListItem>Please Select</asp:ListItem></asp:dropdownlist>
                    </div>
                 </div>
                <br />
                <div class="row equal">
                    <div class="col-xsl-6 col-lg-2">
                        <asp:Label ID="Lbl_InvoiceNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Invoice Number</asp:Label>
                    </div>
                     <div class="col-xs-6 col-lg-2">
                        <asp:TextBox ID="Txt_InvoiceNumber" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>
                    <div class="col-xs-2 col-sm-2">
                         <asp:ImageButton ID="ImageCalendr" runat="server" ImageUrl="../Resources/images/Search_Icon.png" />&nbsp;&nbsp;&nbsp;
                         <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="../Resources/aimages/B_Delete.png" />
                     </div>                  
                    <div class="col-xsl-6 col-lg-2">
                        <asp:Label ID="Lbl_ContractNumb" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Contract Number</asp:Label>
                    </div>
                     <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt__ContractNumb" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>
                     <div class="col-xs-6 col-sm-1">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Resources/images/Search_Icon.png" />
                     </div>
                </div>
                <br />
                <div class="row equal">
                     <div class="col-xsl-6 col-lg-2">
                        <asp:Label ID="Lbl_RegNum" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Registration Number</asp:Label>
                     </div>
                     <div class="col-xs-6 col-lg-2">
                        <asp:TextBox ID="Txt_RegNum" class="form-control" runat="server" placeholder=""></asp:TextBox>
                     </div>
                     <div class="col-xs-6 col-sm-2">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../Resources/images/Search_Icon.png" />
                     </div>                
                     <div class="col-xsl-6 col-lg-2">
                        <asp:Label ID="Lbl_BuyerName" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Buyer Name</asp:Label>
                     </div>
                     <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_BuyerName" class="form-control" runat="server" placeholder=""></asp:TextBox>
                     </div>
                     <div class="col-xs-6 col-sm-1">
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../Resources/images/Search_Icon.png" />
                     </div>
                 </div>
                <br />
                <div class="row equal">
                    <div class="col-xsl-6 col-lg-2">
                        <asp:Label ID="Lbl_ReceiptNum" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Receipt Number</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-2">
                        <asp:TextBox ID="Txt_ReceiptNum" class="form-control" runat="server" placeholder=""></asp:TextBox>
                    </div>                      
                    <div class="col-xs-6 col-sm-2">
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="../Resources/images/B_Print.png" Height="30px"  />
                    </div>
                </div>
                <br />      
                
                <span style="color:brown; font-size:18px;"><b>Details</b></span>
                <br /><br />          
                <div class="row equal">
                     
                     <br /><br />
                    <div class="col-xsl-6 col-lg-3">
                        <asp:Label ID="Lbl_RFRN" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Previous Finance Receipt Number</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_RFRN" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                    </div>                       
                    <div class="col-xsl-6 col-lg-2">
                        <asp:Label ID="Lbl_ReceiptDate" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Receipt Date</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_ReceiptDate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-1">
                        <asp:ImageButton ID="Image_Calendr" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                     </div>
                </div>
                <br />
                <div class="row equal">
                    <div class="col-xsl-6 col-lg-3">
                        <asp:Label ID="Lvl_Amountreceivedfromfinance" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Amount received from finance</asp:Label>
                    </div>
                     <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt__Amountreceivedfromfinance" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                    </div>          
               
                    <div class="col-xsl-6 col-lg-2">
                        <asp:Label ID="Lbl_Words" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Words</asp:Label>
                    </div>
                     <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_Words" class="form-control" runat="server" placeholder="" Enabled="false" TextMode="MultiLine" style="width:100%;height:34px;"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row equal">
                    <div class="col-xsl-6 col-lg-3">
                        <asp:Label ID="Lbl_PaymentMode" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Payment Mode</asp:Label>
                    </div>
                     <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_PaymentMode" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                    </div>
                
                    <div class="col-xsl-6 col-lg-2">
                        <asp:Label ID="Lbl_ChequeNumber" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Cheque Number</asp:Label>
                    </div>
                     <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_ChequeNumber" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                    </div>
                 </div>
                <br />
                <div class="row equal">
                    <div class="col-xsl-6 col-lg-3">
                        <asp:Label ID="Lbl_TotalLoanAmountPayable" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Total Loan Amount Payable</asp:Label>
                    </div>
                     <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_TotalLoanAmountPayable" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                    </div>
                
                    <div class="col-xsl-6 col-lg-2">
                        <asp:Label ID="Lbl_Balance" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Balance</asp:Label>
                    </div>
                     <div class="col-xs-6 col-lg-3">
                        <asp:TextBox ID="Txt_Balance" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:TextBox>
                    </div>
                 </div>
                <br />
                <div class="row">
                     <div class="col-xsl-6 col-lg-3">
                         </div>
                     <div class="col-xsl-6 col-lg-4">                         
                   <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="../Resources/aimages/B_PFR.png" Height="35px" />
                   <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px"  Style="margin-left:8px;" />                    
                </div>
                     </div>
                <br />      
             <span style="color:brown; font-size:18px; "><b>Listing Of All Unpaid Invoices</b></span>        
                <br />
                <br />
                 
                <div class="row">
                     <br /><br />
                    <div class="col-xsl-6 col-lg-1">
                        </div>
                    <div class="col-xsl-6 col-lg-10">
                <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None"
                       Font-Size="Small" PageSize="50"
                        HorizontalAlign="Center" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                           </asp:TemplateField>
                                <asp:BoundField HeaderText="Contract No." DataField="Contract No." HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                <asp:BoundField HeaderText="Invoice No." DataField="Invoice No." ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                <asp:BoundField HeaderText="Register No." DataField="Register No." ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                <asp:BoundField HeaderText="Customer Name" DataField="Customer Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                <asp:BoundField HeaderText="Invoice Amt." DataField="Invoice Amt." ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                <asp:BoundField HeaderText="Loan Amt." DataField="Loan Amt." ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="140px" />                                
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
