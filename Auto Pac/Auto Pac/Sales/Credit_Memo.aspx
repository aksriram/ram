<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Credit_Memo.aspx.cs" Inherits="Auto_Pac.Sales.Credit_Memo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
		        $('#<%=txtregdate.ClientID%>').bootstrapMaterialDatePicker
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
        <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="18px"  Text="" style="font-family: 'Times New Roman', Times, serif;"> </asp:label>
     <%-- <span style="color: brown; font-size: 23px; margin-left: 30px;"><b>Credit Memo</b></span>--%>
        <br />
       <br />
       <br />
        <div style="padding-left:20px;">
            <div class="row equal">
                 <div class="col-xs-6 col-sm-6">
                  <asp:label id="lblheading" runat="server" font-size="18px"   style="font-family: 'Times New Roman', Times, serif;"><b>Instruction for Payment of 1st Installment/Insurance premium</b></asp:label>
                 </div>   
            </div>

            <br />

             <div class="row equal">
                  <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblcontnumber" runat="server"   font-size="18px" Text="Contract Number"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txtcont_number" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
             </div>

            <br />

             <div class="row equal">
                  <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblregdate" runat="server"   font-size="18px" Text="Registration Date"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txtregdate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
            </div>
                 <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblregnumber" runat="server"   font-size="18px" Text="Registration Number"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txtregnumber" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
             </div>

           

            <br />

            <div class="row equal">
                  <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblmodel" runat="server"   font-size="18px" Text="Model"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txtmodel" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblbuyername" runat="server"   font-size="18px" Text="Buyer's Name"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txtbuyername" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
             </div>

           

            <br />

             <div class="row equal">
                  <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblinstallment" runat="server"   font-size="18px" Text="First Installment $"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txtinstallment" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                 <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblfincompany" runat="server"   font-size="18px" Text="Finance Company"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                  </div>
                  <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddlfincompany" class="form-control" runat="server">
                                          <asp:ListItem Text="No Finance" Value="0"></asp:ListItem>
                                          </asp:dropdownlist>
            </div> 
             </div>

            <br />

            <div class="row equal">
                  <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblpremium" runat="server"   font-size="18px" Text="Insurance premium $"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                    <asp:textbox id="txtpremium" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
                 <div class="col-xs-6 col-sm-2">
                  <asp:label id="lblinscompany" runat="server"   font-size="18px" Text="Insurance Company"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                  </div>
                  <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddlinscompany" class="form-control" runat="server">
                                          <asp:ListItem Text="No Finance" Value="0"></asp:ListItem>
                                          </asp:dropdownlist>
            </div> 
             </div>

            <br />

            
             <div class="row equal">
                 <div class="col-xs-6 col-sm-8">
                      <asp:label id="Label1" runat="server"   font-size="14px" Text="*For cases after Registration,please print and fill in the Request Form for instruction to pay the1st Installment/Insurance premium."  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                 </div>
             </div>

            

            <div class="row equal">
                 <div class="col-xs-6 col-sm-6">
                      <asp:label id="Label2" runat="server"   font-size="14px" Text="*The Request Form must be submitted to Invoicing Section."  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                 </div>
             </div>

            <br />
            <br />

             <div class="row" >
               
                <div class="col-xs-6 col-sm-2"></div>

               <div class="col-xs-8"  >
               
               <asp:ImageButton ID="imgsave_print" runat="server" ImageUrl="~/Resources/images/B_Save_Print.png" Height="40px" />
               <asp:ImageButton ID="imgprint" runat="server" ImageUrl="~/Resources/images/B_Print.png" Height="40px" Width="40px" Style="margin-left:20px;"/>
               <asp:ImageButton ID="imgprint_req" runat="server" ImageUrl="~/Resources/images/BPrintRequest.png" Height="40px" Style="margin-left:20px;"/>
            </div>
                </div>

            <br />
            <br />

            </div>
       </div>
         </div>
</asp:Content>
