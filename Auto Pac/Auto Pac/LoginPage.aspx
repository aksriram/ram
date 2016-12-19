<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Auto_Pac.LoginPage" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      <title>Login</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />

    <%-- CSS  --%>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/jasny-bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />

    <%-- JS --%>

    <script src="js/jquery1.10.2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jasny-bootstrap.js"></script>



</head>
    <body class="mainBg">
    <form id="form1" runat="server">

        <div class="container" style="margin-top:100px;">
		<!--login modal-->

      <div class="modal-dialog">
          <div class="modal-content">
          
              <div class="modal-header">
                  <!--<h1 class="text-center">Login</h1>-->
                  <div class="logo" style="padding-top:10px;">
                    <img src="images/logo2.jpg"/>
                </div>
              </div>

              <div class="modal-body">
                    <div class="form-group col-lg-12">
                        <div class="col-lg-12">
                            
                             <asp:Label ID="LblUsername" for="inputdefault" runat="server"  Text="Username"></asp:Label>
                               <asp:TextBox ID="tbUserName" class="form-control" placeholder="Username" runat="server"></asp:TextBox>

                            
                        </div>
                    </div> 
                     <div class="form-group col-lg-12">
                        <div class="col-lg-12 ">
                              <asp:Label ID="LblPassword" runat="server" for="inputdefault"  Text="Password"></asp:Label>

                              <asp:TextBox ID="tbPassword" TextMode="Password" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                        
                        </div>
                    </div>
                    <div class="form-group col-lg-12">
                        <div class="form-group">
                         
                         <asp:Button ID="btnlogin" class="btn btn-primary btn-lg btn-block" runat="server" Text="Login" OnClick="btnlogin_Click"  />
                            
                            
                        </div>
                        
                         <div class="form-group">
                              <asp:Button ID="Button1" class="btn btn-secondary btn-lg btn-block" runat="server" Text="Cancel" />
                         
                        </div>
                    </div>

                    <div class="cmInfo">
                        <span>
                            Powered by: ATT InfoSoft <br/>
							version: 0.0.1
                        </span>
                    </div>
              </div>
              <div class="modal-footer">
                 <!-- blank -->
              </div>
          </div>
      </div>
      
	</div>


        

    </form>
</body>

    
</html>
