<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Update_Vehicle_Rate.aspx.cs" Inherits="Auto_Pac.AutoPac.Update_Vehicle_Rate" %>
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
                

                     <span style="color:brown; font-size:18px;"><b>Search Case Series</b></span>

                         <br />
                         <br />

                <div class="row equal">
                             <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcase_series" runat="server" Font-Size="18px" Text="Case Series" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcase_series" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                                   <div class="col-xs-6 col-sm-1">

                                    <asp:ImageButton ID="imgsearch" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />

                                 </div>
                   
                            </div>

                <br />
                                                 
                <span style="color:brown; font-size:18px;"><b>Update Vehicle Rate</b></span>

                         <br />
                         <br />

                 <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblcase" runat="server" Font-Size="18px" Text="Case Series" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcase" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                   <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblCase_num" runat="server" Font-Size="18px" Text="Case Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtcase_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                          
                          </div>

                <br />
               

                 <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblengine_num" runat="server" Font-Size="18px" Text="Engine Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtengine_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>

                   <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblchasis_num" runat="server" Font-Size="18px" Text="Chasis Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtchasis_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                          
                          </div>

                <br />
                

                <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblvehicle_rate" runat="server" Font-Size="18px" Text="Vehicle Rate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtvehicle_rate" class="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                    </div>

                <br />
                

                    <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                         </div>
                        <div class="col-xs-6 col-sm-2 ">                     
                           <asp:ImageButton ID="imgupdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px" Style="margin-left:10px"  />
                          <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px" Style="margin-left:10px"   />


                      </div> 
                     </div>

             <br />
                <br />
                
            </div>
         </div>
      </div>
                

</asp:Content>
