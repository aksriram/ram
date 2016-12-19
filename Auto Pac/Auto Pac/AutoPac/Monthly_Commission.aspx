<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Monthly_Commission.aspx.cs" Inherits="Auto_Pac.AutoPac.Monthly_Commission" %>
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

                  <span style="color:brown; font-size:18px;"><b>Orchard Credit Pte Ltd Monthly Report-CEO</b></span>

                         <br />
                         <br />

                  <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblupload" runat="server"  Font-Size="18px" Text="Upload the File" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-7">
                              <asp:ImageButton ID="imgbrowse" runat="server" ImageUrl="../Resources/aimages/Browse.png" Height="30px"  />
                                <asp:Label ID="lblfile_name" runat="server"  Font-Size="18px" Text="No File selected" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                               
                             </div> 
                           
                  </div>

                <br />

                  <div class="row equal">
                      <div class="col-xs-6 col-sm-2"></div>
                        <div class="col-xs-6 col-sm-2">
                              <asp:ImageButton ID="imgshow_list" runat="server" ImageUrl="../Resources/aimages/Show_List.png" Height="30px"  />
                         </div>
                  </div>

                <br />

                  <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="Label1" runat="server"  Font-Size="18px" Text="SL Number:" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                                <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblsl_num" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                 </div>

                <br />

                 <div class="row equal">
                              
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="Label2" runat="server"  Font-Size="18px" Text="SE Code:" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                                <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblse_code" runat="server"  Font-Size="18px" Text="" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                 </div>

                <br />

                      <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblmodel" runat="server"  Font-Size="18px" Text="Model" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtmodel" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblloan_amount" runat="server"  Font-Size="18px" Text="Loan Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtloan_amount" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                       </div>

                <br />

                    <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblvehicle_num" runat="server"  Font-Size="18px" Text="Vehicle Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtvehicle_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblcommission" runat="server"  Font-Size="18px" Text="Commission Payable to Sales Consultant " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcommission" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                       </div>

                <br />

                 <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblcontract_num" runat="server"  Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcontract_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblretention_amt" runat="server"  Font-Size="18px" Text="Komoco Retention Amount " Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtretention_amt" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                       </div>

                <br />

                    <div class="row equal">
                                <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblterm" runat="server"  Font-Size="18px" Text="Term" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtterm" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblpromotion_amt" runat="server"  Font-Size="18px" Text="Promotion Amount to OC" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtpromotion_amt" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                       </div>
                <br />

                <br />

                <div class="row equal">
                              <div class="col-xs-6 col-sm-2"></div>
                             <div class="col-xs-6 col-sm-10">
                             <asp:ImageButton ID="imgprev" runat="server" ImageUrl="../Resources/aimages/B_Prev.png" Height="30px"  />
                             <asp:ImageButton ID="imgnext" runat="server" ImageUrl="../Resources/aimages/B_Next.png" Height="30px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="imgupdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="30px" Style="margin-left:10px"  />
                              <asp:ImageButton ID="imgexport" runat="server" ImageUrl="../Resources/aimages/B_Export.png" Height="30px" Style="margin-left:10px"  />
                                 <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="30px" Style="margin-left:10px"  />
                               <asp:ImageButton ID="imgsave" runat="server" ImageUrl="../Resources/aimages/B_Save.png" Height="30px" Style="margin-left:10px"  />
                           
                                  </div> 
                         </div>

                <br />

                  <div class="row equal">
                              <div class="col-xs-6 col-sm-2"></div>
                             <div class="col-xs-6 col-sm-10">
                             <asp:ImageButton ID="imgload_sc" runat="server" ImageUrl="../Resources/aimages/Load_Details_of_SC.png" Height="30px"  />
                             <asp:ImageButton ID="imgprint_sc" runat="server" ImageUrl="../Resources/aimages/Print_Details_of_SC.png" Height="30px" Style="margin-left:10px"  />
                          
                              </div>
                  </div>

                <br />
                <br />

                </div>
         </div>
           </div>
    
</asp:Content>
