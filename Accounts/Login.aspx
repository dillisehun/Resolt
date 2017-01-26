
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"  Inherits="Resolt.Accounts.Login" %>





<!DOCTYPE html>
<html>



<!-- Head -->
<head>

<title>LOGIN</title>
    <script src="../Helpers/Styles/easyResponsiveTabs.js"></script>
    <script src="../Helpers/Styles/jquery-1.11.1.min.js"></script>
    <link href="../Helpers/style.css" rel="stylesheet" />
<!-- Horizontal-Tabs-JavaScript -->

</head>
<!-- Head -->



<!-- Body -->
<body>


<!-- Body -->

	<!-- Heading -->
	<h1>Door to Resolt. Come in</h1>
	<!-- //Headng -->


	<!-- Container -->
	<div class="container">

		<div class="tabs">

			<div class="sap_tabs">

				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">

					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><h2><span><a href="Login.aspx">LOGIN</a></span></h2></li>
						<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><a href="Register.aspx">SIGNUP</a> </span></li>
						<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><a href="../WebForm1.aspx">RANKS</a></span></li>
						<li class="resp-tab-item" aria-controls="tab_item-4" role="tab"><span><a href="wall.aspx">WALL</a></span></li>

					</ul>

					<div class="resp-tabs-container">
		<div class="tab-2" aria-labelledby="tab_item-1">
							<div class="register">
		<form runat="server">
	    <asp:TextBox type="text" ID="txtRoll" Name="Roll No" placeholder="University RollNo." runat="server"  Width="223px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtRoll"
                runat="server" /><br />
                     <asp:TextBox type="password" ID="txtPassword" Name="Password" placeholder="Password"  runat="server" Width="206px"  ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" />
            <br />
        <div id="message" style="color:darkorange;">           <asp:Literal ID="Error" runat="server" ></asp:Literal></div> 
              <br /><asp:Button ID="Button3"  Text="Submit" runat="server" OnClick="RegisterCheck" /> 
		</form>
	</div></div></div>
		<!-- Footer -->
	<div class="footer">

		<!-- Copyright -->
		<div class="copyright">
			<p> &copy; 2016 Resolt. All Rights Reserved | Design by <a href="http://Resolt.com">Resolt</a></p>
		</div>
	</div>	<!-- //Copyright -->
	<!-- //Footer -->
                    
                    </div>
                </div>
            </div>
        </div>

   
</body>
    </html>