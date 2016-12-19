<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Interior_color.aspx.cs" Inherits="Auto_Pac.Sales.Interior_color" %>
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
     <%-- <span style="color: brown; font-size: 23px; margin-left: 30px;"><b>Interior Color</b></span>--%>
        <br />
       <br />
        <div style="padding-left:20px;">
             
            <div class="row equal">
            <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblmodelgroup" runat="server" for="txtmodelgroup"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Group<span style="color:red;">*</span></asp:label>

            </div>
            <div class="col-xs-6 col-sm-3">
                 <asp:textbox id="txtmodelgroup" class="form-control" runat="server" placeholder="EX:Accent"></asp:textbox>
            </div>
           
        </div>
           
            <br />
            <div class="row equal">
                 <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblcolourcode" runat="server" for="txtcolourcode"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Interior Colour Code<span style="color:red;">*</span></asp:label>

            </div>
            <div class="col-xs-6 col-sm-3">
                 <asp:textbox id="txtcolourcode" class="form-control" runat="server" placeholder="EX:RD"></asp:textbox>
            </div>
            </div>
            <br />

             <div class="row equal">
            <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbldescription" runat="server" for="txtdescription"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Description<span style="color:red;">*</span></asp:label>

            </div>
            <div class="col-xs-6 col-sm-3">
                 <asp:textbox id="txtdescription" class="form-control" runat="server" placeholder="EX:Red"></asp:textbox>
            </div>
             </div>   
            
            <br/>
            <br />


            <div class="row" style="margin-left:205px;" >
           <div class="col-xs-3">
                <asp:ImageButton ID="ImageAdd" runat="server" ImageUrl="~/Resources/images/B_Add.png"/> 
                <asp:ImageButton ID="ImageDelete" runat="server" ImageUrl="~/Resources/images/B_Delete.png" Style="margin-left:10px;"/>
            </div>

            
           
        </div>
            <br />
             <div class="row" >
                
                  <div class="col-sm-2"></div>

                  <div class="col-sm-8">
                <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Model Group" DataField="Model_group" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Interior Colour Code" DataField="Interior_colour_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                      <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                     
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
