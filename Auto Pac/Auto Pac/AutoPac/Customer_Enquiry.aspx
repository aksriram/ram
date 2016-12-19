<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Customer_Enquiry.aspx.cs" Inherits="Auto_Pac.AutoPac.Customer_Enquiry" %>
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
          <%-- <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Customer Enqiry</b></span>--%>
          <br />
         <br />
     
      <div style="padding-left:20px;">
           <div class="row equal">
               <span style="color: brown; font-size: 18px; margin-left:20px;"><b>Search Condition</b></span>
               <br />
               <br />
                   <div class="col-xs-6 col-sm-2">
                      <asp:RadioButton ID="rd_name" runat="server" GroupName="type" AutoPostBack="true" OnCheckedChanged="rd_name_CheckedChanged"/>
                        <asp:label id="lblname" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"> Buyer's Name</asp:label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                     <asp:textbox id="txt_name" class="form-control" runat="server"></asp:textbox>
                    </div>
                   <div class="col-xs-6 col-sm-2">
                   <asp:RadioButton ID="rd_nric" runat="server" GroupName="type" AutoPostBack="true" OnCheckedChanged="rd_nric_CheckedChanged"/>
                         <asp:label id="lblnric" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"> Buyer's NRIC</asp:label>
                       </div>
                <div class="col-xs-6 col-sm-3">
                     <asp:textbox id="txt_nric" class="form-control" runat="server"></asp:textbox>
                    </div>
               </div>
          <br />
             <div class="row equal">
              <div class="col-xs-6 col-sm-2">
                   <asp:RadioButton ID="rd_ordnum" runat="server" GroupName="type" AutoPostBack="true" OnCheckedChanged="rd_ordnum_CheckedChanged"/>
                         <asp:label id="lblordnum" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"> Buyer's Order Number</asp:label>
                       </div>
                <div class="col-xs-6 col-sm-3">
                     <asp:textbox id="txt_ordnum" class="form-control" runat="server"></asp:textbox>
                    </div>
                  <div class="col-xs-6 col-sm-2">
                   <asp:RadioButton ID="rd_regnum" runat="server" GroupName="type" AutoPostBack="true" OnCheckedChanged="rd_regnum_CheckedChanged"/>
                         <asp:label id="lblregnum" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Registration Number</asp:label>
                       </div>
                <div class="col-xs-6 col-sm-3">
                     <asp:textbox id="txt_regnum" class="form-control" runat="server"></asp:textbox>
                    </div>
                   </div>
          <br />
             <div class="row equal">
              <div class="col-xs-6 col-sm-2">
                   <asp:RadioButton ID="rd_invoice" runat="server" GroupName="type" AutoPostBack="true" OnCheckedChanged="rd_invoice_CheckedChanged"/>
                         <asp:label id="lblinvoice" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Invoice Number</asp:label>
                       </div>
                <div class="col-xs-6 col-sm-3">
                     <asp:textbox id="txt_invoice" class="form-control" runat="server"></asp:textbox>
                    </div>
                  <div class="col-xs-6 col-sm-2">
                   <asp:RadioButton ID="rd_engine" runat="server" GroupName="type" AutoPostBack="true" OnCheckedChanged="rd_engine_CheckedChanged"/>
                         <asp:label id="lblengine" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Engine Number</asp:label>
                       </div>
                <div class="col-xs-6 col-sm-3">
                     <asp:textbox id="txt_engine" class="form-control" runat="server"></asp:textbox>
                    </div>
                   </div>
          <br />
            <div class="row equal">
              <div class="col-xs-6 col-sm-2">
                   <asp:RadioButton ID="rd_chassis" runat="server" GroupName="type" AutoPostBack="true" OnCheckedChanged="rd_chassis_CheckedChanged"/>
                         <asp:label id="lblchassis" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Chassis Number</asp:label>
                       </div>
                <div class="col-xs-6 col-sm-3">
                     <asp:textbox id="txt_chassis" class="form-control" runat="server"></asp:textbox>
                    </div>
                </div>
          <br />
           <div class="row equal">
                 <div class="col-xs-6 col-sm-2">
                     </div>
                    <div class="col-xs-6 col-sm-4">
                           <asp:ImageButton ID="Img_search" runat="server" ImageUrl="~/Resources/aimages/search.png" OnClick="Img_search_Click" />
                           <asp:ImageButton ID="Img_clear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" style="margin-left:15px; height:35px;" OnClick="Img_clear_Click" />
                        </div>
               </div>

          <div class="row equal">
          <br />
         <br />

               <div  class="col-xs-6 col-sm-12">

                     <asp:GridView ID="Gridview_customer" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None"
                       Font-Size="Small" PageSize="50"
                        HorizontalAlign="Center" Height="10px" VerticalAlign="Bottom" Wrap="False" >
                      <Columns>
                                      <asp:BoundField HeaderText="Buyer's Order Number" DataField="Buyer_orderno" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="170px" />
                                      <asp:BoundField HeaderText="Contract Number" DataField="ContractNo" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                      <asp:BoundField HeaderText="Buyer's Name" DataField="BuyyersName" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Buyer's NRIC" DataField="Buyer_nric" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Register Number" DataField="RegistrationNum" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Invoice Number" DataField="invoice_num" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="140px" />
                                      <asp:BoundField HeaderText="Sales Consultant" DataField="salesmancode" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="VIN Number" DataField="case_num" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                       <asp:BoundField HeaderText="Engine Number" DataField="engine_num" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="140px" />
                                      <asp:BoundField HeaderText="Chasis Number" DataField="chasis_num" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="Model" DataField="Model" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
      
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
                   <br />
                   </div>
              <br />

              </div>
           </div>
           </div>
          </div>
</asp:Content>
