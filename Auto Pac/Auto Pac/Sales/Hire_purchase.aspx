<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Hire_purchase.aspx.cs" Inherits="Auto_Pac.Sales.Hire_purchase" %>
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
     <%-- <span style="color: brown; font-size: 23px; margin-left: 30px;"><b>Hire Purchase</b></span>--%>
        <br />
       <br />
       <br />
        <div style="padding-left:20px;">
            <div class="row equal">
                <div class=" col-sm-2">
                <asp:label id="lblfincompany" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Finance Comapny<span style="color:red;">*</span></asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtfincompany" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

                 <div class=" col-sm-2">
                <asp:label id="lbldescription" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Description</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtdescription" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
            </div>

            <br />

            
            <div class="row equal">
                <div class=" col-sm-2">
                <asp:label id="lbladdress1" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Address1</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtaddress1" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                <div class=" col-sm-2">
                <asp:label id="lbladdress2" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Address2</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtaddress2" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
            </div>

           

           

            <br />

            <div class="row equal">
                <div class=" col-sm-2">
                <asp:label id="lbladdress3" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Address3</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtaddress3" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                <div class=" col-sm-2">
                <asp:label id="lblcontperson" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Contact Person</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtcontperson" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
            </div>

            

           

            <br />

            <div class="row equal">
                <div class=" col-sm-2">
                <asp:label id="lblcontnumber" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Contact Number</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtcontnumber" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
            </div>

            <br />
            <br />

            <div class="row equal ">
            <div class="col-sm-2"></div>

           <div class="col-xs-3">
               <asp:ImageButton ID="ImageAdd" runat="server" ImageUrl="~/Resources/images/B_Add.png" />
               <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="~/Resources/images/B_Update.png" Style="margin-left:20px;"/>
               <asp:ImageButton ID="ImageDelete" runat="server" ImageUrl="~/Resources/images/B_Delete.png" Style="margin-left:20px;"/>
               
            </div>
                 </div>

            <br />
         
            

              <div class="row">
                   <div class="col-xs-6 col-sm-2"></div>
                  <div class="col-xs-6 col-sm-8">
                   <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" >
                      <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Finance Comapany" DataField="Finance_company" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="190px" />
                                      <asp:BoundField HeaderText="Address" DataField="Address" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                       <asp:BoundField HeaderText="Contact Person" DataField="Contact_person" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                         <asp:BoundField HeaderText="Contact Number" DataField="Contact_number" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                         
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
        <br />
        </div>
</asp:Content>
