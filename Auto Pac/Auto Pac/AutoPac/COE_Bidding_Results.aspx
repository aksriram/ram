<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="COE_Bidding_Results.aspx.cs" Inherits="Auto_Pac.AutoPac.COE_Bidding_Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .main{
             box-shadow:5px 0 30px -5px #333, 5px 0 0 -5px #333;
        }

    </style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <script type="text/javascript">
        
        function ShowImagePreview1(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=ImgPrv1.ClientID%>').prop('src', e.target.result)
                        .width(150)
                        .height(160);
                };
                reader.readAsDataURL(input.files[0]);
                }
        }
        </script>

    <div class="wrapper" style="margin-left:0px; padding-left:10px; background-color:white;">
         <div class="main">
             <asp:label id="lblpagetitle" runat="server" for="inputEmail3"  font-size="26px"  Text="" style="font-family: 'Times New Roman', Times, serif; margin-top:20px; margin-left:20px ;  color: brown;"> </asp:label>
            <%-- <span style="color: brown; font-size: 18px; margin-left: 20px;"><b>COE Bidding Results</b></span>--%>
             <br /><br />
             <div style="padding-left:20px;">
             <span style="color: brown; font-size: 18px; "><b>Upload COEs List</b></span>
             <br /><br />
             
               <div class="row equal">
                  <div class="col-xs-6 col-sm-2">
                     <asp:label id="lblFileLocation" runat="server" for="inputEmail3"  font-size="18px"  style="font-family: 'Times New Roman', Times, serif;">File Location:<span style="color:red;"></span></asp:label>
                 </div>
                 <div class="col-xs-6 col-sm-3">
                    <asp:Image ID="ImgPrv1" Height="170px" Width="200px" runat="server" /><br />
                    <input type="file" name="filUpload" id="filUpload" runat="server" onchange="ShowImagePreview1(this)" />
                    <br />                   
                </div>
                  <br />             
              </div>
                    <br />
               <div class="row">
                    <div class="col-xs-6 col-sm-2">
                         </div>
                    <asp:ImageButton ID="ImageSubmit" runat="server" ImageUrl="../Resources/aimages/Show_List.png" Style="margin-left:10px; height:35px;"/> 
                    <asp:ImageButton ID="ImageUpdate" runat="server" ImageUrl="../Resources/aimages/B_Clear.png" Style="margin-left:10px;  height:35px;"/>           
               </div>
                  <br />
               <span style="color: brown; font-size: 18px; "><b>Select COEs from List</b></span>
                 <br /><br />
               <div class="row equal">
                    <div class="col-xs-6 col-sm-2">
                       <asp:label id="LblSelectType" runat="server" for="inputEmail3"  font-size="18px" Text="Select Type"  style="font-family: 'Times New Roman', Times, serif;"></asp:label>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                      <asp:dropdownlist id="ddlfitted" class="form-control" runat="server"></asp:dropdownlist>
                    </div>           
                </div>
                  <br /><br />
                 <span style="color: brown; font-size: 18px; "><b>COEs List</b></span>
             </div>
         </div>
    </div>
</asp:Content>
