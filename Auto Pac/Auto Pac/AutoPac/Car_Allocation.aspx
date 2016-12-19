<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Car_Allocation.aspx.cs" Inherits="Auto_Pac.AutoPac.Car_Allocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../tabs.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.7.custom.min.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
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
    <script type="text/javascript">
		    $(document).ready(function () {
		        $('#<%=txt_COE.ClientID%>').bootstrapMaterialDatePicker
             ({
			    time: false,
			    clearButton: true
             });
		        $('#<%=txt_cdate.ClientID%>').bootstrapMaterialDatePicker
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
      <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
       <div class="main">
          <br />
     
        <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>
             
         <br />
        <br />
        <div style="padding-left:20px;">
                
         
		
		
		
    		     <ul class="nav nav-tabs">
                     <li class="active"><a data-toggle="tab" href="#tab1"><b>Single Allocation</b></a></li>
                     <li><a data-toggle="tab" href="#tab2"><b>Allocate All</b></a></li>
                            
                              
                 </ul>
            <div class="tab-content">

                  <div id="tab1" class="tab-pane fade in active">
                         <div class="row equal">
                      <%-- <span style="color:brown; font-size:18px; margin-left:0px;"><b>Search Available Vehicles</b></span>--%>
                  <br />
                  <br />
                             <br />

                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblmodel" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Model</asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                         <asp:DropDownList ID="ddlmodel" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlmodel_SelectedIndexChanged">
                             
                             </asp:DropDownList>
                     </div>
                               <div class="col-xs-6 col-sm-1">
                                   </div>
                    <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblcolor" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Colour</asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-3">
                              <asp:DropDownList ID="ddlcolor" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlcolor_SelectedIndexChanged">
                              
                             </asp:DropDownList>
                     </div>
                   </div>
                      <br />
                      <br />
                       <div class="row equal">
                             <div class="col-xs-6 col-sm-2">
                                 </div>
                             <div class="col-xs-6 col-sm-8">
                               
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" Font-Size="Small" PageSize="50" 
                             HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                       <Columns>
                                             <asp:BoundField HeaderText="VIN Number" DataField="case_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Model" DataField="model_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Colour" DataField="colour_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="ETA Date" DataField="eta_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Contract Number" DataField="contract_num" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
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
                <span style="color:brown; font-size:18px; margin-left:0px;"><b>Details Of Vehicle</b></span>
                         <div class="row equal">
                  <br />
                  <br />
                         <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblnum" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">VIN Number<span style="color:red">*</span></asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                     </div>
                       <div class="col-xs-6 col-sm-1">
                            <asp:ImageButton ID="Img_VIN" runat="server" ImageUrl="~/Resources/images/Search_Icon.png" OnClick="Img_VIN_Click" />
                           </div>
                       <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblmodl" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;" Enabled="false">Model</asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_model" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                     </div>
                 </div>
                      <br />
                    <div class="row equal">
                      <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblcolour" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;" Enabled="false">Colour</asp:Label>
                       </div>
                      <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_color" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                      </div>
                  </div>
                      <br />
                     <span style="color:brown; font-size:18px; margin-left:0px;"><b>Details Of Contract</b></span>
                 <div class="row equal">
                  <br />
                  <br />
                         <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblcontr" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Contract Number<span style="color:red">*</span></asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_contract" class="form-control" runat="server" placeholder=""></asp:TextBox>
                     </div>
                       <div class="col-xs-6 col-sm-1">
                            <asp:ImageButton ID="Img_contract" runat="server" ImageUrl="~/Resources/images/Search_Icon.png" OnClick="Img_contract_Click" />
                           </div>
                 
                        <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblcdate" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;" Enabled="false">Contract Date</asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_cdate" class="form-control" runat="server" placeholder="dd/mm/yyyy" ReadOnly="true"></asp:TextBox>
                     </div>
                       <div class="col-xs-6 col-sm-1">
                   <asp:ImageButton ID="Img_cal" runat="server" ImageUrl="~/Resources/images/B_Calendr.png" Visible="false" />
                 </div>
                 </div>
                      <br />
              <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblbnric" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;" Enabled="false">Buyer's NRIC</asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_bNRIC" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                     </div>
                    <div class="col-xs-6 col-sm-1">
                                   </div>
                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblbname" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;" Enabled="false">Buyer's Name</asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_bname" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                     </div>
                </div>
                      <br />
                      <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblbcontact" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;" Enabled="false">Buyer's Contact</asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_bcontact" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                     </div>
                    <div class="col-xs-6 col-sm-1">
                                   </div>
                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblbaddress" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;" Enabled="false">Buyer's Address</asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_baddress" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                     </div>
                </div>
                      <br />
                        <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblsales" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Sales Consultant<span style="color:red">*</span></asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:DropDownList ID="ddlsales" class="form-control" runat="server">
                              <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                     </div>
                    <div class="col-xs-6 col-sm-1">
                                   </div>
                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblcmpy" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Finance Company</asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_fcmpy" class="form-control" runat="server" placeholder=""  ReadOnly="true"></asp:TextBox>
                     </div>
                </div>
                      <br />
                        <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="Label1" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">COE Actual Taken Date </asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txt_COE" class="form-control" runat="server" placeholder="dd/mm/yyyy" ReadOnly="true"></asp:TextBox>
                     </div>
                              <div class="col-xs-6 col-sm-1">
                   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Resources/images/B_Calendr.png" Visible="false" />
                 </div>
                  
                    <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="Label2" runat="server" for="inputEmail3" Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;">Remarks</asp:Label>
                    </div>
                   <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="txt_remarks" class="form-control" runat="server" TextMode="MultiLine" Height="60px"></asp:TextBox>
                     </div>
                </div>
                      <br />
         <div class="row equal">
              <div class="col-xs-6 col-sm-2">
                  </div>
              <div class="col-xs-6 col-sm-6">
                   <asp:ImageButton ID="img_allocate" runat="server" ImageUrl="~/Resources/aimages/Allocate.png" style="height:38px;" OnClick="img_allocate_Click" />
                   <asp:ImageButton ID="img_clear" runat="server" ImageUrl="~/Resources/aimages/B_Clear.png" style="margin-left:15px; height:38px;" OnClick="img_clear_Click" />
                   <asp:ImageButton ID="img_drop" runat="server" ImageUrl="~/Resources/aimages/Drop_Allocation.png" style="margin-left:15px; height:38px;" OnClick="img_drop_Click"/>
                  </div>
             </div>
</div>
                  <%--    fragment-2--%>
               <div id="tab2" class="tab-pane fade ">
                      
                   <br />
                   <br />
                       <div class="row equal">
                          <div class="col-xs-6 col-sm-8">
                                   <asp:ImageButton ID="Img_allocte" runat="server" ImageUrl="~/Resources/aimages/Allocate.png" style="height:30px;" OnClick="Img_allocte_Click" />
                                  <asp:ImageButton ID="Img_saveall" runat="server" ImageUrl="~/Resources/aimages/save_allocate.png" style="margin-left:15px; height:30px;" OnClick="Img_saveall_Click" />
                                 <asp:ImageButton ID="Img_printall" runat="server" ImageUrl="~/Resources/aimages/PAL.png" style="margin-left:15px; height:30px;" />
                                  <asp:ImageButton ID="Img_printnt" runat="server" ImageUrl="~/Resources/aimages/PNAL.png" style="margin-left:15px; height:30px;" />
                          </div>
                      </div>  
                           <br />
                          <div class="row equal" style="margin-top:15px;">
                              <asp:GridView ID="Gridview_all" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" Font-Size="Small" PageSize="50" 
                             HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                                       <Columns>

                                            <asp:BoundField HeaderText="Contract Date" DataField="contract_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Contract Number" DataField="ContractNo" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                            <asp:BoundField HeaderText="Buyer's Name" DataField="BuyyersName" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Model" DataField="modelshort_desc" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="250px" />
                                             <asp:BoundField HeaderText="Colour" DataField="colour_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:TemplateField HeaderText="Exclude from Allocation">
                                                 <ItemTemplate>
                                                     <asp:CheckBox ID="chk" runat="server" AutoPostBack="true" />
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

                            <div class="row equal" style="margin-top:15px;">
                             <div class="col-xs-6 col-sm-6">
                          <asp:Label ID="lbl_allocate" runat="server"  Font-Size="18px" Visible="false" Text="" Style="font-family: 'Times New Roman', Times, serif;">Allocated</asp:Label>
                                  <asp:GridView ID="GridView_allocated" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" Font-Size="Small" PageSize="50" 
                             HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="false">
                                       <Columns>

                                            <asp:BoundField HeaderText="Contract Date" DataField="contract_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Contract Number" DataField="contract_no" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                            <asp:BoundField HeaderText="Buyer's Name" DataField="customer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Model" DataField="model_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="250px" />
                                             <asp:BoundField HeaderText="Colour" DataField="colour_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                           <asp:BoundField HeaderText="Vin Number" DataField="case_num" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                          
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
                                 <br />
                                 </div>
                                 <div class="col-xs-6 col-sm-6">
                                      
                          <asp:Label ID="lbl_ntallocate" runat="server"  Font-Size="18px" Visible="false" Text="" Style="font-family: 'Times New Roman', Times, serif;">Not Allocated</asp:Label>
                                       <asp:GridView ID="GridView_ntallocate" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" Font-Size="Small" PageSize="50" 
                             HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="false">
                                       <Columns>

                                           
                                             <asp:BoundField HeaderText="Contract Date" DataField="contract_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Contract Number" DataField="contract_no" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                            <asp:BoundField HeaderText="Buyer's Name" DataField="customer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Model" DataField="model_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Colour" DataField="colour_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                            
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
                                <br /><br />
                                </div>
                  <br /><br />

                       
                  </div>


              
             </div>
             </div>
            </div>
          
           </div>
</asp:Content>
