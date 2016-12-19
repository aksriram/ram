<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Car_Registration.aspx.cs" Inherits="Auto_Pac.AutoPac.Car_Registration" %>
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
                              
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblcontract_num" runat="server"  Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcontract_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                            <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblcoe_num" runat="server"  Font-Size="18px" Text="COE Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtcoe_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                      </div>

                    <br />

                    <div class="row equal">
                               <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblinvoice_date" runat="server"  Font-Size="18px" Text="Invoice Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                               <asp:TextBox ID="txtinvoice_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                             </div> 
                              <div class="col-xs-6 col-sm-1">
                                  <asp:ImageButton ID="imgcalender1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Height="30px"   />
                                     
                                </div>
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblreg_num" runat="server"  Font-Size="18px" Text="Registration Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                                  </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtreg_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                               <asp:CheckBox ID="chknum_retention" runat="server" Text="&nbsp;(Tick if have number retention)" />

                             </div> 
                            
                      </div>

                <br />
                 
                   <div class="row equal">
                            <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblreg_date" runat="server"  Font-Size="18px" Text="Registration Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-2">
                               <asp:TextBox ID="txtreg_date" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                             </div> 
                                <div class="col-xs-6 col-sm-1">
                                  <asp:ImageButton ID="imgcalender2" runat="server" ImageUrl="../Resources/images/B_Calendr.png" Height="30px"   />
                                     
                                </div>
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblvin_num" runat="server"  Font-Size="18px" Text="Vin Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtvin_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                   </div>

                <br />

                    <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblmodel" runat="server"  Font-Size="18px" Text="Model" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtmodel" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblchasis_num" runat="server"  Font-Size="18px" Text="Chasis Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtchais_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                   </div>

                <br />

                  <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblengine_num" runat="server"  Font-Size="18px" Text="Engine Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtengine_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblnric" runat="server"  Font-Size="18px" Text="Buyer's NRIC" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtnric" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                   </div>

                <br />

                      <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblconsultant" runat="server"  Font-Size="18px" Text="Sales Consultant's Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtconsultant" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                             <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblbuyer_name" runat="server"  Font-Size="18px" Text="Buyer's Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtbuyer_name" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                      </div>

                  <br />

                    <div class="row equal">
                             <div class="col-xs-6 col-sm-3">
                               <asp:Label ID="lblfin_company" runat="server"  Font-Size="18px" Text="Finance Company" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                             </div>
                             <div class="col-xs-6 col-sm-3">
                               <asp:TextBox ID="txtfin_company" class="form-control" runat="server" placeholder=""></asp:TextBox>
                             </div> 
                    </div>

                <br />

               <span style="color:brown; font-size:18px;"><b>Factory Standard Equipment & Items</b></span>


                <br />
                <br />

                <div class="row equal">
                         <div class="col-xs-6 col-sm-1" >
                               <asp:Label ID="Label1" runat="server"  Font-Size="18px" Text="1." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                         <div class="col-xs-6 col-sm-4">
                              <asp:TextBox ID="txt1" class="form-control" runat="server" placeholder=""></asp:TextBox>
                            
                         </div>
                         <div class="col-xs-6 col-sm-1">
                             <asp:Label ID="Label2" runat="server"  Font-Size="18px" Text="6." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                         </div>
                         <div class="col-xs-6 col-sm-4">
                               <asp:TextBox ID="txt6" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                </div>

                <br />

                <div class="row equal">
                        <div class="col-xs-6 col-sm-1">
                               <asp:Label ID="Label3" runat="server"  Font-Size="18px" Text="2." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                         <div class="col-xs-6 col-sm-4">
                               <asp:TextBox ID="txt2" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                        <div class="col-xs-6 col-sm-1">
                               <asp:Label ID="Label4" runat="server"  Font-Size="18px" Text="7." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                        <div class="col-xs-6 col-sm-4">
                               <asp:TextBox ID="txt7" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                </div>

                <br />

                  <div class="row equal">
                        <div class="col-xs-6 col-sm-1">
                               <asp:Label ID="Label5" runat="server"  Font-Size="18px" Text="3." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                         <div class="col-xs-6 col-sm-4">
                               <asp:TextBox ID="txt3" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                      <div class="col-xs-6 col-sm-1">
                               <asp:Label ID="Label6" runat="server"  Font-Size="18px" Text="8." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                        <div class="col-xs-6 col-sm-4">
                               <asp:TextBox ID="txt8" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                </div>

                <br />

                 <div class="row equal">
                     <div class="col-xs-6 col-sm-1">
                               <asp:Label ID="Label7" runat="server"  Font-Size="18px" Text="4." Style="font-family: 'Times New Roman', Times, serif;  "></asp:Label>
                         </div>
                         <div class="col-xs-6 col-sm-4">
                               <asp:TextBox ID="txt4" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-1">
                               <asp:Label ID="Label8" runat="server"  Font-Size="18px" Text="9." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                         </div>
                        <div class="col-xs-6 col-sm-4">
                               <asp:TextBox ID="txt9" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                </div>

                <br />

                 <div class="row equal">
                         <div class="col-xs-6 col-sm-1">
                               <asp:Label ID="Label9" runat="server"  Font-Size="18px" Text="5." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                         <div class="col-xs-6 col-sm-4">
                               <asp:TextBox ID="txt5" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                         <div class="col-xs-6 col-sm-1">
                               <asp:Label ID="Label10" runat="server"  Font-Size="18px" Text="10." Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                        <div class="col-xs-6 col-sm-4">
                               <asp:TextBox ID="txt10" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                </div>

                <br />
                <br />

                   <div class="row equal">
                                 <div class="col-xs-6 col-sm-1"></div>
                                 <div class="col-xs-6 col-sm-8" >
                                 <asp:ImageButton ID="img_andpr" runat="server" ImageUrl="../Resources/images/B_Update.png" Height="40px"   />
                                 <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="40px"  Style="margin-left:10px"  />
                              
                                <asp:ImageButton ID="imgprint" runat="server" ImageUrl="../Resources/images/B_Print.png" Height="40px" Style="margin-left:10px"  />
                                <asp:ImageButton ID="imgfulldoc_submit" runat="server" ImageUrl="../Resources/aimages/Full_Docs_Submit.png" Height="40px" Style="margin-left:10px"  />

                                </div>
                       
                  </div>
                  <br />
               
                       <span style="color:brown; font-size:18px;"><b>Vin Series Checking</b></span>

                    <br />
                <br />

                <div class="row equal">
                        <div class="col-xs-6 col-sm-2">
                               <asp:Label ID="lblvin_series" runat="server"  Font-Size="18px" Text="Vin Series" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                         </div>
                         <div class="col-xs-6 col-sm-2">
                               <asp:TextBox ID="txtvin_series" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                      <div class="col-xs-6 col-sm-1">
                             <asp:ImageButton ID="imgsearch" runat="server" ImageUrl="../Resources/images/Search_Icon.png" Height="30px"   />

                         </div>
                      
                </div>

                <br />
                <br />

                </div>
            </div>
         </div>

</asp:Content>
