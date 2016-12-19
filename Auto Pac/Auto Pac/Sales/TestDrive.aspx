<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="TestDrive.aspx.cs" Inherits="Sales_TestDrive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

     <script src="../Resources/js/bootstrap-material-datetimepicker.js"></script>
    <link href="../Resources/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />


    <style type="text/css">
        .main{
             box-shadow:0 5px 10px 5px #333, 2px 0 0 -5px #333;
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
		        $('#<%=txtdob.ClientID%>').bootstrapMaterialDatePicker
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
             <asp:Label ID="lblpagetitle" runat="server" Text=""></asp:Label>
                 <%--<span style="color: brown; font-size: 18px; margin-left: 30px;"><b>Test Drive</b></span>--%>
         <br />
        <div style="padding-left:20px;">
        <div class="row equal">
             <div class="col-xs-6 col-sm-3">
                  <asp:label id="lbltitle" runat="server" for="inputEmail3"  font-size="18px" text="Title" style="font-family: 'Times New Roman', Times, serif;"></asp:label>
            </div>
                  
             <div class="col-xs-6 col-sm-3">
                   <asp:dropdownlist id="ddlcompany" class="form-control" runat="server">
                                          <asp:ListItem Text="--Please Select--" Value="0"></asp:ListItem>
                                      </asp:dropdownlist>
            </div>
            <div class="col-xs-6 col-sm-3">
                 <asp:Label ID="lblnric" runat="server" for="inputEmail3"  Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Name as in NRIC/Passport<span style="color:red;">*</span></asp:Label>
             </div>
             <div class="col-xs-6 col-sm-3">
                 <asp:TextBox ID="txtnric" class="form-control" runat="server" placeholder=""></asp:TextBox> 
             </div>
       </div>

        <br />

         <div class="row equal">
             <div class="col-xs-6 col-sm-3">
                 <asp:label id="lblpassport" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">NRIC No/Passport No/RCB No<span style="color:red;">*</span></asp:label>
            </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:textbox id="txtpassport" class="form-control" runat="server" placeholder=""></asp:textbox>
            </div>
             <div class="col-xs-6 col-sm-3">
                    <asp:Label ID="lblmobile" runat="server" for="inputEmail3"   Font-Size="18px"  Style="font-family:'Times New Roman', Times, serif; ">Mobile Number<span style="color:red;">*</span></asp:Label>
             </div>
             <div class="col-xs-6 col-sm-3">
                  <asp:TextBox ID="txtmobile" class="form-control" runat="server" placeholder="Ex: +65XXXXXXXX"></asp:TextBox> 
             </div>
         </div>
        
        <br />

         <div class="row equal">
              <div class="col-xs-6 col-sm-3">
                  <asp:Label ID="lblhomephone" runat="server" for="inputEmail3"   Font-Size="18px"  Style="font-family:'Times New Roman', Times, serif; ">Driving License Number<span style="color:red;">*</span></asp:Label>
                </div>

              <div class="col-xs-6 col-sm-3">
                  <asp:TextBox ID="txthomephone" class="form-control" runat="server" placeholder="Ex:S2657507X"></asp:TextBox>
                </div>

              <div class="col-xs-6 col-sm-3">
                   <asp:Label ID="lblblock" runat="server" for="inputEmail3"  Font-Size="18px" Text="Block" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                </div>

              <div class="col-xs-6 col-sm-3">
                    <asp:TextBox ID="txtblock" class="form-control" runat="server" placeholder=""></asp:TextBox>
                </div>
        </div>

        <br />

         <div class="row equal">
              <div class="col-xs-6 col-sm-3">
                  <asp:Label ID="Label1" runat="server" for="inputEmail3"  Font-Size="18px" Text="Road" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                </div>

             <div class="col-xs-6 col-sm-3">
                  <asp:Label ID="Label2" runat="server" for="inputEmail3"  Font-Size="18px" Text="Unit" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                </div>
             <div class="col-xs-6 col-sm-3">
                 <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                </div>
        </div>

        <br />


        <div class="row equal">
              <div class="col-xs-6 col-sm-3">
        <asp:Label ID="lblpostal" runat="server" for="inputEmail3"   Font-Size="18px" Text="Postal Code" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
    
                </div>
            <div class="col-xs-6 col-sm-3">
                <asp:TextBox ID="txtpostalcode" class="form-control" runat="server" placeholder="Ex : 577532"></asp:TextBox>
                </div>
            <div class="col-xs-6 col-sm-3">
                  <asp:Label ID="lblmail" runat="server" for="inputEmail3"  Font-Size="18px" Style="font-family:'Times New Roman', Times, serif; ">Email<span style="color:red;">*</span></asp:Label>
                </div>
            <div class="col-xs-6 col-sm-3">
                 <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Ex: jagan@attsystemsgroup.com "></asp:TextBox> 
                </div>
        </div>

        <br />

        <div class="row equal">
              <div class="col-xs-6 col-sm-3">
                 <asp:Label ID="lbldob" runat="server" for="inputEmail3" Font-Size="18px" Text="Date Of Birth" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
               </div>
            <div class="col-xs-6 col-sm-2">
                    <asp:TextBox ID="txtdob" class="form-control" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox> 
               </div>
             <div class="col-xs-6 col-sm-1">
                     <asp:ImageButton ID="Imgfrom" runat="server" ImageUrl="~/Resources/images/B_Calendr.png"/>
                   </div>

            <div class="col-xs-6 col-sm-3">
                 <asp:Label ID="lblmodeofcontent" runat="server" for="inputEmail3"   Font-Size="18px" Text="Mode Of Contact" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
               </div>
            <div class="col-xs-6 col-sm-3">
                <asp:DropDownList ID="ddlmodeofcontent" class="form-control" runat="server">
                                        <asp:ListItem Text="--Please Select--" Value ="0"></asp:ListItem>
                                    </asp:DropDownList>
               </div>
        </div>

        <br />

        <div class="row equal">
            <div class="col-xs-6 col-sm-3">
                 <asp:Label ID="lblmodel" runat="server" for="inputEmail3"   Font-Size="18px" Text="Model" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
            </div>
            <div class="col-xs-6 col-sm-3">
                  <asp:DropDownList ID="ddlmodel" class="form-control" runat="server">
                                        <%--<asp:ListItem Text="--Please Select--" Value ="0"></asp:ListItem>--%>
                                        
                                    </asp:DropDownList>
            </div>

            <div class="col-xs-6 col-sm-3">

                 <asp:Label ID="lblremarks" runat="server" for="inputEmail3"  Font-Size="18px" Text="" Style="font-family:'Times New Roman', Times, serif; ">Remarks<span style="color:red;">*</span></asp:Label>
             

            </div>

            <div class="col-xs-6 col-sm-3">
                 <asp:TextBox ID="txtremarks" class="form-control" Rows="3" runat="server" placeholder=""></asp:TextBox> 
                 
            </div>

        </div>

        <br />

        <div class="row">

            <div class="col-xs-6 col-sm-3">
                     <asp:Label ID="Label21" runat="server" for="inputEmail3"  Font-Size="18px" Text="Where did you find out about our product/offer?" Style="font-family:'Times New Roman', Times, serif; " Font-Bold="true"></asp:Label>
            </div>

            <div class="col-xs-6 col-sm-3">
               <asp:DropDownList ID="ddlsource" class="form-control" runat="server">
                                        <asp:ListItem Text="--Please Select--" Value ="0"></asp:ListItem>
                                        <asp:ListItem Text="Newspaper" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Magazine" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Radio" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="Internet" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="Others" Value="5"></asp:ListItem>
                                        </asp:DropDownList>
            </div>


        </div>

        <br />

        <div class="row" style="margin-left:20px; border:solid #333 thin; border-radius:05px;">
            
            <div class="col-xs-11">
                 <div>
                     
                               <P style="font-size:18px; font-family:'Times New Roman', Times, serif;"> 
                                    I hereby consent to Komoco Motors Pte Ltd and/or its partners using my personal informaton in accordance with their privacy policy, 
                                    and to send communications to me relating to marketing, advertising, event and promotional information on sales, After Sales, Products, 
                                    Services and Merchandise that Komoco Motors Pte Ltd and/or its partners may be selling, marketing, offering or promoting whether such products or 
                                    services exist now or are created in future through:</P>
                            
                                    </div>
            </div>
            <div class="col-xs-1"></div>
     

        <br />

       
            <div class="col-xs-2">
                <asp:CheckBox ID="Checkdirectmail" runat="server" />
                <asp:Label ID="lblmailer" runat="server" for="inputEmail3" Font-Size="18px" Text="Direct Mailer" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                                      
            </div>
             <div class="col-xs-2">
                <asp:CheckBox ID="CheckBoxsms" runat="server" />
                <asp:Label ID="lblsms" runat="server" for="inputEmail3" Font-Size="18px" Text="SMS/MMS" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>

            </div>
             <div class="col-xs-2">
                     <asp:CheckBox ID="CheckBoxphone" runat="server" />
                     <asp:Label ID="lblphone" runat="server" for="inputEmail3" Font-Size="18px" Text="Phone Call" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>

            </div>
             <div class="col-xs-2">
                 <asp:CheckBox ID="CheckBoxemail" runat="server" />
                  <asp:Label ID="lblemail" runat="server" for="inputEmail3" Font-Size="18px" Text="Email" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>

            </div>
             <div class="col-xs-2">
                   <asp:CheckBox ID="CheckBoxall" runat="server" />
                    <asp:Label ID="lblall" runat="server" for="inputEmail3" Font-Size="18px" Text="All" Style="font-family:'Times New Roman', Times, serif; "></asp:Label>

            </div>


        </div>

        <div class="row" style="margin-left:20px;">
            <div class="col-xs-10">
                <b>(Please mark your preferred channel of communication. You may mark more than one channel of communication. A copy of our privacy policy at:<br />
                                            <a href="http://www.hyundai.com/sg/en/Privacy/index.html.">
                                                 <%--<i class="fa fa-dashboard"></i>--%><span>http://www.hyundai.com/sg/en/Privacy/index.html. </span> 
                                            </a>)</b>
            </div>

        </div>

        <br />

        <div class="row" style="margin-left:20px; border:solid #333 thin; border-radius:05px;">
              <div class="col-xs-2">
                  <h4><b><i>Alternatively,</i></b> </h4>
              </div>

            <div class="col-xs-8">
                  <asp:CheckBox ID="CheckBox6" runat="server" />&nbsp;
           <asp:Label ID="lblmsg" runat="server" for="inputEmail3" Font-Size="18px" Text="I donot wish to receive any communication from Komoco Motors Pte Ltd and/or its partners." Style="font-family:'Times New Roman', Times, serif; "></asp:Label>
                                      
            </div>

        </div>

        <br />

        <div class="row" style="margin-left:20px; border:solid #333 thin; border-radius:05px;">
            <div class="col-xs-10">
                  <P style="font-size:18px; font-family:'Times New Roman', Times, serif;"> 
                By signing below, I represent and warrant that the contact information provided above is valid, correct and I am the ocupant, user and/or subscriber. 
                I consent to <br /> Komoco Motors Pte Ltd and/or its partners using the above personal information for their recording, research, marketing and promotional purposes.</P>
                               
            </div>

        </div>

        <br />

         <div class="row" style="margin-left:10px;">
            <div class="col-xs-3">
                
            </div>

             <div class="col-xs-4">
                 <asp:ImageButton ID="ImageSubmit" runat="server" ImageUrl="~/Resources/images/B_Submit.png" Height="40px"/> 
                <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="~/Resources/images/B_Update.png" Height="40px" Style="margin-left:20px;"/>
                  <asp:ImageButton ID="ImageClear" runat="server" ImageUrl="~/Resources/images/B_Clear.png" Height="40px" Style="margin-left:20px;"/> 
             </div>

             

        </div>
        </div>
     </div>
  
   </div>
</asp:Content>

