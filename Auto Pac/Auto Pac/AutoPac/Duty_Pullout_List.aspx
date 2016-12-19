<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Duty_Pullout_List.aspx.cs" Inherits="Auto_Pac.AutoPac.Duty_Pullout_List" %>
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
                 <span style="color:brown; font-size:18px;"><b>Search Criteria</b></span>

                <br />
                <br />
                  <div class="row equal">
                        <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lbleta_date" runat="server"  Font-Size="18px" Text="To ETA Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txteta_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div> 
                        <div class="col-xs-6 col-sm-2">
                          <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                        <asp:ImageButton ID="imgsearch1" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" Style="margin-left:10px" />

                       </div>
                       <div class="col-xs-6 col-sm-2">
                        <asp:Label ID="lblpullout_date" runat="server"  Font-Size="18px" Text="Pullout List Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                        <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtpullout_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                         </div> 
                        <div class="col-xs-6 col-sm-2">
                          <asp:ImageButton ID="imgcalender2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                         <asp:ImageButton ID="imgsearch2" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" Style="margin-left:10px"  />

                       </div>
                        

                 </div>

                <br />

                 <div class="row equal">
                      <div class="col-xs-6 col-sm-2"></div>
                         <div class="col-xs-6 col-sm-4">
                             <asp:ImageButton ID="img_update" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px"   />
                            <asp:ImageButton ID="img_print" runat="server" ImageUrl="../Resources/images/B_Print.png" Height="40px" Style="margin-left:10px"  />
                            </div> 
                 </div>

                <br />

                 <div class="row">
                  
                   <div class="col-xs-6 col-sm-1" ></div>
                  <div class="col-xs-6 col-sm-10"  >
                     
                   <asp:GridView ID="Gridview_access" runat="server" style="overflow:auto" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true"  >
                      <Columns>
                          
                                      <asp:BoundField HeaderText="Duty Paid?" DataField="Duty_paid" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="70px" />
                                      <asp:BoundField HeaderText="Model" DataField="Model" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Colour" DataField="Colour" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="70px" />
                                      <asp:BoundField HeaderText="VIN Number" DataField="VIN_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="ETA Date" DataField="ETA_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Car Type" DataField="Car_type" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="70px" />
                                      <asp:BoundField HeaderText="Buyer's Name" DataField="Buyer_name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Contract Number" DataField="Contract_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Sales Consultant" DataField="Sales_consultant" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                       <asp:BoundField HeaderText="Stock Status" DataField="Stock_status" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="70px" />
                                     <asp:TemplateField HeaderText="Duty" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="80px">
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
