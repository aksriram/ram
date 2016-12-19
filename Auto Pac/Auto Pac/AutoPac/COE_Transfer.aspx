<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="COE_Transfer.aspx.cs" Inherits="Auto_Pac.AutoPac.COE_Transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.7.custom.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
        $('#imgprint').click(function () {
            $('#imgupdate').hide();
        })
        });
    </script>

   

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
    
    <div class="wrapper" style="margin-left: 0px; padding-left: 10px; background-color: white;">


        <div class="main">
            <br />

         <asp:label id="lblpagetitle" runat="server"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:10px; margin-left:20px ;color: brown;"> </asp:label>
            <br />
            <br />
            <div style="padding-left: 20px;">

                <span style="color:brown; font-size:18px;"><b>Details of Contract</b></span>

                <br />
                <br />

                 <div class="row equal">
                     <div class="col-xs-6 col-sm-3">

                     </div>
                    <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbhyundai" runat="server" GroupName="rb"  AutoPostBack="true" OnCheckedChanged="rbhyundai_CheckedChanged"  />
                       <asp:Label ID="lblhyundai" runat="server" Font-Size="18px" Text="&nbsp;Hyundai" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                      <div class="col-xs-6 col-sm-2">
                         <asp:RadioButton ID="rbothers" runat="server" GroupName="rb" AutoPostBack="true"  />
                       <asp:Label ID="lblothers" runat="server" Font-Size="18px" Text="&nbsp;Others" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                    </div>
                </div>

                <br />

                 <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblordernum" runat="server"  Font-Size="18px" Text="Buyer's Order Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtorder_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblcontnum" runat="server"  Font-Size="18px" Text="Contract Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtcont_num" class="form-control" runat="server" placeholder=""></asp:TextBox>
                         </div>
                  </div>

                <br />
               

                <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblvin" runat="server"  Font-Size="18px" Text="VIN Number" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtvin" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblmodel" runat="server"  Font-Size="18px" Text="Model" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtmodel" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         </div>
                  </div>

                <br />
               

                <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblcolour" runat="server"  Font-Size="18px" Text="Colour" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtcolour" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblnric" runat="server"  Font-Size="18px" Text="Buyer's NRIC" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtnric" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         </div>
                  </div>

                <br />
               
                <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblname" runat="server"  Font-Size="18px" Text="Buyer's Name" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtname" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblconsultant" runat="server"  Font-Size="18px" Text="Sales Consultant" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtconsultant" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         </div>
                  </div>

                <br />
               
                 <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblcompany" runat="server"  Font-Size="18px" Text="Finance Company" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtcompany" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblprice" runat="server"  Font-Size="18px" Text="Selling Price" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtprice" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         </div>
                  </div>

                <br />
               
                 <span style="color:brown; font-size:18px;"><b>Select COE</b></span>

                <br />
                <br />

                 <div class="row equal">
                        <div class="col-xs-6 col-sm-3">
                          <asp:Label ID="lblbiddate" runat="server"  Font-Size="18px" Text="COE Bid Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtbid_date" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         
                         <asp:LinkButton ID="select_coe" runat="server" Text="Select a COE" Enabled="false" OnClick="select_coe_Click"></asp:LinkButton>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblamount" runat="server"  Font-Size="18px" Text="COE Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:TextBox ID="txtamount" class="form-control" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>
                         </div>
                  </div>

                <br />
                <br />

                <div class="row equal">
                     <div class="col-xs-6 col-sm-3"></div>
                  <div class="col-xs-6 col-sm-8">
                            <asp:ImageButton ID="imgupdate" runat="server"  ImageUrl="../Resources/images/B_Update.png" Height="35px"/>
                           <asp:ImageButton ID="imgclear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Height="35px" Style="margin-left:10px"  />
                            <asp:ImageButton ID="imgprint" runat="server"  ImageUrl="../Resources/images/B_Print.png" Height="35px" Style="margin-left:10px" OnClick="imgprint_Click"/>
                      <asp:ImageButton ID="imgprint_slip" runat="server" ImageUrl="../Resources/aimages/Print_Slip.png" Height="35px" Style="margin-left:10px"  />
                      <asp:ImageButton ID="imgdrop" runat="server" ImageUrl="../Resources/aimages/Drop_Allocation.png" Height="35px" Style="margin-left:10px"  />
                       </div>   
                </div>
                <br />
               
                <div id="printopt" runat="server" class="printopt" visible="false">
                    <span style="color: brown; font-size: 18px;"><b>Print Option</b></span>

                    <br />
                    <br />

                    <div class="row equal">
                        <div class="col-xs-6 col-sm-1">
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:RadioButton ID="rdconsultant" runat="server" GroupName="rb"  />
                            <asp:Label ID="lblconsult" runat="server" Font-Size="18px" Text="&nbsp;By Sales Consultant" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                        </div>
                        <div class="col-xs-6 col-sm-2">
                            <asp:RadioButton ID="rbconversation" runat="server" GroupName="rb"  />
                            <asp:Label ID="lblconv" runat="server" Font-Size="18px" Text="&nbsp;By Conversation" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:RadioButton ID="rballocate_date" runat="server" GroupName="rb"  />
                            <asp:Label ID="lblallocdate" runat="server" Font-Size="18px" Text="&nbsp;By Allocation Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                        </div>
                    </div>

                    <br />

                    <div class="row equal">
                        <div class="col-xs-6 col-sm-1">
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:RadioButton ID="rbmodel" runat="server" GroupName="rb" />
                            <asp:Label ID="lblmodel1" runat="server" Font-Size="18px" Text="&nbsp;By Model" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                        </div>
                        <div class="col-xs-6 col-sm-2">
                            <asp:RadioButton ID="rbimmediate" runat="server" GroupName="rb" />
                            <asp:Label ID="lblimmediate" runat="server" Font-Size="18px" Text="&nbsp;By Immediate" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:RadioButton ID="rbtrans_date" runat="server" GroupName="rb" />
                            <asp:Label ID="lbltrans" runat="server" Font-Size="18px" Text="&nbsp;By Trasfer Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>

                        </div>
                    </div>

                    <br />

                    <div class="row equal">
                        <div class="col-xs-6 col-sm-1">
                        </div>
                        <div class="col-xs-6 col-sm-4">
                            <asp:ImageButton ID="img_ok" runat="server" ImageUrl="../Resources/aimages/B_ok.png" Height="30px" />
                            <asp:ImageButton ID="img_cancel" runat="server" ImageUrl="../Resources/images/B_Cancel.png" Height="30px" Style="margin-left: 10px" />
                        </div>
                    </div>

                </div>
                <br />
                <div id="selectcoe" runat="server" visible="false">
                  <span style="color:brown; font-size:18px;"><b>Select COE</b></span>

                <br />
                <br />

                 <div class="row equal">
                        <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblbiddate1" runat="server"  Font-Size="18px" Text="COE Bid Date" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                        <asp:dropdownlist id="ddlbid_date" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                       
                                      </asp:dropdownlist>
                         </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:Label ID="lblamount1" runat="server"  Font-Size="18px" Text="COE Amount" Style="font-family: 'Times New Roman', Times, serif;"></asp:Label>
                       </div>
                     <div class="col-xs-6 col-sm-3">
                         <asp:dropdownlist id="ddlamount" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                       
                                      </asp:dropdownlist>
                         </div>
                  </div>
                    <br />
                    
                    
                 <div class="row">
                  
                   <div class="col-xs-6 col-sm-2" ></div>
                  <div class="col-xs-6 col-sm-8"  >
                     
                   <asp:GridView ID="Gridview_access" runat="server" style="overflow:auto" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None" 
                       Font-Size="Small" PageSize="50" 
                        HorizontalAlign="Left" Height="10px" VerticalAlign="Bottom" Wrap="False" Visible="true"  >
                      <Columns>
                          
                                      <asp:BoundField HeaderText="COE Amount" DataField="COE_amount" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                      <asp:BoundField HeaderText="COE Bid Date" DataField="COE_bid_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Number of COE's" DataField="Number_of_coe" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:CommandField ShowSelectButton="true" /> 
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
                    <br />
                    <br />

                    </div>


            </div>
            </div>
        </div>
</asp:Content>
