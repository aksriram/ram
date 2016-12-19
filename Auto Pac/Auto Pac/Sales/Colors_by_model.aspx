<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Colors_by_model.aspx.cs" Inherits="Auto_Pac.Sales.Colors_by_model" %>
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
         <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
    <%--  <span style="color: brown; font-size: 23px; margin-left: 30px;"><b>Colours By Model</b></span>--%>
        <br />
       <br />

        <div style="padding-left:20px;">
             <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                  <asp:label id="lblmodel" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model</asp:label>
            </div>   
             <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddlmodel" class="form-control" runat="server">
                                          <asp:ListItem Text="--Select Model--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>  
                  <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblmodel_code" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Code</asp:label>
            </div>
             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txtmodel_code" class="form-control" runat="server" placeholder="EX:BAFGP38"></asp:textbox>
            </div>  
             </div>

            <br />

            <div class="row equal">
             <div class="col-xs-6 col-sm-3">
                 <asp:label id="lbloccnumber" runat="server"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">OCC Number</asp:label>
             </div>

            <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txtoccnumber" class="form-control" runat="server" placeholder="EX:A290"></asp:textbox>
            </div>  
            <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblmodelgroup" runat="server"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Group</asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddlmodelgroup" class="form-control" runat="server">
                                          <asp:ListItem Text="--Select Model Group--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>  
            </div> 
             
            <br />

             <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                  <asp:label id="lblextcode" runat="server" font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Exterior Colour Code</asp:label>
            </div>   
             <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddlextcode" class="form-control" runat="server">
                                          <asp:ListItem Text="--Select Exterior Colour Code--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>  
                  <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblextdescription" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Exterior Colour Code</asp:label>
            </div>
             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txtextdescription" class="form-control" runat="server" placeholder="EX:Sky Blue"></asp:textbox>
            </div>  
             </div>

            <br />

            <div class="row equal">
             <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblExttype" runat="server"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Exterior Type</asp:label>
             </div>

            <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txtexttype" class="form-control" runat="server" placeholder="EX:Metallic"></asp:textbox>
            </div>  
            <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblintcode" runat="server"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Interior Colour Code</asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddlintcode" class="form-control" runat="server">
                                          <asp:ListItem Text="--Select Interior Colour Code--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>  
            </div> 

            <br />

            <div class="row equal">
             <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblintdescription" runat="server"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Interior Colour Description</asp:label>
             </div>

            <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txtintdescription" class="form-control" runat="server" placeholder="EX:Red"></asp:textbox>
            </div> 
                
                <div class="col-sm-2"></div>
                
                <div class="col-sm-1">
                    <asp:ImageButton ID="ImageAdd" runat="server" ImageUrl="~/Resources/images/B_Add.png" />
                </div> 
            </div>

            <br />
            <br />

              <div class="row">
                
              
                <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="center" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Model" DataField="Model" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Model Code" DataField="Model_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="OCC Number" DataField="OCC_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                       <asp:BoundField HeaderText="Model group" DataField="Model_group" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                         <asp:BoundField HeaderText="Exterior Colour Code" DataField="Exterior_colour_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                         <asp:BoundField HeaderText="Exterior Colour Description" DataField="Exterior_colour_description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                     <asp:BoundField HeaderText="Exterior Type" DataField="Exterior_type" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                     <asp:BoundField HeaderText="Interior Colour Code" DataField="Interior_colour_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                       <asp:BoundField HeaderText="Interior Colour Description" DataField="Interior_colour_description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
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
            <div class="col-sm-1">
</div>
            </div>

            <br />
            <br />

            <div class="row" >
                <div class="col-xs-6 col-sm-3"></div>

               <div class="col-xs-6 col-sm-3">
               
               <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="~/Resources/images/B_Update.png" />
               <asp:ImageButton ID="ImageDelete" runat="server" ImageUrl="~/Resources/images/B_Delete.png" Style="margin-left:20px;"/>
               <asp:ImageButton ID="ImageClear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" Style="margin-left:20px;"/>
            </div>
                </div>
            </div>
        </div>
       </div>
   
</asp:Content>
