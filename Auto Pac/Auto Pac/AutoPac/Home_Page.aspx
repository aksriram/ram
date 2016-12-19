<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="Auto_Pac.AutoPac.Home_Page" %>
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
      <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
       <div class="main">
     
         <br />
       
        <div style="padding-left:20px;">

          <span style="color:brown; font-size:18px; margin-left:0px;"><b>Outstanding Buyers' Orders</b></span>

            <br /><br />

                <div class="row">
                   <div class="col-xs-6 col-sm-12">
                       <div style="width: 100%; height: 400px; overflow:auto">
                        <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                                      <asp:CommandField ShowSelectButton="true" />
                                      <asp:BoundField HeaderText="Buyer's Order Number" DataField="Order_number" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Buyer's Order Date" DataField="Order_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Buyer's Name" DataField="Buyer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Sales Consultant" DataField="Sales_consultant" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Model" DataField="Model" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Colour" DataField="Colour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Remarks" DataField="Remarks" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      
                          
                           
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

             <span style="color:brown; font-size:18px; margin-left:0px;"><b>Contracts Without COEs</b></span>

            <br />
            <br />
             
             <div style="border: 1px solid #ccc; border-radius:6px 6px " >
                 <br />

             <div class="row" style="margin-left:20px">
                  
                
                  <div class="col-xs-6 col-sm-12">
                     <span style="color:brown; font-size:16px;"><b>Contracts Waiting for Bidding</b></span>
                    <div style="width: 100%; height: 400px; overflow: auto">
                   <asp:GridView ID="Gridview_access1" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                                       <asp:CommandField ShowSelectButton="true" />
                                      <asp:BoundField HeaderText="Contract Number" DataField="Contract_number" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Contract Date" DataField="Contract_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Buyer's Name" DataField="Buyer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Sales Consultant	" DataField="Sales_consultant" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model" DataField="Model" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Colour" DataField="Colour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Convert Date" DataField="Convert_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                     
                          
                           
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
                       <div class="row equal" style="margin-left:20px">
                           <div class="col-xs-6 col-sm-2">
                                <asp:ImageButton ID="img_print" runat="server" ImageUrl="~/Resources/images/B_Print.png" />
                           </div>
                        </div>

                 <br />

                    </div>

                   <br />
            
               <div style="border: 1px solid #ccc; border-radius:6px 6px">
                   <br />

             <div class="row" style="margin-left:20px">
                  
                
                  <div class="col-xs-6 col-sm-12">
                     <span style="color:brown; font-size:16px;"><b>Contracts Waiting for Immediate COE's</b></span>
                      <div style="width: 100%; height: 400px; overflow: auto">
                   <asp:GridView ID="Gridview_access2" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                                       <asp:CommandField ShowSelectButton="true" />
                                      <asp:BoundField HeaderText="Contract Number" DataField="Contract_number" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Contract Date" DataField="Contract_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Buyer's Name" DataField="Buyer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Sales Consultant	" DataField="Sales_consultant" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model" DataField="Model" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Colour" DataField="Colour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Convert Date" DataField="Convert_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                     
                          
                           
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

                     </div>

            <br />

             <span style="color:brown; font-size:18px;"><b>Contracts Pending Car Allocation</b></span>

            <br /><br />

             <div class="row">
                  
                
                  <div class="col-xs-6 col-sm-12">
                      <div style="width: 100%; height: 400px; overflow:auto">
                   <asp:GridView ID="Gridview_access3" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                                       <asp:CommandField ShowSelectButton="true" />
                                      <asp:BoundField HeaderText="Contract Number" DataField="Contract_number" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Contract Date" DataField="Contract_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Buyer's Name" DataField="Buyer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Sales Consultant	" DataField="Sales_consultant" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model" DataField="Model" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Colour" DataField="Colour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                     
                          
                           
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

             <span style="color:brown; font-size:18px;"><b>Contracts Pending Registration</b></span>

            <br /><br />

             <div class="row">
                  
                
                  <div class="col-xs-6 col-sm-12">
                      <div style="width: 100%; height: 400px; overflow:auto">
                   <asp:GridView ID="Gridview_access4" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                                       <asp:CommandField ShowSelectButton="true" />
                                      <asp:BoundField HeaderText="Contract Number" DataField="Contract_number" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Contract Date" DataField="Contract_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Buyer's Name" DataField="Buyer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Sales Consultant	" DataField="Sales_consultant" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model" DataField="Model" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Colour" DataField="Colour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                     
                          
                           
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
          </div>

</asp:Content>
