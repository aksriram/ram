<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Open_Category_COE.aspx.cs" Inherits="Auto_Pac.AutoPac.Open_Category_COE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

    </style>
       <script src="../Resources/js/bootstrap-material-datetimepicker.js"></script>
    <link href="../Resources/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />
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
		        $('#<%=txt_bidate.ClientID%>').bootstrapMaterialDatePicker
             ({
			    time: false,
			    clearButton: true
             });
		        $('#<%=txt_expiry.ClientID%>').bootstrapMaterialDatePicker
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
       <div class="main">
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>
         <%--  <span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Open Category COE Depository</b></span>--%>
          <br />
         <br />
        <br />
      <div style="padding-left:20px;">
           <div class="row equal">
                 <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblCOE" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Amount</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_amount" class="form-control" runat="server" placeholder="SGD"></asp:textbox>
            </div>
        </div>
          <br />
            <div class="row equal">
                 <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblbid" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Bid Date</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_bidate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
            </div>
                  <div class="col-xs-6 col-sm-1">
                       <asp:ImageButton ID="ImageSubmit" runat="server" ImageUrl="~/Resources/images/B_Calendr.png"/> 
                      </div>
        </div>
          <br />
            <div class="row equal">
                 <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblexpiry" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">COE Expiry Date</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_expiry" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
            </div>
             <div class="col-xs-6 col-sm-1">
                  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Resources/images/B_Calendr.png"/> 
                 </div>
        </div>
          <br />
           <div class="row equal">
                 <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblsuccess" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Number Of Success Bids</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_success" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
        </div>
          <br />
            <div class="row equal">
                  <div class="col-xs-6 col-sm-2">
                      </div>
                  <div class="col-xs-6 col-sm-6">
                       <asp:ImageButton ID="Img_add" runat="server" ImageUrl="~/Resources/images/B_Add.png" style="height:38px;"/> 
                       <asp:ImageButton ID="Img_Clear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" style="margin-left:15px; height:38px;"/> 
                       <asp:ImageButton ID="Img_retrieve" runat="server" ImageUrl="~/Resources/aimages/MoveR.png" style="margin-left:15px; height:38px;"/> 
                      </div>
                </div>


            </div>
           </div></div>
</asp:Content>
