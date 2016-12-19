<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="ETA_Date_Updation.aspx.cs" Inherits="Auto_Pac.AutoPac.ETA_Date_Updation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .main{
             box-shadow:5px 0 30px -5px #333, 5px 0 0 -5px #333;
        }

    </style>
    <script src="../Resources/js/bootstrap-material-datetimepicker.js"></script>
    <link href="../Resources/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
		    $(document).ready(function () {
		        $('#<%=Txt_ETADate.ClientID%>').bootstrapMaterialDatePicker
             ({
			    time: false,
			    clearButton: true
             });
		       
              $('#<%=Txt_YearOfManufacture.ClientID%>').bootstrapMaterialDatePicker
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
            <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ; color: brown;"> </asp:label>          
            <br /><br />
            <div style="padding-left:20px;">
                 <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_CaseSeries" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Case Series</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_CaseSeries" class="form-control" runat="server" placeholder=""></asp:textbox>
                    </div>
                 </div>
                <br />
                 <div class="row equal">                                             
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_Insurance" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Insurance</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_Insurance" class="form-control" runat="server" placeholder=""></asp:textbox>
                    </div>                        
                  </div>
                <br />
                 <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_ETADate" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">ETA Date</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_ETADate" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
                     </div>                        
                     <div class="col-xs-6 col-sm-1">
                         <asp:ImageButton ID="ImageCalendr" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                     </div>
                  </div>
                   <br />
                 <div class="row equal"> 
                     <div class="col-xs-6 col-sm-2">
                         <asp:label id="Lbl_YearOfManufacture" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">Year Of Manufacture</asp:label>
                     </div>                  
                     <div class="col-xs-6 col-sm-3">
                         <asp:textbox id="Txt_YearOfManufacture" class="form-control" runat="server" placeholder="dd/mm/yyyy"></asp:textbox>
                     </div>
                     <div class="col-xs-6 col-sm-1">
                         <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Resources/images/B_Calendr.png" />
                     </div>                        
                 </div>
                <br />
                 <div class="row">
                    <div class="col-xs-6 col-sm-2">
                        </div>
                    <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="../Resources/images/B_Update.png" Style="margin-left:16px;"/>                  
                    <asp:ImageButton ID="ImageClear" runat="server" ImageUrl="../Resources/images/B_Clear.png" Style="margin-left:8px;"/>           
                 </div>
            </div> 
        </div>
     </div>
</asp:Content>
