<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleStock.aspx.cs" Inherits="Sales_VehicleStock" %>

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
        <asp:Label ID="lblpagetitle" runat="server" Text=""></asp:Label>
                <%-- <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Vehicle Stock Availability</b></span>--%>
         <br />
        <br />
        <div style="padding-left:20px;">
           <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                   <asp:label id="lblpassport" runat="server"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Model<span style="color:red;">*</span></asp:label>
               </div>
               <div class="col-xs-6 col-sm-3">
                    <asp:DropDownList ID="ddlmodel" class="form-control" runat="server" AutoPostBack="true">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:DropDownList>
               </div>
            </div>

            <br />
            <div class="row">

                <asp:Panel ID="pnlAvailability" Font-Size="Medium"  GroupingText="Stock Availability" runat="server">
           
               <asp:GridView ID="gvvehicleStock" Font-Size="Medium" AllowPaging="false" CssClass="combo_txt" EmptyDataText="No stock!" runat="server" Visible="true"  DataKeyNames="colorbymodel_tnx_id,ext_color_description"  >
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
                      <asp:CommandField ShowSelectButton="false" />
               </Columns>
               
            </asp:GridView>
            </asp:Panel>

            </div>

            <br />

            <div class="row equal" style="font-family:'Times New Roman', Times, serif; color:red; font-size:16px;">
                <div class="col-xs-6 col-sm-2"></div>
                 <div class="col-xs-10 col-sm-8" style="border:solid #333 thin; border-radius:05px;">
                 <p>
                                             <b><h4>Disclaimer:</h4></b> The expected Shipment arraival dates in months depicted are <b>estimate only</b>. 
                                             While we try our best to keep the stock details up to date, they do not necessarily reflect the latest information available from the HMC
                                             due to factory glitches, unions strikes vessel delays, homologations and other events which are out of our control.
                                             <br />
                                             <br/>
                                             You are reminded to advice your customers that the expected shipment arrival dates <b>may be subjected to delays.</b>


                                         </p>
                     </div>
                  <div class="col-xs-6 col-sm-1"></div>

            </div>
            <br />
            <br />
         </div>
    </div>
</div>

</asp:Content>

