<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Model_Specification.aspx.cs" Inherits="Auto_Pac.Sales.Model_Specification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
   .main{
             box-shadow:5px 0 30px -5px #333, 5px 0 0 -5px #333;
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
       <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
         <div class="main">
               <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            <%--  <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Model</b></span>--%>
         <br />
             <br />
              <div style="padding-left:20px;">
           <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblmodesc" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Short Description<span style="color:red;">*</span></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_longdesc" class="form-control" runat="server" placeholder="EX: ELANTRA 1.6 4DR A"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lbldmodcode" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Code<span style="color:red;">*</span> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_modcode" class="form-control" runat="server" placeholder="EX: SDS4D261F"></asp:textbox>    
            </div>
               </div>
                  <br />
                   <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblmodgrp" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Group<span style="color:red;">*</span></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_modgrp" class="form-control" runat="server" placeholder="EX: ELANTRA"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lbldesc" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model Long Description<span style="color:red;">*</span> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_lngdesc" class="form-control" runat="server" placeholder=" "></asp:textbox>    
            </div>
               </div>
                  <br />
                     <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblmanucd" runat="server" for="inputEmail3"  font-size="18px" Text="Manufacturer Code"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddlmanfcode" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblpreff" runat="server" for="inputEmail3"  font-size="18px" Text="Chassis Prefix"  style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_preffix" class="form-control" runat="server" placeholder=" "></asp:textbox>    
            </div>
               </div>
                  <br />
                     <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblcoe" runat="server" for="inputEmail3"  font-size="18px" Text="COE Category"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddlcoectgy" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblcar" runat="server" for="inputEmail3"  font-size="18px" Text="Car Type"  style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_cartype" class="form-control" runat="server" placeholder=" "></asp:textbox>    
            </div>
               </div>
                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblfrancode" runat="server" for="inputEmail3"  font-size="18px" Text="Franchise Code"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddl_franchise" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="Label8" runat="server" for="inputEmail3"  font-size="18px" Text="Model Type"  style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddl_modtype" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>
            </div>
                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-4">
                 <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px" Text="Additional 6 Months Road Tax(Standard)"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-4">
                    <asp:textbox id="txt_rdtax" class="form-control" runat="server" placeholder=" "></asp:textbox>    
            </div>
                        </div>
                  <br />
                    <div class="row equal">
             <div class="col-xs-6 col-sm-4">
                  <asp:label id="Label2" runat="server" for="inputEmail3"  font-size="18px" Text="Additional 6 Months Road Tax(Compressed Natural Gas)"  style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-4">
                    <asp:textbox id="txt_gas" class="form-control" runat="server" placeholder=" "></asp:textbox>    
            </div>
            </div>
                  <br />
                    <div class="row equal">
                        <div class="col-xs-6 col-sm-2">
                    <asp:CheckBox ID="cbdisplay" runat="server" />
                     &nbsp;  <asp:label id="lbldisplay" runat="server" for="inputEmail3"  font-size="18px" Text="Display For Sales"   style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                         <div class="col-xs-6 col-sm-3">
                         <asp:CheckBox ID="cbprclist" runat="server" />
                      &nbsp;  <asp:label id="lblprclist" runat="server" for="inputEmail3"  font-size="18px" Text="Display In Price List"   style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                              </div>
                  <br />
                     <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Standard Specification</b></span>
                  <br />
            <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblengine" runat="server" for="inputEmail3"  font-size="18px" Text="Engine Type"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_engine" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lbldisp" runat="server" for="inputEmail3" Text="Displacement(cc)"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_displacment" class="form-control" runat="server" placeholder=" "></asp:textbox>    
            </div>
               </div>
                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblbore" runat="server" for="inputEmail3"  font-size="18px" Text="Bore X Stroke(mm)"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_boreX" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblratio" runat="server" for="inputEmail3" Text="Compression Ratio"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="txt_ratio" class="form-control" runat="server" placeholder=" "></asp:TextBox>
                        </div>
               </div>
                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblpower" runat="server" for="inputEmail3"  font-size="18px" Text="Max.Power(kW/rpm)"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_power" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:label id="lbltorque" runat="server" for="inputEmail3" Text="Max.Torque(N.m/rpm)"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="txt_torque" class="form-control" runat="server" placeholder=" "></asp:TextBox>
                        </div>
               </div>
                  <br />
                     <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbllubricant" runat="server" for="inputEmail3"  font-size="18px" Text="Lubricant Capacity(litre)"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_lubricant" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                         </div>
                  <br />
                    <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Brakes</b></span>
                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblgeneral" runat="server" for="inputEmail3"  font-size="18px" Text="General"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_general" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                         <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblbraketype" runat="server" for="inputEmail3"  font-size="18px" Text="Front Brake Type"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_fntbrake" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
              
                         </div>
                  <br />
                     <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblrear" runat="server" for="inputEmail3"  font-size="18px" Text="Rear Brake Type"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_rear" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                         <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblbooster" runat="server" for="inputEmail3"  font-size="18px" Text="Booster Size/Type"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_booster" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
         </div>
                  <br />
                      <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblcylinder" runat="server" for="inputEmail3"  font-size="18px" Text="Cylinder Diameter"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_cylinder" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                          </div>
                  <br />
                   <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Steering Wheel</b></span>
                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                 <asp:label id="lbltype" runat="server"  font-size="18px" Text="Steering Type"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_type" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                          <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblgearratio" runat="server"  font-size="18px" Text="Overall Steering Gear Ratio"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_gratio" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                          </div>
                  <br />
                        <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblwheel" runat="server"  font-size="18px" Text="Number Of Steering Wheel Turn"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_wheel" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                          <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblradius" runat="server"  font-size="18px" Text="Turning Radius at Wheel(m)"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_radius" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                          </div>
                  <br />
                     <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Suspension</b></span>
                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblfront" runat="server"  font-size="18px" Text="Front"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_front" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                          <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblsusrear" runat="server"  font-size="18px" Text="Rear"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_susrear" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                          </div>
                  <br />
                   <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblshock" runat="server"  font-size="18px" Text="Shock Absorber"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_shock" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                       </div>

                  <br />
                     <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Dimension(mm)</b></span>
                  <br />

                      <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbllength" runat="server"  font-size="18px" Text="Length"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_length" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                             <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblwidth" runat="server"  font-size="18px" Text="Width"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_width" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                       </div>
                  <br />
                   <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblheight" runat="server"  font-size="18px" Text="Height"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_height" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                             <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblwheelbase" runat="server"  font-size="18px" Text="Wheel Base"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_wbase" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                       </div>
                  <br />
                     <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblcargo" runat="server"  font-size="18px" Text="Cargo Area"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_cargo" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                         </div>

                  <br />
                   <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Accessories</b></span>
                  <br />
                     <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblaccess" runat="server" for="inputEmail3"  font-size="18px" Text="Standard Accessories"   style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lbstaccess" runat="server" class="form-control"></asp:ListBox>
            </div>
               <div class="col-xs-6 col-sm-1">
                   </div>

             <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="img_next" runat="server" ImageUrl="~/Resources/images/B_Nxt.png" />
                 <br />
                  <asp:ImageButton ID="img_prev" runat="server" ImageUrl="~/Resources/images/B_Pre.png"/>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lbstdacc" runat="server" class="form-control"></asp:ListBox>
            </div>
     </div>
                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblopt" runat="server" for="inputEmail3"  font-size="18px" Text="Optional Accessories"   style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lboptacc" runat="server" class="form-control"></asp:ListBox>
            </div>
               <div class="col-xs-6 col-sm-1">
                   </div>

             <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="img_optnxt" runat="server" ImageUrl="~/Resources/images/B_Nxt.png" />
                 <br />
                  <asp:ImageButton ID="img_optpre" runat="server" ImageUrl="~/Resources/images/B_Pre.png"/>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lboptaccess" runat="server" class="form-control"></asp:ListBox>
            </div>
     </div>
                  <br />

                    <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblpromo" runat="server" for="inputEmail3"  font-size="18px" Text="Promotion"   style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lbpromo" runat="server" class="form-control"></asp:ListBox>
            </div>
               <div class="col-xs-6 col-sm-1">
                   </div>

             <div class="col-xs-6 col-sm-1">
                    <asp:ImageButton ID="Img_pnxt" runat="server" ImageUrl="~/Resources/images/B_Nxt.png" />
                 <br />
                  <asp:ImageButton ID="Img_pre" runat="server" ImageUrl="~/Resources/images/B_Pre.png"/>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:ListBox ID="lbpromotion" runat="server" class="form-control"></asp:ListBox>
            </div>
     </div>
                  <br />
                <div class="row" style="margin-left:230px;">

            <asp:ImageButton ID="ImageSubmit" runat="server" ImageUrl="~/Resources/images/B_Add.png"/> 
            <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="~/Resources/images/B_Update.png" Style="margin-left:8px;"/>
            <asp:ImageButton ID="ImageDelete" runat="server" ImageUrl="~/Resources/images/B_Delete.png" Style="margin-left:8px;"/> 
        </div>
      </div>           <br />
                  <br />
                  <div class="row" >
                       <div class="col-xs-6 col-sm-2"></div>

                  
              <div class=" col-xs-6 col-sm-5">
                <asp:GridView ID="Gridview_model" runat="server" AutoGenerateColumns="false"  CellPadding="4"  ForeColor="#333333" GridLines="None"
                       Font-Size="Small" PageSize="50"
                        HorizontalAlign="Center" Height="10px" VerticalAlign="Bottom" Wrap="False">
                      <Columns>
                          <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                             <ItemTemplate>
                                <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                            </ItemTemplate>
                                </asp:TemplateField>
                                      <asp:BoundField HeaderText="Model Short Description" DataField="Model_desc" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="225px" />
                                      <asp:BoundField HeaderText="Model Group" DataField="Model_Group" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                      <asp:BoundField HeaderText="Model Code" DataField="Model_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                     
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
                  </div>
           <br />
             </div>
        

</asp:Content>
