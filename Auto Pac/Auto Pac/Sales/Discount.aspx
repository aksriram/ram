<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Discount.aspx.cs" Inherits="Auto_Pac.Sales.Discount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

    </style>
    <style type="text/css">
       .the-legend {
    border-style: none;
    border-width: 0;
     color:brown;
    /*font-size: 20px;*/
    line-height: 15px;
    margin-bottom: 0;
   }
  .the-fieldset {
    border: 2px groove threedface #444;
    border-radius:08px;
    
         
    -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
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
        <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
      <%--<span style="color: brown; font-size: 23px; margin-left: 30px;"><b>Discount</b></span>--%>
        <br />
       <br />
       <br />
        <div style="padding-left:20px;">
             <div class="row equal">
               <div class="col-sm-5">
                  <fieldset class="well the-fieldset">
                     <legend class="the-legend">COE Type:Bidding and OWN COE </legend>
                           
                       
                      <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" >
                      <Columns>
                          <asp:TemplateField  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px" >
                              <ItemTemplate>
                                  <asp:CheckBox ID="chkCtrl" runat="server" Width="40px"  />
                              </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Model" DataField="Model" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Category" DataField="Category" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Discount" DataField="Discount" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                     
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
                   </fieldset>
                   
                   

              <div class=" col-sm-2">
                <asp:label id="lblamount" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Amount</asp:label>

            </div>
            <div class=" col-sm-5">
                 <asp:textbox id="txtamount" class="form-control" runat="server" placeholder="EX: SGD"></asp:textbox>
            </div>

                 <br />
                  <br />
                   <br />

              <div class="col-sm-1">
                  <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="~/Resources/images/B_Update.png" OnClick="ImageUpdate_Click"/> 
              </div>
               </div> 

                 <div class="col-sm-1">
                 </div>

                   <div class="col-sm-5">
                   <fieldset class="well the-fieldset">
                     <legend class="the-legend">COE Type:Immediate E and immediate C </legend>
                           
                       
                      <asp:GridView ID="Gridview_access1" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Model" DataField="Model" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Category" DataField="Category" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Discount" DataField="Discount" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                     
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
                   </fieldset>

                       

             <div class=" col-sm-2">
                <asp:label id="lblamount1" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Amount</asp:label>

            </div>
            <div class=" col-sm-5">
                 <asp:textbox id="txtamount1" class="form-control" runat="server" placeholder="EX: SGD"></asp:textbox>
            </div>

            <br />
            <br />
            <br />

             <div class="col-sm-1">
                  <asp:ImageButton ID="ImageUpdate1" runat="server" ImageUrl="~/Resources/images/B_Update.png"/> 
              </div>
               </div> 
             </div>
        </div>
       </div>
         </div>
</asp:Content>
