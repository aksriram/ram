<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Shipment_master.aspx.cs" Inherits="Auto_Pac.Sales.Shipment_master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="../tabs.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.7.custom.min.js"></script>
  <script type="text/javascript">
		$(function() {

			var $tabs = $('#tabs').tabs();
	
			$(".ui-tabs-panel").each(function(i){
	
			  var totalSize = $(".ui-tabs-panel").size() - 1;
	
			  if (i != totalSize) {
			      next = i + 2;
		   		  $(this).append("<a href='#' class='next-tab mover' rel='" + next + "'>Next Page &#187;</a>");
			  }
	  
			  if (i != 0) {
			      prev = i;
		   		  $(this).append("<a href='#' class='prev-tab mover' rel='" + prev + "'>&#171; Prev Page</a>");
			  }
   		
			});
	
			$('.next-tab, .prev-tab').click(function() { 
		           $tabs.tabs('select', $(this).attr("rel"));
		           return false;
		       });
       

		});
    </script>
     <style type="text/css">
       .the-legend {
    border-style: none;
    border-width: 0;
     color:brown;
    /*font-size: 20px;*/
    line-height: 15px;
    margin-bottom: 0;
   }
  .the-fieldset {
    border: 2px groove threedface #444;
    border-radius:08px;
    
         
    -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
    }
    </style>
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
     <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
       <div class="main">
          <br />
       <asp:Label ID="lblpagetitle" runat="server" Text=""></asp:Label>
         <br />
        <br />
        <div style="padding-left:20px;">
        <div>
		<div id="tabs">
		
    		<ul>
        		<li style="background-image:url(../Resources/images/BNSP.png); width: 180px; height: 30px;"><a href="#fragment-1"> </a></li>
               	<li style="background-image:url(../Resources/images/BUS.png); width: 120px; height: 30px;"><a href="#fragment-2"></a></li>
        		<li style="background-image:url(../Resources/images/BSH.png); width: 126px; height: 30px;"><a href="#fragment-3"></a></li>
                
                  </ul>
                <div id="fragment-1" class="ui-tabs-panel">
                     <asp:label id="Label8" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
                  <br />
                  <br />
                    <div class="row equal">
                         <div class="col-xs-6 col-sm-12" style="border:solid #333 thin; border-radius:05px;">
                          <P style="font-size:18px; font-family:'Times New Roman', Times, serif;">
                              You are allowed to enter one shipment entry for a particular month.If you wish
                              to add or remove entries for previous months,please go to the 'Shipment History' tab instead.
                          </P>
                        </div>
                    </div>
                    <br />
                     <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                   <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Shipment Date Of Entry<span style="color:red;">*</span> </asp:label>
                    </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:TextBox ID="txt_entrydate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="img_calend" runat="server" ImageUrl="~/Resources/images/B_Calendr.png" />
                         </div>
                          <div class="col-xs-6 col-sm-3">
                   <asp:label id="Label2" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Estimated Date Of Arrival<span style="color:red;">*</span> </asp:label>
                    </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:TextBox ID="txt_arrivaldate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="img_cal" runat="server" ImageUrl="~/Resources/images/B_Calendr.png" />
                         </div>
                    </div>
                    <br />
                      <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label3" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Model Description<span style="color:red;">*</span> </asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                  <asp:DropDownList ID="ddlmodeldesc" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                               </div>
                           <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label4" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Model Code<span style="color:red;">*</span> </asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txt_code" class="form-control" runat="server" placeholder=""></asp:TextBox>
                               </div>
                            </div>
                    <br />
                       <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label5" runat="server" for="inputEmail3"  font-size="18px"  Text="OCC Number" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txt_OCCno" class="form-control" runat="server" placeholder=""></asp:TextBox>
                               </div>
                           <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label6" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Exterior Colour Code<span style="color:red;">*</span></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:DropDownList ID="ddlexterior" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                               </div>
                            </div>
                    <br />
                      <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label7" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Interior Colour Code<span style="color:red;">*</span></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                <asp:DropDownList ID="ddlinterior" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                               </div>
                           <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label9" runat="server" for="inputEmail3"  font-size="18px"  Text="Type" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txt_type" class="form-control" runat="server" placeholder=""></asp:TextBox>
                               </div>
                            </div>
                    <br />
                     <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label10" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Quantity<span style="color:red;">*</span></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txt_quantity" class="form-control" runat="server" placeholder=""></asp:TextBox>
                               </div>
                        </div>
                    <br />
                     <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                         
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                <asp:ImageButton ID="Img_add" runat="server" ImageUrl="~/Resources/images/B_Add.png" />
                                <asp:ImageButton ID="Img_clear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" style="margin-left:15px;" />
                               </div>
                        </div>
                  </div>

           <%-- update shipment--%>
            <div id="fragment-2" class="ui-tabs-panel">
                     <asp:label id="Label11" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
                  <br />
                  <br />
                    <div class="row equal">
                         <div class="col-xs-6 col-sm-3">
                               <asp:label id="Label12" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Shipment Entry</asp:label>
                             </div>
                          <div class="col-xs-6 col-sm-3">
                               <asp:DropDownList ID="ddlshipentry" class="form-control" runat="server">
                                <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                              </div>
                        </div>
                <br />
                <br />

                 <div class="row equal">
                       <div class="col-xs-6 col-sm-12">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                    Font-Size="Small" PageSize="50" 
                                   HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" AutoGenerateSelectButton="true">
                                        <Columns>
                                             <asp:BoundField HeaderText="Serial No" DataField="serial_no" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" />
                                             <asp:BoundField HeaderText="Model" DataField="model" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="230px" />
                                             <asp:BoundField HeaderText="Model Code" DataField="model_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Entry Date" DataField="entry_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Arrival Date" DataField="arrival_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Colour Code" DataField="color_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Type" DataField="type" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                             <asp:BoundField HeaderText="OCC Number" DataField="occ_num" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Interior Code" DataField="interior_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="140px" />
                                             <asp:BoundField HeaderText="Quantity" DataField="quantity" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />

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
                   <div class="row equal">
                       
                    <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label13" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Model Description<span style="color:red;">*</span> </asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:DropDownList ID="ddlretrivedesc" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                               </div>
                           <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label14" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Model Code<span style="color:red;">*</span> </asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txtmodel" class="form-control" runat="server" placeholder=""></asp:TextBox>
                               </div>
                            </div>
                      
                <br />
                 <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                   <asp:label id="Label15" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Shipment Date Of Entry<span style="color:red;">*</span> </asp:label>
                    </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:TextBox ID="txtsentry" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Resources/images/B_Calendr.png" />
                         </div>
                          <div class="col-xs-6 col-sm-3">
                   <asp:label id="Label16" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Estimated Date Of Arrival<span style="color:red;">*</span> </asp:label>
                    </div>
                     <div class="col-xs-6 col-sm-2">
                          <asp:TextBox ID="txtearrival" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                         </div>
                     <div class="col-xs-6 col-sm-1">
                          <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Resources/images/B_Calendr.png" />
                         </div>
                    </div>
                    <br />
              
                       <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label19" runat="server" for="inputEmail3"  font-size="18px"  Text="OCC Number" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txt_Uocc" class="form-control" runat="server" placeholder=""></asp:TextBox>
                               </div>
                           <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label20" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Exterior Colour Code<span style="color:red;">*</span></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:DropDownList ID="ddlUexterior" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                               </div>
                            </div>
                    <br />
                      <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label21" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Interior Colour Code<span style="color:red;">*</span></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                <asp:DropDownList ID="ddlUinterior" class="form-control" runat="server">
                                                    <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                               </div>
                           <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label22" runat="server" for="inputEmail3"  font-size="18px"  Text="Type" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txtUtype" class="form-control" runat="server" placeholder=""></asp:TextBox>
                               </div>
                            </div>
                    <br />
                     <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                          <asp:label id="Label23" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Quantity<span style="color:red;">*</span></asp:label>
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                 <asp:TextBox ID="txtUquantity" class="form-control" runat="server" placeholder=""></asp:TextBox>
                               </div>
                        </div>
                    <br />
                     <div class="row equal">
                    <div class="col-xs-6 col-sm-3">
                         
                        </div>
                           <div class="col-xs-6 col-sm-3">
                                <asp:ImageButton ID="img_update" runat="server" ImageUrl="~/Resources/images/B_Update.png" />
                                  <asp:ImageButton ID="img_del" runat="server" ImageUrl="~/Resources/images/B_Delete.png" style="margin-left:15px;" />
                                <asp:ImageButton ID="img_Uclear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" style="margin-left:15px;" />
                               </div>
                        </div>
                </div>
                       <%-- update shipment--%>
            <div id="fragment-3" class="ui-tabs-panel">
                 <asp:label id="Label17" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
                  <br />
                  <br />
                    <div class="row equal">
                         <div class="col-xs-6 col-sm-3">
                               <asp:label id="Label18" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;">Shipment Entry</asp:label>
                             </div>
                          <div class="col-xs-6 col-sm-3">
                               <asp:DropDownList ID="ddlhistory" class="form-control" runat="server">
                                <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                              </div>
                        </div>
                <br />
                   <div class="row equal">
                       <div class="col-xs-6 col-sm-12">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CellPadding="4"  ForeColor="#333333" GridLines="None" 
                                    Font-Size="Small" PageSize="50" 
                                   HorizontalAlign="left" Height="10px" VerticalAlign="Bottom" Wrap="False" AutoGenerateSelectButton="true">
                                        <Columns>
                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="40px">
                                                <ItemTemplate>
                                                         <asp:CheckBox ID="chkCtrl" runat="server" Width="40px" />
                                                          </ItemTemplate>
                                                     </asp:TemplateField>
                                             <asp:BoundField HeaderText="Model" DataField="smodel" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="230px" />
                                             <asp:BoundField HeaderText="Model Code" DataField="smodel_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Entry Date" DataField="sentry_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Arrival Date" DataField="sarrival_date" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />
                                             <asp:BoundField HeaderText="Colour Code" DataField="scolor_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" />
                                             <asp:BoundField HeaderText="Type" DataField="stype" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="120px" />
                                             <asp:BoundField HeaderText="OCC Number" DataField="socc_num" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="150px" />
                                             <asp:BoundField HeaderText="Interior Code" DataField="sinterior_code" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="140px" />
                                             <asp:BoundField HeaderText="Quantity" DataField="squantity" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="130px" />

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

                 <div class="row equal">
               <div class="col-sm-5">
                  <fieldset class="well the-fieldset">
                     <legend class="the-legend">Update Remark(s) </legend>
                        <p style="font-family:'Times New Roman', Times, serif; font-size:18px;">Please tick on the checkboxes of records you want to update with the following remarks enterd below:</p> 
                          <asp:TextBox ID="txt_remarks" class="form-control" runat="server" placeholder="" Height="60px"></asp:TextBox>
                      <br />
                      <br />
                        <asp:ImageButton ID="img_updte" runat="server" ImageUrl="~/Resources/images/B_Update.png"/>
                        <asp:ImageButton ID="Img_clr" runat="server" ImageUrl="~/Resources/images/B_Clear.png" style="margin-left:15px;"/>

                    </fieldset>
                   </div>
                 <div class="col-sm-1">
                 </div>

                   <div class="col-sm-5">
                   <fieldset class="well the-fieldset">
                     <legend class="the-legend">Update ETA Date</legend>
                           <p style="font-family:'Times New Roman', Times, serif; font-size:18px;">Specify the required ETA and tick on the respective records in the list above.</p> 
                         <asp:TextBox ID="txt_date" class="form-control" runat="server" placeholder="EX: dd/mm/yyyy" ></asp:TextBox>
                        <br />
                      <br />
                  <asp:ImageButton ID="Img_updt" runat="server" ImageUrl="~/Resources/images/B_Update.png"/>
                   </fieldset>

                   </div>
                 </div>

             </div>
            </div>
           </div>
         </div>
</asp:Content>
