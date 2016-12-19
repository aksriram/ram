<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="COE_Bidding_Preparation.aspx.cs" Inherits="Auto_Pac.AutoPac.COE_Bidding_Preparation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
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
                     <div class="col-xs-6 col-sm-1">

                     </div>
                    <div class="col-xs-6 col-sm-3">
                         <asp:RadioButton ID="rbwithcont" runat="server" GroupName="rb" AutoPostBack="true" Checked="true" OnCheckedChanged="rbwithcont_CheckedChanged"  />
                       <asp:Label ID="lblwithcont" runat="server" Font-Size="18px" Text="&nbsp;With Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                    
                         <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblarrangeby" runat="server"  Font-Size="18px" Text="Arrange By" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                         <div class="col-xs-6 col-sm-2">
                            <asp:DropDownList ID="ddlarrangeby" class="form-control" runat="server">
                                                    <asp:ListItem Text="Contract Number" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="COE Category" Value="1"></asp:ListItem>
                                           
                                                </asp:DropDownList>
                             </div>
                    </div>
                     
                   

                <br />

                 <div class="row equal">
                         <div class="col-xs-6 col-sm-1">

                        </div>
                         <div class="col-xs-6 col-sm-5">
                         <asp:RadioButton ID="rborder_date" runat="server" GroupName="rb" AutoPostBack="true" OnCheckedChanged="rborder_date_CheckedChanged" />
                       <asp:Label ID="lblorderdate" runat="server" Font-Size="18px" Text="&nbsp;Without Contract Number(By buyer's Order Date)" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                     </div>
                     </div>

                     <br />
                    

                     <div class="row equal">
                         <div class="col-xs-6 col-sm-1">

                        </div>
                         <div class="col-xs-6 col-sm-5">
                           <asp:RadioButton ID="rborder_num" runat="server" GroupName="rb" AutoPostBack="true" OnCheckedChanged="rborder_num_CheckedChanged" />
                          <asp:Label ID="lblordernumber" runat="server"  Font-Size="18px" Text="&nbsp;Without Contract Number(By buyer's Order Number)" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                     </div>

                     <br />
                
                 
                <br />

                     <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblscontnum" runat="server"  Font-Size="18px" Text="Starting Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtscont_num" class="form-control" runat="server" placeholder=""   ></asp:TextBox>
                         </div>
                         <div class="col-xs-6 col-sm-1"></div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblecontnum" runat="server"  Font-Size="18px" Text="Ending Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtecont_num" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                         </div>    
                     </div>

                     <br />

                     <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblfromdate" runat="server"  Font-Size="18px" Text="From Buyer's Order Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtfrom_date" class="form-control" runat="server" placeholder="DD/MM/YYYY" ></asp:TextBox>
                         </div>
                      <div class="col-xs-6 col-sm-1">

                           <asp:ImageButton ID="imgcalender" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />

                      </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lbltodate" runat="server"  Font-Size="18px" Text="To Buyer's Order Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                        </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtto_date" class="form-control" runat="server" placeholder="DD/MM/YYYY" ></asp:TextBox>
                         </div> 
                         <div class="col-xs-6 col-sm-1">

                           <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />

                      </div>   
                     </div>

                     <br />

                      <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblordernum" runat="server"  Font-Size="18px" Text="Starting Buyer's Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-2">
                         <asp:TextBox ID="txtorder_num" class="form-control" runat="server" placeholder="" ></asp:TextBox>
                         </div>
                          </div>

                     <br />
               

                     <div class="row equal">

                         <div class="col-xs-6 col-sm-3"></div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:ImageButton ID="imgexport" runat="server" ImageUrl="../Resources/aimages/B_Export.png" Height="35px"  />
                           <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px"  />

                      </div> 
                     </div>

                <br />
                <br />

                 </div>
               
            </div>
         </div>
</asp:Content>
