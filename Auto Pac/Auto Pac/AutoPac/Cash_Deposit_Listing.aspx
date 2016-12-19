<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Cash_Deposit_Listing.aspx.cs" Inherits="Auto_Pac.AutoPac.Cash_Deposit_Listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            <br />
            <div style="padding-left: 20px;">
                      <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblreceipt_date" runat="server"  Font-Size="18px" Text="Receipt Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                               <asp:TextBox ID="txtreceipt_date" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                                <div class="col-xs-6 col-sm-1">
                                   <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                </div>
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lbldeposit_name" runat="server"  Font-Size="18px" Text="Deposit's Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtdeposit_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                     </div>

                <br />

                   <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lbldeposit_num" runat="server"  Font-Size="18px" Text="Deposit's Account Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtdeposit_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                               
                            
                   </div>

                <br />

                 <div class="row equal">
                         <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="labelamount" runat="server"  Font-Size="18px" Text="Total Receipt Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                              <asp:Label ID="lbltot_amount" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                             </div> 
                 </div>

                <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-3"></div>
                         <div class="col-xs-6 col-sm-8">
                                   <asp:ImageButton ID="imgshow_receipt" runat="server" ImageUrl="../Resources/aimages/Show_Receipt.png" Height="40px" Width="130px" />
                                    <asp:ImageButton ID="img_print" runat="server" ImageUrl="../Resources/images/B_Print.png" Height="40px" Style="margin-left:10px"  />
                                   <asp:ImageButton ID="img_clear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px" Style="margin-left:10px"  />
                                  <asp:ImageButton ID="img_export" runat="server" ImageUrl="../Resources/aimages/Export_to_Excel.png" Height="40px" Width="130px" Style="margin-left:10px"  />
                                 
                         </div>   
                  </div>

                <br />
                <br />

                   <div class="row">
                  
                   <div class="col-xs-6 col-sm-2" ></div>
                  <div class="col-xs-6 col-sm-10" >
                   <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" >
                      <Columns>
                                      <asp:BoundField HeaderText="Customer Name" DataField="Customer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="190px" />
                         
                                      <asp:BoundField HeaderText="Finance Company" DataField="Finance_company" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="OR Number" DataField="OR_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Contract Number" DataField="Contract_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Sales Consultant" DataField="Sales_consultant" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Receipt Amount" DataField="Receipt_amount" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:TemplateField HeaderText="Bank In" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="80px">
                                     <ItemTemplate>
                                     <asp:CheckBox ID ="ChkStatus"  runat="server" />
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
                <br />

                </div>
            </div>
          </div>
    
</asp:Content>
