<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="COE_Bid_Staff.aspx.cs" Inherits="Auto_Pac.AutoPac.COE_Bid_Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

        .main{
             box-shadow:5px 0 30px -5px #333, 5px 0 0 -5px #333;
        }

    </style>
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
        <div class="main">
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ;  color: brown;"> </asp:label>
           <%-- <span style="color:brown; font-size:18px; margin-left:20px;">COE Bid Staff</span>--%>
            <br /><br />
            <div style="padding-left:20px;">
                <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                        <asp:label id="lbl_BiddersNRIC" runat="server" text="" for="inputEmail3"  font-size="18px" style="font-family:'Times New Roman', Times, serif" >Bidder's NRIC</asp:label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:textbox id="txt_BiddersNRIC" runat="server" class="form-control" placeholder="" ></asp:textbox>
                    </div>
                </div>
                <br />
                <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                        <asp:label id="Lbl_BiddersName" runat="server" text="" for="inputEmail3"  font-size="18px" style="font-family:'Times New Roman', Times, serif" >Bidder's Name</asp:label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:textbox id="Txt_BiddersName" runat="server" class="form-control" placeholder="" ></asp:textbox>
                    </div>
                </div>
                <br />
                 <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                        <asp:label id="Lbl_Sales_Consultant" runat="server" text="" for="inputEmail3"  font-size="18px" style="font-family:'Times New Roman', Times, serif" >Sales Consultant / Department</asp:label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:textbox id="Txt_Sales_Consultant" runat="server" class="form-control" placeholder="" ></asp:textbox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-xs-6 col-sm-3">
                        </div>
                   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Resources/images/B_Add.png" Style="margin-left:15px;"/>
                   <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Style="margin-left:8px;"/>
                   <asp:ImageButton ID="ImageClear" runat="server" ImageUrl="../Resources/images/B_Delete.png" Style="margin-left:8px;"/>
                   <asp:ImageButton ID="ImagePrint" runat="server" ImageUrl="../Resources/images/B_Print.png" Style="margin-left:8px;"/>           
                       
                </div>
            </div>
        </div>
    </div>
</asp:Content>
