<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Accessory.aspx.cs" Inherits="Auto_Pac.Sales.Accessory" %>
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
    <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
         <div class="main">
              <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            <%--  <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Accessories</b></span>--%>
         <br />
             <br />
              <div style="padding-left:20px;">
                    <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblaccesscode" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Accessory Code<span style="color:red;">*</span></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_accesscode" class="form-control" runat="server" placeholder="EX: Ambulance Starex23"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lbldesc" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Description<span style="color:red;">*</span> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_description" class="form-control" runat="server" placeholder="EX: Ambulance Conversion For Starex"></asp:textbox>
            </div>
     </div>
                    <br />

          <div class="row equal">
             <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblcost" runat="server" for="inputEmail3"  font-size="18px" Text="Cost Price"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_costprice" class="form-control" runat="server" placeholder="Ex: SGD"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblnet" runat="server" for="inputEmail3"  font-size="18px"  Text="Net Price" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_netprice" class="form-control" runat="server" placeholder="Ex: SGD"></asp:textbox>
            </div>
       </div>

            <br />

          <div class="row equal">
             <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblretail" runat="server" for="inputEmail3"  font-size="18px" Text="Retail Price"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_retailprice" class="form-control" runat="server" placeholder="Ex: SGD"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblclassi" runat="server" for="inputEmail3"  font-size="18px"  Text="Classification" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:dropdownlist id="ddlclassification" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>
       </div>
                  <br />

           <div class="row equal">
             <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px" Text="Fitted"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
               <asp:dropdownlist id="ddlfitted" class="form-control" runat="server">
                      <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                 </asp:dropdownlist>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="Label2" runat="server" for="inputEmail3"  font-size="18px"  Text="Status" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:dropdownlist id="ddlstatus" class="form-control" runat="server">
                        <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                     </asp:dropdownlist>
            </div>
       </div>
                  <br />
                  <br />

         <div class="row" style="margin-left:220px;">
            <asp:ImageButton ID="ImageSubmit" runat="server" ImageUrl="~/Resources/images/B_Add.png"/> 
            <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="~/Resources/images/B_Update.png" Style="margin-left:8px;"/>
            <asp:ImageButton ID="ImageDelete" runat="server" ImageUrl="~/Resources/images/B_Delete.png" Style="margin-left:8px;"/> 
        </div>
                  <br />
                  <br />
            <div class="row">
              
                <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None"
                       Font-Size="Small" PageSize="50"
                        HorizontalAlign="Center" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Accessory Code" DataField="Accessory_code" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                      <asp:BoundField HeaderText="Description" DataField="description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Cost Price" DataField="cost_price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Net Price" DataField="nett_price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Retail Price" DataField="retail_price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Classification" DataField="classification" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="140px" />
                                      <asp:BoundField HeaderText="Fitted" DataField="fitted" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="Status" DataField="status" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
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
    
</asp:Content>
