<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Duty_Pullout_List(Taxi).aspx.cs" Inherits="Auto_Pac.AutoPac.Duty_Pullout_List_Taxi_" %>
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

                                    
                     <span style="color:brown; font-size:18px;"><b>Search Criteria</b></span>

                         <br />
                         <br />

                   <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblto_eta" runat="server" Font-Size="18px" Text="To ETA Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>

                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtto_eta" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>

                                <div class="col-xs-6 col-sm-6">
                                    <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                    <asp:ImageButton ID="imgsearch1" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />
                                </div>   
                                
                              
                   
                          
                       </div>

                <br />

                 <div class="row equal">
                         <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblpullout_list" runat="server" Font-Size="18px" Text="Pullout List Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtpullout_list" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>

                                <div class="col-xs-6 col-sm-6">
                                    <asp:ImageButton ID="imgcalender2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                    <asp:ImageButton ID="imgsearch2" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />
                                </div>  
                 </div>

                <br />
                <br />

                  <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                         </div>
                        <div class="col-xs-6 col-sm-3">                     
                           <asp:ImageButton ID="imgupdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px" Style="margin-left:10px"  />
                          <asp:ImageButton ID="imgprint" runat="server" ImageUrl="../Resources/images/B_Print.png" Height="40px" Style="margin-left:10px"   />


                      </div> 
                     </div>
                     
                <br />
                <br />
                                        
            </div>
         </div>
      </div>


</asp:Content>
