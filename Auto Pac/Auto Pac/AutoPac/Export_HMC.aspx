<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Export_HMC.aspx.cs" Inherits="Auto_Pac.AutoPac.Export_HMC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

    </style>
       <script src="../Resources/js/bootstrap-material-datetimepicker.js"></script>
    <link href="../Resources/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />
   
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
       <div class="main">
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>
           <%--<span style="color: brown; font-size: 18px; margin-left: 20px;"><b>Export To HMC</b></span>--%>
          <br />
         <br />
     
      <div style="padding-left:20px;">
           <div class="row equal">
               <span style="color: brown; font-size: 18px; margin-left:20px;"><b>Sales & Registration</b></span>
               <br />
               <br />
                 <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblfdate" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">From Registration Date</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_frmdate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
            </div>
               
             <div class="col-xs-6 col-sm-1">
                   <asp:ImageButton ID="Img_cal" runat="server" ImageUrl="~/Resources/images/B_Calendr.png" />
                 </div>
        </div>
          <br />
           <div class="row equal">
              
                 <div class="col-xs-6 col-sm-2">
                 <asp:label id="lbltodate" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">To Registration Date</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_todate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
            </div>
                 <div class="col-xs-6 col-sm-1">
                   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Resources/images/B_Calendr.png" />
                 </div>
        </div>
          <br />
           <div class="row equal">
              
                 <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblcode" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Default Wholesale Code</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                      <asp:DropDownList ID="ddlcode" class="form-control" runat="server">
                              <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                             </asp:DropDownList>
            </div>
        </div>
        <br />
           <div class="row equal">
               <div class="col-xs-6 col-sm-2">
                 <asp:label id="lblother" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Other Wholesale Code</asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txt_other" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
        </div>
          <br />
          <div class="row equal">
                <div class="col-xs-6 col-sm-2">
                    </div>
                <div class="col-xs-6 col-sm-4">
                        <asp:ImageButton ID="Img_export" runat="server" ImageUrl="~/Resources/aimages/Export.png" style="height:38px"/> 
                        <asp:ImageButton ID="Img_clear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" style="margin-left:15px; height:38px;"/> 

                    </div>
              </div>
          </div>
           </div>
         </div>

</asp:Content>
