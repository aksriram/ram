<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Customer_List.aspx.cs" Inherits="Auto_Pac.Sales.Customer_List" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="wrapper">
        <asp:Label ID="lblpagetitle" runat="server" Text=""></asp:Label>
          <div class="row">

             
              <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None"
                       Font-Size="Small" PageSize="50"
                        HorizontalAlign="Center" Height="10px" VerticalAlign="Bottom" Wrap="False">
          <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Buyer Order Number" DataField="BuyerNo" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="180px" />
                                      <asp:BoundField HeaderText="Buyer's Name" DataField="BuyerName" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Direct Mail" DataField="Mail" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="SMS" DataField="SMS" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Phone" DataField="Phone" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Email" DataField="Email" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="140px" />
                                      <asp:BoundField HeaderText="Remarks" DataField="Receive" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                   
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
           <div class="row">
                <div class="col-xs-6 col-sm-1">
                    </div>
                <asp:ImageButton ID="Image_print" runat="server" ImageUrl="~/Resources/images/B_Print.png"/> 
               </div>
 </div>
</asp:Content>
