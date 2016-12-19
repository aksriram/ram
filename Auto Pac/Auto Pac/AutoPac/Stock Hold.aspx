<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Stock Hold.aspx.cs" Inherits="Auto_Pac.AutoPac.Stock_Hold" %>
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
    $(function () {
        $("#<%=HyperLink_CheckAll.ClientID%>").click(function() {
    var $checkboxes = $('input[type=checkbox]','#<%= Stock_Hold_GridView.ClientID %>');
        $checkboxes.prop('checked', true);        
    });
    });
</script>
    <script type="text/javascript">
    $(function () {
        $("#<%=HyperLink_UncheckAll.ClientID%>").click(function() {
    var $checkboxes = $('input[type=checkbox]','#<%= Stock_Hold_GridView.ClientID %>');
        $checkboxes.prop('checked', false);        
    });
    });
</script>
     

		<script type="text/javascript">
		    $(document).ready(function () {
		        $('#<%=Txt_HoldDate.ClientID%>').bootstrapMaterialDatePicker
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
          <%-- <span style="color:brown; font-size:18px; margin-left:25px;"><b>Stock Hold/Release</b></span>--%>
            <br /><br />
            <div style="padding-left:20px;">
               
                <div class="row equal">
                    <div class="col-xs-6 col-sm-2"></div>
                 <div class="col-xs-6 col-sm-3">
                <asp:RadioButton ID="singleh" runat="server" AutoPostBack="true" GroupName="hold" Text="&nbsp;Single Hold/Release" OnCheckedChanged="singleh_CheckedChanged" />
                </div>
                 <div class="col-xs-6 col-sm-3">
                 <asp:RadioButton ID="batchh" runat="server" AutoPostBack="true" GroupName="hold" Text="&nbsp;Batch Hold/Release" OnCheckedChanged="batchh_CheckedChanged"/>
                </div>
                 </div>

                <div id="single" runat="server" >
            <span style="color:brown; font-size:18px;"><b>Single Hold/Release</b></span>
            <br /><br />
             
                 <div class="row equal">                     
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="lblVIN_Number" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">VIN Number</asp:label>
                     </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="txtVIN_Number" class="form-control" runat="server" placeholder=""></asp:textbox>                        
                     </div>
                     <div class="col-xs-6 col-sm-1">
                         <asp:ImageButton ID="ImageSearch" runat="server" ImageUrl="../Resources/images/Search_Icon.png" OnClick="ImageSearch_Click" /> 
                     </div>
                  </div>
                <br />
                 <div class="row equal">
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="lblEngine_Number" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Engine Number</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="txtEngine_Number" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:textbox>
                     </div>    
                     <div class="col-xs-6 col-sm-1">
                            </div>                                    
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="LblChasis_Number" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Chasis Number</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_ChasisNumber" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:textbox>
                     </div>                        
                  </div>
                <br />
                  <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="LblModel" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="TxtModel" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:textbox>
                    </div>                        
                    <div class="col-xs-6 col-sm-1">
                            </div> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="LblColour" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Colour</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="TxtColour" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:textbox>
                    </div>                        
                 </div>
                <br />
                 <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_DutyPaid" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Duty Paid</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_DutyPaid" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:textbox>
                    </div>                        
                   <div class="col-xs-6 col-sm-1">
                            </div> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_StockStatus" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Stock Status</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddl_StockStatus" class="form-control" runat="server"><asp:ListItem>Please Select</asp:ListItem>
                             <asp:ListItem>H</asp:ListItem>
                             <asp:ListItem>R</asp:ListItem>
                             <asp:ListItem>K</asp:ListItem>
                         </asp:dropdownlist>
                    </div>                        
                 </div>
                <br />
                 <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_HoldDate" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Hold Date</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_HoldDate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
                    </div>                        
                     <div class="col-xs-6 col-sm-1">
                         <asp:ImageButton ID="ImageCalendr" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                     </div>
                    
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_SalesConsultant" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Sales Consultant</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                          <asp:dropdownlist id="ddl_SalesConsultant" class="form-control" runat="server"><asp:ListItem>Please Select</asp:ListItem>                             
                             <asp:ListItem>AAR</asp:ListItem>
                              <asp:ListItem>ACC</asp:ListItem>
                              <asp:ListItem>ADH</asp:ListItem>
                              <asp:ListItem>ADL</asp:ListItem>
                              <asp:ListItem>ADM</asp:ListItem>
                              <asp:ListItem>AGE</asp:ListItem>
                          </asp:dropdownlist>
                    </div>                        
                 </div>
                <br />
                  <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_BuyersName" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Buyer's Name</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_BuyersName" class="form-control" runat="server" placeholder="" ></asp:textbox>
                    </div>                        
                     <div class="col-xs-6 col-sm-1">
                            </div> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_BuyersNRIC" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Buyer's NRIC</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_BuyersNRIC" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:textbox>
                    </div>                        
                 </div>
                <br />
                 <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_ContractNum" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Contract Number</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_ContractNum" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:textbox>
                    </div>                        
                     <div class="col-xs-6 col-sm-1">
                            </div> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_BuyersOrderNum" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Buyer's Order Number</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_BuyersOrderNum" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:textbox>
                    </div>                        
                 </div>
                <br />
                <div class="row">
                    <div class="col-xs-6 col-sm-2">
                        </div>
                   <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Style="margin-left:16px;" OnClick="ImageUpdate_Click"/>
                   <asp:ImageButton ID="ImagePrint" runat="server" ImageUrl="../Resources/images/B_Print.png" Style="margin-left:8px;"/>           
                   <asp:ImageButton ID="ImageClear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Style="margin-left:8px;" OnClick="ImageClear_Click"/>           
               </div>
                    </div>
                 <br /><br />
                <div id="batch" runat="server" >
                <span style="color:brown; font-size:18px; "><b>Batch Hold/Release</b></span>
                 <br /><br />
                 <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_Model" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                          <asp:dropdownlist id="ddlModel" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlModel_SelectedIndexChanged">
                              
                         
                          </asp:dropdownlist>

                    </div>                        
                      <div class="col-xs-6 col-sm-1">
                      </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_Colour" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Colour</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                          <asp:dropdownlist id="ddlColour" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlColour_SelectedIndexChanged">
                              
                               
                              
                          </asp:dropdownlist>
                    </div>                        
                 </div>
                <br />
                 <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="LblStock_Status" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Stock Status</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlStock_Status" class="form-control" runat="server"><asp:ListItem>Please Select</asp:ListItem>
                             <asp:ListItem>H</asp:ListItem>
                             <asp:ListItem>R</asp:ListItem>
                             <asp:ListItem>K</asp:ListItem>
                         </asp:dropdownlist>
                    </div>                        
                 </div>
                <br />
                <div class="row">
                    <div class="col-xs-6 col-sm-2">
                      </div>
                   <asp:ImageButton ID="ImageUpdate1" runat="server" ImageUrl="../Resources/images/B_Update.png" Style="margin-left:16px;" OnClick="ImageUpdate1_Click" />                             
                </div>
                 <br /><br />
                  <div class="row equal">                      
                         <div class="col-xs-6 col-sm-2">
                      </div>
                        <div class="col-xs-6 col-sm-8">
                          <asp:GridView ID="Stock_Hold_GridView" runat="server" HeaderStyle-BackColor="#3AC0F2"
                              HeaderStyle-ForeColor="White" AutoGenerateColumns="false" >
                            <Columns>                               
                                <asp:BoundField HeaderText="VIN Number" DataField="case_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                <asp:BoundField HeaderText="Buyer's Name" DataField="customer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                <asp:BoundField HeaderText="ETA Date" DataField="eta_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                <asp:BoundField HeaderText="Hold Date" DataField="hold_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />                                             
                                <asp:BoundField HeaderText="Stock Status" DataField="stock_status" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />                                                                            
                              <asp:TemplateField>                                  
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkRow" runat="server" />
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
                 <br />
                  <div class="row equal" >
                     <div class="col-xs-6 col-lg-2">
                     </div>
                         <asp:HyperLink ID="HyperLink_CheckAll" runat="server" Style="margin-left:15px;"><u>Check All</u></asp:HyperLink> &nbsp;&nbsp;
                         <asp:HyperLink ID="HyperLink_UncheckAll" runat="server"><u>Uncheck All</u></asp:HyperLink>
                  </div>
                 <br />
             </div>
                </div>
         </div>
      </div>
</asp:Content>
