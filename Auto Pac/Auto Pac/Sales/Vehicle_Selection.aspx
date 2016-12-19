<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Vehicle_Selection.aspx.cs" Inherits="Sales_Vehicle_Selection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

      <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
      
            
    <div class="main">
          <br />
                    <asp:Label ID="lblpagetitle" runat="server" Text=""></asp:Label>
                <%-- <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Vehicle Selection</b></span>--%>
         <br />
        <br />
        <div style="padding-left:20px;">

            <div class="row equal">
                
                <div class="col-xs-6 col-sm-2">
                     <asp:Label ID="lblmodel" runat="server" Text="Model"  Font-Size="18px"  Style="font-family:'Times New Roman', Times, serif; " ></asp:Label>
                </div>
                <div class="col-xs-6 col-sm-3">
                     <asp:DropDownList ID="ddlmodel" class="form-control" runat="server" >
                      <asp:ListItem Text="--Select--" Value="0"></asp:ListItem> 
                  </asp:DropDownList>
                </div>
            </div>

            <br />

            <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                     <asp:Label ID="lblcolor" runat="server" Text="Color" Font-Size="18px"  Style="font-family:'Times New Roman', Times, serif; "></asp:Label>&nbsp;&nbsp;
                </div>
                <div class="col-xs-6 col-sm-3">
                     <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" >
                      <asp:ListItem Text="--Select--" Value="0"></asp:ListItem> 
                  </asp:DropDownList>
                </div>
            </div>

            <br />

            <div class="row">
                <div>
             <asp:GridView ID="gvvehicleStock" Font-Size="Medium" AllowPaging="false" CssClass="combo_txt" EmptyDataText="No stock!" runat="server" Visible="true"  DataKeyNames="colorbymodel_tnx_id,ext_color_description">
               <Columns>
                   <asp:CommandField ShowSelectButton="True" />
               <%--<asp:HyperLinkField HeaderText="Exterior Colour" ControlStyle-Font-Size="Medium" DataNavigateUrlFields="modelcode" DataTextField="Modelcode" />--%>
                   <asp:BoundField ItemStyle-Width="0px" DataField="modelcode" HeaderText="Modelcode"/>
                   <asp:BoundField ItemStyle-Width="0px" DataField="colorbymodel_tnx_id" HeaderText="colorbymodel_tnx_id" Visible="false"/>
                    <asp:BoundField ItemStyle-Width="10px" DataField="modelshortdesc" HeaderText="Modelshortdesc"/>
                     <asp:BoundField ItemStyle-Width="50px" DataField="occno" HeaderText="OCCNO"/>
                   <asp:BoundField ItemStyle-Width="50px" DataField="int_color_code" HeaderText="int_color_code"/>
                      <asp:BoundField ItemStyle-Width="10px" DataField="int_color_description" HeaderText="int_color_description"/>
                   <asp:BoundField ItemStyle-Width="10px" DataField="ext_color_code" HeaderText="ext_color_code"/>
                      <asp:BoundField ItemStyle-Width="50px" DataField="ext_color_description" HeaderText="ext_color_description"/>
                      <asp:BoundField ItemStyle-Width="10px" DataField="modelgroup" HeaderText="ModelGroup" Visible="false"/>
                      <asp:BoundField ItemStyle-Width="10px" DataField="ext_type" HeaderText="ext_type" Visible="false"/>
               </Columns>
               
            </asp:GridView>
            </div>
            </div>

            <div class="row">
                <div class="col-xs-6 col-sm-1"></div>
                <div class="col-xs-11 col-sm-10" style="border:thin solid #333; border-radius:05px;">
                    <asp:Table ID="Table3" runat="server" style="margin-top:40px;">
            <asp:TableRow>
     <asp:TableCell>
         <asp:Label ID="lblNotice" runat="server" ForeColor="Red" Text="Important Notice: Standard Specification and Standard Accessories are subjected to changes without prior notice. Please reconfirm before the booking."></asp:Label>
     </asp:TableCell>
     </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell ColumnSpan="6">
             <asp:Panel ID="PanelSpecification" Font-Size="Medium" GroupingText="Standard Specification" runat="server" >
            <asp:Table ID="table5" runat="server">
            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="Engine Type :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                     <asp:Label ID="lblEngineType" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="Displacement (cc) :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblDisplacement" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="Bore x Stroke (mm) :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblBoreStroke" runat="server" CssClass="combo_txt"></asp:Label> 
               </asp:TableCell> 
            </asp:TableRow>
             <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label8" runat="server" Text="Compression Ratio :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblCompressionRatio" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
             <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label9" runat="server" Text="Max. Power (kW/rpm) :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblMaxPower" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
             <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label10" runat="server" Text="Max. Torque (N.m/rpm) :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblMaxTorque" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
              <asp:TableRow ID="rowLubricant">
               <asp:TableCell>
                    <asp:Label ID="Label11" runat="server" Text="Lubricant Capacity (litre) :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblLubricant" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow ID="rowSteeringWheelType">
            <asp:TableCell>
                <asp:Label ID="Label27" runat="server" Text="Steering Wheel Type :"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lblSteeringWheelType" runat="server"></asp:Label>
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label28" runat="server" Text="Overall Steering Gear Ratio :"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lblSteeringGearRatio" runat="server"></asp:Label>
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="La" runat="server" Text="Number of Steering Wheel Turn :"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lblNumberWheelTurn" runat="server"></asp:Label>
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label29" runat="server" Text="Turning Radius at Wheel (m) :"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lblTurningRadius" runat="server"></asp:Label>
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label13" runat="server" Text="Suspension Front :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblSusFront" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label14" runat="server" Text="Suspension Rear :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblSusRear" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label15" runat="server" Text="Shock Absorber :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblShockAbsorber" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label16" runat="server" Text="General Brakes :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblGeneralBrakes" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label17" runat="server" Text="Front Brake Type :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblFrontBrakeType" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label18" runat="server" Text="Rear Brake Type :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblRearBrakeType" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow ID="rowBooster">
               <asp:TableCell>
                    <asp:Label ID="Label19" runat="server" Text="Booster Size/Type :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblBooster" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
             <asp:TableRow ID="rowCylinder">
               <asp:TableCell>
                    <asp:Label ID="Label20" runat="server" Text="Cylinder Diameter :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblCylinderDmt" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
             <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label21" runat="server" Text="Length (mm) :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblLength" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
             <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label22" runat="server" Text="Width (mm) :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblWidth" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
             <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label23" runat="server" Text="Height (mm) :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblHeight" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
             <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label24" runat="server" Text="Wheelbase (mm) :" CssClass="combo_txt"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:Label ID="lblWheelbase" runat="server" CssClass="combo_txt"></asp:Label>
               </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow ID="rowCargoArea">
            <asp:TableCell>
                <asp:Label ID="Label30" runat="server" Text="Overall Length x Width x Height (mm) - Cargo Area :"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lblCargoArea" runat="server" ></asp:Label>
            </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
            </asp:Panel> 
        </asp:TableCell>
     </asp:TableRow>
         </asp:Table>
                </div>

                <div class="col-xs-6 col-sm-1"></div>
            </div>

        </div>
    </div>

    </div>



</asp:Content>

