<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Control_Parameters.aspx.cs" Inherits="Auto_Pac.Sales.Control_Parameters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">

        .main{
             box-shadow:5px 0 30px -5px #333, 5px 0 0 -5px #333;
        }
        
        .the-legend {
            border-style: none;
            border-width: 0;
            color: brown;
            line-height: 20px;
            margin-bottom: 0;
        }

        .the-fieldset {
            border: 2px groove threedface #444;
            -webkit-box-shadow: 0px 0px 0px 0px #000;
            box-shadow: 0px 0px 0px 0px #000;
            background-color: white;
        }
    </style>
      <script src="../Resources/js/bootstrap-material-datetimepicker.js"></script>
    <link href="../Resources/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
		    (function (i, s, o, g, r, a, m) {
		        i['GoogleAnalyticsObject'] = r;
		        i[r] = i[r] || function () {
		            (i[r].q = i[r].q || []).push(arguments)
		        }, i[r].l = 1 * new Date();
		        a = s.createElement(o),
					m = s.getElementsByTagName(o)[0];
		        a.async = 1;
		        a.src = g;
		        m.parentNode.insertBefore(a, m)
		    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

		    ga('create', 'UA-60343429-1', 'auto');
		    ga('send', 'pageview');
		</script>
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('#<%=txt_frmdate.ClientID%>').bootstrapMaterialDatePicker
             ({
			    time: false,
			    clearButton: true
             });
		        $('#<%=txt_todate.ClientID%>').bootstrapMaterialDatePicker
            ({
                time: false,
                clearButton: true
            });

      
		    $('#date').bootstrapMaterialDatePicker
			({
			    time: false,
			    clearButton: true
			});

		    $('#time').bootstrapMaterialDatePicker
			({
			    date: false,
			    shortTime: false,
			    format: 'HH:mm'
			});

		
			$('#date_format').bootstrapMaterialDatePicker
			({
			    format: 'dddd DD MMMM YYYY - HH:mm'
			});
			$('#date-fr').bootstrapMaterialDatePicker
			({
			    format: 'DD/MM/YYYY HH:mm',
			    lang: 'fr',
			    weekStart: 1,
			    cancelText: 'ANNULER',
			    nowButton: true,
			    switchOnClick: true
			});

			$('#date-end').bootstrapMaterialDatePicker
			({
			    weekStart: 0, format: 'DD/MM/YYYY HH:mm'
			});
			$('#date-start').bootstrapMaterialDatePicker
			({
			    weekStart: 0, format: 'DD/MM/YYYY HH:mm', shortTime: true
			}).on('change', function (e, date) {
			    $('#date-end').bootstrapMaterialDatePicker('setMinDate', date);
			});

			$('#min-date').bootstrapMaterialDatePicker({ format: 'DD/MM/YYYY HH:mm', minDate: new Date() });

			$.material.init()
		});
		</script>
      <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
         <div class="main">
                <asp:label id="lblpagetitle" runat="server" for="inputEmail3" Text=""  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
             <%-- <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Control Parameters</b></span>--%>
         <br />
             <br />
              <div style="padding-left:20px;">
                    
                            
                                 <span style="color: brown; font-size: 18px; margin-left: 0px;"><b>Spotter Commission</b></span>
                           
                           <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblcategory" runat="server" for="inputEmail3" Text="Category"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                    <asp:dropdownlist id="ddlcategory" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>

           
     </div>
<br />
      <div class="row equal">
            <div class="col-xs-6 col-sm-3">
                  <asp:label id="lblmax" runat="server" for="inputEmail3"  font-size="18px" Text="Maximum Spotter Commission"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_maxsc" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
             <div class="col-xs-6 col-sm-3">
                  <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px" Text="Minimum Deposit Amount"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_miniamt" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
          </div>

                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblminiETA" runat="server" for="inputEmail3" Text="Minimum ETA Month"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_miniETA" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:label id="lblmaxETA" runat="server" for="inputEmail3"  font-size="18px" Text="Maximum ETA Month"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_maxETA" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
     </div>
                  <br />
                      <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblprice" runat="server" for="inputEmail3" Text="Immediate Price Adjustment"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_price" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:label id="Label3" runat="server" for="inputEmail3"  font-size="18px" Text="Max Sales Consultant Accessory"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_sales" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
     </div>
                  <br />
                         <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label2" runat="server" for="inputEmail3" Text="Disable Booking"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                     <asp:dropdownlist id="ddlbookings" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:label id="Label4" runat="server" for="inputEmail3"  font-size="18px" Text="Bookings For Immediate"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                     <asp:dropdownlist id="ddlbookimd" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>
     </div>
                  <br />
                    <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                 <asp:label id="lbldrivedy" runat="server" for="inputEmail3" Text="Block Test Drive Days"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_drvdy" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:label id="lblbookdy" runat="server" for="inputEmail3"  font-size="18px" Text="Block Booking Days"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txt_bookdy" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
     </div>
                  <br />
                   
        <div class="row" >
                    <div class="col-xs-6 col-sm-3"></div>
            <div class="col-xs-6 col-sm-3">
            <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="~/Resources/images/B_Update.png"/>
            <asp:ImageButton ID="Image_print" runat="server" ImageUrl="~/Resources/images/B_Print.png" Style="margin-left:8px;"/> 
        </div>
            </div>


                  <br />
                  <br />
                  
                                <span style="color: brown; font-size: 18px; margin-left: 0px;"><b>Test Drive Report</b></span>
                            
         <div class="row equal">
               <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblfrmdt" runat="server" for="inputEmail3" Text="From Test Drive Date"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>

             <div class="col-xs-6 col-sm-2">
                    <asp:textbox id="txt_frmdate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
            </div>
               <div class="col-xs-6 col-sm-1">
                     <asp:ImageButton ID="Imgfrom" runat="server" ImageUrl="~/Resources/images/B_Calendr.png"/>
                   </div>

                          <div class="col-xs-6 col-sm-3">
                  <asp:label id="lbltodt" runat="server" for="inputEmail3"  font-size="18px" Text="To Test Drive Date"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-2">
                    <asp:textbox id="txt_todate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
            </div>
                    <div class="col-xs-6 col-sm-1">
                     <asp:ImageButton ID="Imgto" runat="server" ImageUrl="~/Resources/images/B_Calendr.png"/>
                   </div>


      </div>
                      
             
           <br />
           <div class="row">
               <div class="col-xs-6 col-sm-3"></div>
               <div class="col-xs-6 col-sm-1">
           <asp:ImageButton ID="Imgprint" runat="server" ImageUrl="~/Resources/images/B_Print.png" Style="margin-left:8px;"/> 
        </div>
               </div>
                       
                   </div>
             </div>
          <br />
       
          </div>
 
</asp:Content>
