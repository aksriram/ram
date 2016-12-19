<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="FOB_Invoice_Price.aspx.cs" Inherits="Auto_Pac.AutoPac.FOB_Invoice_Price" %>
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
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>
           <%--<span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Export To HMC</b></span>--%>
          <br />
         <br />
     
      <div style="padding-left:20px;">
           <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblinvoice" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Invoice Number</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
              <asp:DropDownList ID="ddlinvoice" class="form-control" runat="server">
                 <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                  </asp:DropDownList>
            </div>
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblmodel" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model</asp:label>
            </div>
               <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_model" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:textbox>
              </div>
          </div>
          <br />
           <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblcolor" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Colour</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_color" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:textbox>
            </div>
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblunit" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Unit</asp:label>
            </div>
               <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_unit" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:textbox>
              </div>
          </div>
          <br />
           <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblrate" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Exchange Rate</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_rate" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblFOB" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">FOB US$</asp:label>
            </div>
               <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_FOB" class="form-control" runat="server" placeholder=""></asp:textbox>
              </div>
          </div>
          <br />
        
           <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblfreight" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Freight</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_freight" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
               </div>
          <br />
          <div class="row equal">
              <div class="col-xs-6 col-sm-2">
                  </div>
              <div class="col-xs-6 col-sm-3">
                    <asp:ImageButton ID="Img_update" runat="server" ImageUrl="~/Resources/images/B_Update.png"/> 
                   <asp:ImageButton ID="Img_clear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" style="margin-left:15px"/>
                  </div>
              </div>
          <br />
          <br />
              <div class="row equal">
                     <div class="col-xs-6 col-sm-1">
                         </div>
              <div class="col-xs-6 col-sm-10">
                   <asp:GridView ID="GridView_invoice" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" Font-Size="Small" PageSize="50" 
                             HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" AutoGenerateSelectButton="true">
                                       <Columns>
                                            <asp:BoundField HeaderText="Model" DataField="model" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="450px" />
                                             <asp:BoundField HeaderText="Colour" DataField="color" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                            <asp:BoundField HeaderText="Unit" DataField="unit" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Exchange Rate" DataField="rate" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="FOB US$" DataField="us" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                            <asp:BoundField HeaderText="Freight" DataField="freight" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
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
