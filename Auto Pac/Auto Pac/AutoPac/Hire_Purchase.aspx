<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Hire_Purchase.aspx.cs" Inherits="Auto_Pac.AutoPac.Hire_Purchase" %>
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
                <asp:label id="lblcountry" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Country</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtcountry" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
            </div>

                <br />

              <div class="row equal">
             <div class=" col-sm-2">
                <asp:label id="lblpostal_code" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Postal Code</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtpostal_code" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                <div class=" col-sm-2">
                <asp:label id="lblcont_person" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Contact Person</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtcont_person" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
            </div>

                <br />

             <div class="row equal">
             <div class=" col-sm-2">
                <asp:label id="lblcontact_num1" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Contact Number 1</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtcontact_num1" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                <div class=" col-sm-2">
                <asp:label id="lblcontact_num2" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Contact Number 2</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtcontact_num2" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
            </div>

                <br />

             <div class="row equal">
             <div class=" col-sm-2">
                <asp:label id="lblcontact_num3" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Contact Number 3</asp:label>

            </div>
            <div class=" col-sm-3">
                 <asp:textbox id="txtcontact_num3" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                <div class=" col-sm-2">
                <asp:label id="lblstatus" runat="server"   font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Display Status</asp:label>

            </div>
            <div class=" col-sm-3">
                            <asp:dropdownlist ID="ddlstatus" class="form-control" runat="server">
                                  <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                            
                            </asp:dropdownlist>           

            </div>
            </div>

                <br />

                 <div class="row equal">
                       <div class="col-xs-6 col-sm-2"></div>
                       <div class="col-xs-6 col-sm-8">
                             <asp:ImageButton ID="img_new" runat="server" ImageUrl="../Resources/aimages/B_New.png" Height="35px" />
                             <asp:ImageButton ID="img_update" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="35px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="img_delete" runat="server" ImageUrl="../Resources/images/B_Delete.png" Height="35px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="img_clear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px"  />
                        </div> 
                 </div>

                <br />

                 <div class="row">
                  

                  <div class="col-xs-6 col-sm-12">
                     <span style="color:brown; font-size:18px;"><b>Finance List</b></span>

                   <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                          
                                      <asp:BoundField HeaderText="Finance Comapany" DataField="Finance_company" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                      <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Address" DataField="Address" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Country" DataField="Country" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Postal Code" DataField="Postal_Code" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="Contact Person" DataField="Contact_person" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Contact Number 1" DataField="Contact_number1" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="110px" />
                                      <asp:BoundField HeaderText="Contact Number 2" DataField="Contact_number2" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="110px" />
                                      <asp:BoundField HeaderText="Contact Number 3" DataField="Contact_number3" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="110px" />
                                       <asp:CommandField ShowSelectButton="true" />
                          
                           
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



                </div>
            </div>
         </div>

</asp:Content>
