<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="User_Rights_Management.aspx.cs" Inherits="Auto_Pac.AutoPac.User_Rights_Management" %>
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
    <script type="text/javascript">
    $(function () {
        $("#<%=HyperLink_CheckAll.ClientID%>").click(function() {
    var $checkboxes = $('input[type=checkbox]','#<%= User_Rights_GridView.ClientID %>');
        $checkboxes.prop('checked', true);        
    });
    });
</script>
    <script type="text/javascript">
    $(function () {
        $("#<%=HyperLink_UncheckAll.ClientID%>").click(function() {
    var $checkboxes = $('input[type=checkbox]','#<%= User_Rights_GridView.ClientID %>');
        $checkboxes.prop('checked', false);        
    });
    });
</script>
    <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
        <div class="main">
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>
            <%--<span style="color:brown; font-size:18px; margin-left:25px;"><b>Invoice</b></span>--%>
            <br /><br />
            <div style="padding-left:20px;">
                  <div class="row equal">
                    <div class="col-xs-6 col-lg-2">
                        <asp:Label ID="Lbl_SelectUser" runat="server" for="inputEmail3" font-size="18px" style="font-family:'Times New Roman', Times, serif;">Select User</asp:Label>
                    </div>
                    <div class="col-xs-6 col-lg-3">
                        <asp:DropDownList ID="ddl_FinanceCompany" class="form-control" runat="server"></asp:DropDownList>
                    </div>                   
                </div>
           </div>
            <br /><br />
            <div class="row equal" >
                <div class="col-xs-6 col-lg-1">
                     </div>
                <div style ="height:500px; width:1100px; overflow:scroll">
                 <asp:GridView ID="User_Rights_GridView" runat="server" HeaderStyle-BackColor="#3AC0F2" 
                              HeaderStyle-ForeColor="White" AutoGenerateColumns="false" style="overflow:scroll; height:20px;">                     
                      <Columns >
                          <asp:BoundField HeaderText="Screen ID" DataField="Screen ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                          <asp:BoundField HeaderText="Screen Name" DataField="Screen Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="300px" />
                          <asp:CheckBoxField HeaderText="Rights Add" DataField="Rights Add" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                          <asp:CheckBoxField HeaderText="Rights Update" DataField="Rights Update" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                          <asp:CheckBoxField HeaderText="Rights Delete" DataField="Rights Delete" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                          <asp:CheckBoxField HeaderText="Rights Print" DataField="Rights Print" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                          <asp:CheckBoxField HeaderText="Rights View" DataField="Rights View" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />                       
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
            <br /><br />
             <div class="row equal" >
                <div class="col-xs-6 col-lg-1">
                </div>
                 <asp:HyperLink ID="HyperLink_CheckAll" runat="server"><u>Check All</u></asp:HyperLink> &nbsp;&nbsp;
                 <asp:HyperLink ID="HyperLink_UncheckAll" runat="server"><u>Uncheck All</u></asp:HyperLink>
             </div>
            <br /> 
             <div class="row">
                <div class="col-xs-6 col-lg-1">
                    </div>
                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="../Resources/images/B_Update.png"/>
             </div>               
     </div>
   </div>
</asp:Content>
