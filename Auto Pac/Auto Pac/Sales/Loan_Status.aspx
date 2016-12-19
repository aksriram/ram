<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Loan_Status.aspx.cs" Inherits="Auto_Pac.Sales.Loan_Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="../Resources/js/bootstrap-material-datetimepicker.js"></script>
    <link href="../Resources/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />

     <style type="text/css">

        .main{
             box-shadow:5px 0 30px -5px #333, 5px 0 0 -5px #333;
        }

    </style>
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
		        $('#<%=txt_submitdate.ClientID%>').bootstrapMaterialDatePicker
             ({
			    time: false,
			    clearButton: true
             });
		        $('#<%=txt_statusdate.ClientID%>').bootstrapMaterialDatePicker
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
          <br />
             <br />
              <div style="padding-left:20px;">
                   <div class="row equal">
                         <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblorder" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Buyer's Order Number</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_order" class="form-control" runat="server"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-1">
                 <asp:ImageButton ID="Img_buyerorder" runat="server" ImageUrl="~/Resources/images/B_Search.png"/> 
            </div>
                       </div>
                  <br />
                    <div class="row equal">
                         <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label1" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">SFDC Number</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_SDFC" class="form-control" runat="server"></asp:textbox>
            </div>

             <div class="col-xs-6 col-sm-1">
                 <asp:ImageButton ID="img_SDFCnum" runat="server" ImageUrl="~/Resources/images/B_Search.png"/> 
            </div>
                       </div>
                  <br />
                    <div class="row equal">
                         <span style="color:brown; font-size:18px; margin-left:10px;"><b>Details Of Hire Purchase Application</b></span>
                  <br />
                  <br />
                 <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label2" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">NRIC No/Passport No/RCB No</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_NRIC" class="form-control" runat="server"></asp:textbox>
            </div>
                         <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label3" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Name as in NRIC/Passport</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_name" class="form-control" runat="server"></asp:textbox>
            </div>
                        </div>
                  <br />
                    <div class="row equal">
                  <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label4" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Loan Amount</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_amt" class="form-control" runat="server"></asp:textbox>
            </div>
                         <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label5" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Loan Period(Months)</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_period" class="form-control" runat="server"></asp:textbox>
            </div>
                        </div>
                  <br />
                    <div class="row equal">
                  <div class="col-xs-6 col-sm-3">
                 <asp:label id="Label6" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Monthly Installment</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_install" class="form-control" runat="server"></asp:textbox>
            </div>
                        </div>
                  <br />
                   <div class="row equal">
                       
                         <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label7" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Finance Company 1</asp:label>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:textbox id="txt_finance1" class="form-control" runat="server"></asp:textbox>
            </div>
                   <div class="col-xs-6 col-sm-2">
                        <asp:DropDownList ID="ddlfinance1" class="form-control" runat="server">
                                                    <asp:ListItem Text="Pending" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                       </div>
                          <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label8" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Finance Company 2</asp:label>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:textbox id="txt_finance2" class="form-control" runat="server"></asp:textbox>
            </div>
                   <div class="col-xs-6 col-sm-2">
                        <asp:DropDownList ID="ddlfinance2" class="form-control" runat="server">
                                                    <asp:ListItem Text="Pending" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                       </div>

                       </div>
                  <br />
                   <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label9" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Finance Company 3</asp:label>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:textbox id="txt_finance3" class="form-control" runat="server"></asp:textbox>
            </div>
                   <div class="col-xs-6 col-sm-2">
                        <asp:DropDownList ID="ddlfinance3" class="form-control" runat="server">
                                                    <asp:ListItem Text="Pending" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                       </div>
                          <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label10" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Finance Company 4</asp:label>
            </div>

             <div class="col-xs-6 col-sm-2">
                  <asp:textbox id="txt_finance4" class="form-control" runat="server"></asp:textbox>
            </div>
                   <div class="col-xs-6 col-sm-2">
                        <asp:DropDownList ID="ddlfinance4" class="form-control" runat="server">
                                                    <asp:ListItem Text="Pending" Value="0"></asp:ListItem>
                             </asp:DropDownList>
                       </div>

                       </div>
                  <br />
                    <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblfinpbm" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Finance Problem</asp:label>
            </div>

             <div class="col-xs-6 col-sm-2">
                 <asp:CheckBox ID="cbproblem" runat="server" />
            </div>
                        </div>
                  <br />
                    <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label11" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Loan Submited Date</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_submitdate" class="form-control" runat="server"></asp:textbox>
             </div>
         <div class="col-xs-6 col-sm-1">
              <asp:ImageButton ID="Img_cal" runat="server" ImageUrl="~/Resources/images/B_Calendr.png"/> 
                </div>
           
                 
                <div class="col-xs-6 col-sm-2">
                 <asp:label id="Label12" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Loan Status Date</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_statusdate" class="form-control" runat="server"></asp:textbox>
             </div>
         <div class="col-xs-6 col-sm-1">
              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Resources/images/B_Calendr.png"/> 
                </div>
             </div>
                  <br />
                  <div class="row equal">
                       <div class="col-xs-6 col-sm-2">
                            <asp:label id="Label13" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Remarks</asp:label>
                           </div>
                        <div class="col-xs-6 col-sm-4">
                              <asp:textbox id="txt_remarks" class="form-control" runat="server" Height="60px"></asp:textbox>
                            </div>
                       <div class="col-xs-6 col-sm-2">
                            <asp:label id="lbloan" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Loan Status</asp:label>
                           </div>
                       <div class="col-xs-6 col-sm-3">
                            <asp:label id="lblstatus" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                           </div>
                      </div>

                  <br />
                  <div class="row equal">
                       <div class="col-xs-6 col-sm-2">
                           </div>
                       <div class="col-xs-6 col-sm-2">
                  <asp:ImageButton ID="Img_Update" runat="server" ImageUrl="~/Resources/images/B_Update.png"/> 
                  </div>
                      </div>
      </div>
</div>
         </div>
</asp:Content>
