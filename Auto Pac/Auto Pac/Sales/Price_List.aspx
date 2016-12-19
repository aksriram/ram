<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Price_List.aspx.cs" Inherits="Auto_Pac.Sales.Price_List" %>
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
         <br />
         <br />
            

         <%--   <div style="margin-left:3%">
                <asp:RadioButton ID="RadioButton2" Text="Update List Prices and Sales Prices" runat="server" GroupName="sa" />&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" Text="Update List Prices Only" runat="server" GroupName="sa" />
            </div>--%>
            <br />
            <div style="padding-left:20px;">
               <div class="row equal">
                   <div class="col-xs-3 col-sm-2">
                     <asp:label id="lblModelShortDescription" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Short Description<span style="color:red;"></span></asp:label>
                  </div>
                  <div class="col-xs-3 col-sm-3">
                      <asp:textbox id="txt_ModelShortDescription" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
                 <div class="col-xs-2 col-sm-2">
                      <asp:label id="lblModelGroup" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Group<span style="color:red;"></span> </asp:label>
                 </div>                  
                 <div class="col-xs-3 col-sm-3">
                     <asp:textbox id="txt_ModelGroup" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
             </div>
               <br />

                <div class="row equal">
                   <div class="col-xs-3 col-sm-2">
                     <asp:label id="LblModelLongDescription" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Long Description<span style="color:red;"></span></asp:label>
                  </div>
                  <div class="col-xs-3 col-sm-3">
                      <asp:textbox id="TxtModelLongDescription" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
                 <div class="col-xs-2 col-sm-2">
                      <asp:label id="LblEngCap" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Eng. Cap<span style="color:red;"></span> </asp:label>
                 </div>                  
                 <div class="col-xs-3 col-sm-3">
                     <asp:textbox id="TxtEngCap" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
             </div>
               <br />

                 <div class="row equal">
                   <div class="col-xs-3 col-sm-2">
                     <asp:label id="LblSequence" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Sequence<span style="color:red;"></span></asp:label>
                  </div>
                  <div class="col-xs-3 col-sm-3">
                      <asp:textbox id="TxtSequence" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
                 <div class="col-xs-2 col-sm-2">
                      <asp:label id="LblModelSubSequence" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Sub Sequence<span style="color:red;"></span> </asp:label>
                 </div>                  
                 <div class="col-xs-3 col-sm-3">
                     <asp:textbox id="TxtModelSubSequence" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
             </div>
               <br />

                <div class="row equal">
                   <div class="col-xs-3 col-sm-2">
                     <asp:label id="LblCategory" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Category<span style="color:red;"></span></asp:label>
                  </div>
                  <div class="col-xs-3 col-sm-3">
                      <asp:textbox id="TxtCategory" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
                 <div class="col-xs-2 col-sm-2">
                      <asp:label id="LblEffectiveDate" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Effective Date<span style="color:red;"></span> </asp:label>
                 </div>                  
                 <div class="col-xs-3 col-sm-3">
                     <asp:textbox id="TxtEffectiveDate" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
             </div>
               <br />

                <div class="row equal">
                   <div class="col-xs-3 col-sm-2">
                     <asp:label id="LblPrice" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Price<span style="color:red;"></span></asp:label>
                  </div>
                  <div class="col-xs-3 col-sm-3">
                      <asp:textbox id="TxtPrice" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
                 <div class="col-xs-2 col-sm-2">
                      <asp:label id="LblRegFee" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Registration Fee<span style="color:red;"></span> </asp:label>
                 </div>                  
                 <div class="col-xs-3 col-sm-3">
                     <asp:textbox id="TxtRegFee" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
             </div>
               <br />

                <div class="row equal">
                   <div class="col-xs-3 col-sm-2">
                     <asp:label id="LblCOEOffSet" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Off Set<span style="color:red;"></span></asp:label>
                  </div>
                  <div class="col-xs-3 col-sm-3">
                      <asp:textbox id="TxtCOEOffSet" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
                 <div class="col-xs-2 col-sm-2">
                      <asp:label id="Lbl6MonthsRoadTax" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">6 Months Road Tax<span style="color:red;"></span> </asp:label>
                 </div>                  
                 <div class="col-xs-3 col-sm-3">
                     <asp:textbox id="Txt6MonthsRoadTax" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
             </div>
               <br />

                 <div class="row equal">
                   <div class="col-xs-3 col-sm-2">
                     <asp:label id="LblARFNet" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">ARF Net<span style="color:red;"></span></asp:label>
                  </div>
                  <div class="col-xs-3 col-sm-3">
                      <asp:textbox id="TxtARFNet" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
                 <div class="col-xs-2 col-sm-2">
                      <asp:label id="LblCNGPrice" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">CNG Price<span style="color:red;"></span> </asp:label>
                 </div>                  
                 <div class="col-xs-3 col-sm-3">
                     <asp:textbox id="TxtCNGPrice" class="form-control" runat="server" placeholder=""></asp:textbox>
                 </div>
             </div>
               <br />
                <br />
                 <div class="row" style="margin-left:220px;">
                    <asp:ImageButton ID="ImageSubmit" runat="server" ImageUrl="~/Resources/images/B_Add.png"/> 
                    <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="~/Resources/images/B_Update.png" Style="margin-left:8px;"/>
                    <asp:ImageButton ID="ImageDelete" runat="server" ImageUrl="~/Resources/images/B_Delete.png" Style="margin-left:8px;"/> 
                    <asp:ImageButton ID="ImageClear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Style="margin-left:8px;"/> 
                    <asp:ImageButton ID="ImageERP" runat="server" ImageUrl="../Resources/images/BERP.png" Style="margin-left:8px;"/> 
                    <asp:ImageButton ID="ImageERC" runat="server" ImageUrl="../Resources/images/BERC.png" Style="margin-left:8px;"/> 
                    <asp:ImageButton ID="ImagePrint" runat="server" ImageUrl="../Resources/images/B_Print.png" Style="margin-left:8px;"/> 
                 </div>
                <br />

                <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>List Price</b></span>
                <br /><br />
                <div class="row">
              
                <asp:GridView ID="Gridview_access" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None"
                       Font-Size="Small" PageSize="50"
                        HorizontalAlign="Center" Height="10px" VerticalAlign="Bottom" Wrap="False" AutoGenerateSelectButton="true">
                      <Columns>
                         <%-- <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>--%>
                                      <asp:BoundField HeaderText="Model Short Description" DataField="Model Short Description" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model Group" DataField="Model Group" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model Long Description" DataField="Model Long Description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Eng Cap." DataField="Eng Cap." ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model Sub Seq" DataField="Model Sub Seq" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Category" DataField="Category" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="140px" />
                                      <asp:BoundField HeaderText="Effective Date" DataField="Effective Date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="ARF Net" DataField="ARF Net" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="Reg Fee" DataField="Reg Fee" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="COE Off Set" DataField="COE Off Set" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="6 Mths Road Tax" DataField="6 Mths Road Tax" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                     <asp:BoundField HeaderText="Price" DataField="Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                     <asp:BoundField HeaderText="CNG Price" DataField="CNG Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
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
<br /><br />

                    <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Sales Price</b></span>
                <br /><br />
                <div class="row">
              
                <asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None"
                       Font-Size="Small" PageSize="50"
                        HorizontalAlign="Center" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                         
                                      <asp:BoundField HeaderText="Model Short Description" DataField="Model Short Description" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model Group" DataField="Model Group" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />                            
                                      <asp:BoundField HeaderText="Eng Cap." DataField="Eng Cap." ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model Sub Seq" DataField="Model Sub Seq" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Category" DataField="Category" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="140px" />
                                      <asp:BoundField HeaderText="Effective Date" DataField="Effective Date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="ARF Net" DataField="ARF Net" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="Reg Fee" DataField="Reg Fee" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="COE Off Set" DataField="COE Off Set" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                      <asp:BoundField HeaderText="6 Mths Road Tax" DataField="6 Mths Road Tax" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                     <asp:BoundField HeaderText="Price" DataField="Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                     <asp:BoundField HeaderText="CNG Price" DataField="CNG Price" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
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
                    <br />


                    <span style="color: brown; font-size: 18px; margin-left: 28px;"><b>Models List</b></span>
                <br /><br />
                <div class="row">
              
                <asp:GridView ID="Gridview2" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None"
                       Font-Size="Small" PageSize="50"
                        HorizontalAlign="Center" Height="10px" VerticalAlign="Bottom" Wrap="False" AutoGenerateSelectButton="true">
                      <Columns>                          
                            <asp:BoundField HeaderText="Model Short Description" DataField="Model Short Description" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                            <asp:BoundField HeaderText="Model Group" DataField="Model Group" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                            <asp:BoundField HeaderText="Model Long Description" DataField="Model Long Description" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />                                      
                            <asp:BoundField HeaderText="Model Code" DataField="Model Sub Seq" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
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
    </div>
</asp:Content>
