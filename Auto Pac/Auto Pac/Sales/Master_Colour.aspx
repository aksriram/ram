<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Master_Colour.aspx.cs" Inherits="Auto_Pac.Sales.Master_Colour" %>
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
              <asp:label id="lblpagetitle" runat="server" for="inputEmail3" Text=""  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            <%--  <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Master Colour</b></span>--%>
         <br />
             <br />
              <div style="padding-left:20px;">
           <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblmodelid" runat="server" for="inputEmail3"  font-size="18px" Text="Model ID"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_modelid" class="form-control" runat="server" placeholder="EX: ACC3-001"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lbldmodelgroup" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Group<span style="color:red;">*</span> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                      <asp:dropdownlist id="ddlmodelgrp" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>
     </div>
                    <br />
    
           <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbldoors" runat="server" for="inputEmail3"  font-size="18px"   style="font-family: 'Times New Roman', Times, serif;">Doors<span style="color:red;">*</span> </asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:dropdownlist id="ddldoors" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lbltype" runat="server" for="inputEmail3"  font-size="18px" Text="Type"  style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                     <asp:textbox id="txt_type" class="form-control" runat="server" placeholder="EX: Solid"></asp:textbox>
            </div>
     </div>
             <br />

              <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblexterior" runat="server" for="inputEmail3"  font-size="18px"   style="font-family: 'Times New Roman', Times, serif;">Exterior Colour<span style="color:red;">*</span> </asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                   <asp:textbox id="txt_extecolor" class="form-control" runat="server" placeholder="EX: EB"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lbldesc" runat="server" for="inputEmail3"  font-size="18px" Text="Description"  style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                     <asp:textbox id="txt_description" class="form-control" runat="server" placeholder="EX: Ebony Black"></asp:textbox>
            </div>
     </div>
             <br />
             <div class="row equal">
                 <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblremarks" runat="server" for="inputEmail3"  font-size="18px" Text="Remarks" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
               </div>

               <div class="col-xs-6 col-sm-8">
                   <asp:textbox id="txt_remarks" class="form-control" runat="server" Height="50px"></asp:textbox>
                 </div>
             </div>
                  <br />

           <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px" Text="Interior Colours"   style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lbintcolor" runat="server" class="form-control"></asp:ListBox>
            </div>
               <div class="col-xs-6 col-sm-1">
                   </div>

             <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="img_next" runat="server" ImageUrl="~/Resources/images/B_Nxt.png" />
                 <br />
                  <asp:ImageButton ID="img_prev" runat="server" ImageUrl="~/Resources/images/B_Pre.png"/>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lbintercolor" runat="server" class="form-control"></asp:ListBox>
            </div>
     </div>
                  <br />

        <div class="row equal">
            <div class="col-xs-6 col-sm-2">
                </div>
           <div class="col-xs-6 col-sm-3">
            <asp:CheckBox ID="cbdisplay" runat="server" />
           &nbsp;  <asp:label id="lbldisplay" runat="server" for="inputEmail3"  font-size="18px" Text="Display"   style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
       </div>
                  <br />

         <div class="row" style="margin-left:220px;">
            <asp:ImageButton ID="ImageSubmit" runat="server" ImageUrl="~/Resources/images/B_Add.png"/> 
            <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="~/Resources/images/B_Update.png" Style="margin-left:8px;"/>
            <asp:ImageButton ID="ImageClear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" Style="margin-left:8px;"/> 
         </div>
                  <br />
      <%--   <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Master Colours List</b></span>
                  <br />
                  <br />--%>
                      <div class="row">
              
                <asp:GridView ID="Gridview_color" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None"
                       Font-Size="Small" PageSize="50"
                        HorizontalAlign="Center" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Model ID" DataField="Model_id" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model Group" DataField="Model_Group" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model Type" DataField="Model_Type" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Exterior Colour" DataField="Exterior_Color" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Remarks" DataField="Remarks" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Interior Colours" DataField="Interior_Color" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Display" DataField="Display" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
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
