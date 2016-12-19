<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Payment_List.aspx.cs" Inherits="Auto_Pac.AutoPac.Payment_List" %>
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
                                    <asp:Label ID="lblfrom_date" runat="server" Font-Size="18px" Text="From Submitted Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>

                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtfrom_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>

                                <div class="col-xs-6 col-sm-1">
                                    <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                </div>   

                              
                   <div class="col-xs-6 col-sm-2">
                                    <asp:Label ID="lblto_date" runat="server" Font-Size="18px" Text="To Submitted Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                </div>
                              
                                <div class="col-xs-6 col-sm-2">
                                    <asp:TextBox ID="txtto_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                                </div>

                                <div class="col-xs-6 col-sm-2">
                                    <asp:ImageButton ID="imgcalender2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Width="30px" Height="30px" />
                                    <asp:ImageButton ID="imgsearch" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Width="30px" Height="30px" />
                                </div>   
                          
                       </div>

                <br />
                <br />

                <div class="row equal">

                     <div class="col-xs-6 col-sm-2">
                         </div>
                        <div class="col-xs-6 col-sm-10 ">                     
                           <asp:ImageButton ID="imgprint" runat="server" ImageUrl="../Resources/aimages/Print_Giro.png" Height="35px"   />
                          <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px"   />
                             <asp:HyperLink ID="hylcheck_all" runat="server"  Style="margin-left:20px"  ><u> Check All</u></asp:HyperLink>
                            <asp:HyperLink ID="hyluncheck_all" runat="server"  Style="margin-left:10px" ><u>Uncheck All</u></asp:HyperLink>
                            <asp:HyperLink ID="hylsort_by" runat="server"  Style="margin-left:10px" ><u>Sort By Giro Number</u></asp:HyperLink>
                                                 
                        </div> 
                   
                     </div>
                           
                <br />
                <br />
                                  
            </div>
         </div>
      </div>


</asp:Content>
