<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Export_To_HMC(New).aspx.cs" Inherits="Auto_Pac.AutoPac.Export_To_HMC" %>
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

                                    
                     <span style="color:brown; font-size:18px;"><b>Sales & Registration</b></span>

                         <br />
                         <br />

                  <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblfrom_register" runat="server" Font-Size="18px" Text="From Register Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>

                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtfrom_register" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>

                                <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                </div>   

                   <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblto_register" runat="server" Font-Size="18px" Text="To Register Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-3">
                                    <asp:TextBox ID="txtto_register" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>

                                <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="imgcalender2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                </div>   
                          
                       </div>

                <br />
                <br />

                 <div class="row equal">
                   <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblwholesale_code" runat="server" Font-Size="18px" Text="Default Wholesale Code" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                  <div class="col-xs-6 col-sm-3">
                                    <asp:DropDownList ID="ddlaccount_name" class="form-control" runat="server">
                                        <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                        
                                        
                                        
                                    </asp:DropDownList>      

                                </div>
                          
                          </div>

                <br />
                <br />

                 <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                         </div>
                        <div class="col-xs-6 col-sm-5">                     
                           <asp:ImageButton ID="imgexport" runat="server" ImageUrl="../Resources/aimages/B_Export.png" Height="35px"   />
                          <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px"   />


                      </div> 
                     </div>
                         
                <br />
                <br />

                
                                    
            </div>
         </div>
      </div>

</asp:Content>
