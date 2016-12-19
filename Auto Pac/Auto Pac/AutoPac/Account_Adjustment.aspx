<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Account_Adjustment.aspx.cs" Inherits="Auto_Pac.AutoPac.Account_Adjustment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
       <div class="main">
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>
          <%-- <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Account Adjustment</b></span>--%>
          <br />
         <br />
         <div style="padding-left:20px;">
                <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblinvoice" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Contract Number</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_cnum" class="form-control" runat="server" placeholder="" ></asp:textbox>
            </div>
                   <div class="col-xs-6 col-sm-1">
                           <asp:ImageButton ID="Img_search" runat="server" ImageUrl="~/Resources/images/Search_Icon.png"/> 
                       </div>
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblmodel" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Buyer Name</asp:label>
            </div>
               <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_model" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;"></asp:textbox>
              </div>
          </div>
          <br />
             <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbl_invoice" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Invoice Number</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_invoice" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;" ></asp:textbox>
            </div>
                  <div class="col-xs-6 col-sm-1">
                      </div>
                  <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblbalce" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Balance Amount</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_balance" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;" ></asp:textbox>
            </div>
               
                 </div>
             <br />
              <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Adjustment Amount</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_amt" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                  <div class="col-xs-6 col-sm-1">
                      </div>
                  <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label2" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Amount After Adjustment</asp:label>
            </div>
            <div class="col-xs-6 col-sm-3">
                <asp:textbox id="txt_amtadj" class="form-control" runat="server" placeholder="" Enabled="false" style="width:100%;height:34px;" ></asp:textbox>
            </div>
        </div>
             <br />
               <div class="row equal">
                <div class="col-xs-6 col-sm-2">
              <asp:label id="lblcatgry" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Category</asp:label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                            <asp:DropDownList ID="ddlcatgry" class="form-control" runat="server">
                                 <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                         </div>
                    <div class="col-xs-6 col-sm-1">
                        </div>
                      <div class="col-xs-6 col-sm-2">
              <asp:label id="lblreason" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Reason For Adjustment</asp:label>
                    </div>
                     <div class="col-xs-6 col-sm-3">
                             <asp:textbox id="txt_reason" class="form-control" runat="server" placeholder="" TextMode="MultiLine"></asp:textbox>
                         </div>
                   </div>
             <br />
                <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                   </div>
                     <div class="col-xs-6 col-sm-4">
                            <asp:ImageButton ID="Img_updt" runat="server" ImageUrl="~/Resources/images/B_Update.png"/> 
                            <asp:ImageButton ID="Img_clear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" style="margin-left:15px;"/> 
                   </div>
                    </div>

          </div>
           </div>
          </div>
</asp:Content>
