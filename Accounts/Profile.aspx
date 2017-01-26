
<%@  Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs"  Inherits="Resolt.Accounts.Profile" %>
<!DOCTYPE html>
<html>



<!-- Head -->
<head>

<title>Resolt Door</title>
    <script src="../Helpers/Styles/easyResponsiveTabs.js"></script>
    <script src="../Helpers/Styles/jquery-1.11.1.min.js"></script>
    <link href="../Helpers/style.css" rel="stylesheet" />
    <link href="Helpers/Rankcss/style.css" rel="stylesheet" />
<!-- Horizontal-Tabs-JavaScript -->
    <link href="../Helpers/Profcss/animate-custom.css" rel="stylesheet" />
    <link href="../Helpers/Profcss/style.css" rel="stylesheet" />


</head>
<!-- Head -->



<!-- Body -->
<body>


<!-- Body -->

	<!-- Heading -->
	<h1>Resolt</h1>
	<!-- //Headng -->
    <div class="container">

		<div class="tabs">

			<div class="sap_tabs">

				<div id="horizontalTab" style="display: block; width: 100%;  margin: 0px;">


	<!-- Container -->
					<ul class="resp-tabs-list">
				<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><h2><span><a  ID="logi" runat="server" href="Login.aspx"><asp:literal id="log" runat="server"></asp:literal></a></span></h2></li>
						<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><a href="Register.aspx"><asp:literal id="profile" runat="server"></asp:literal></a> </span></li>
								<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><a href="../WebForm1.aspx">RANKS</a></span></li>
						<li class="resp-tab-item" aria-controls="tab_item-4" role="tab"><span><a href="wall.aspx">WALL</a></span></li>

					</ul>


</div>
                </div>
            </div>
        </div>    
    <br /><br /><br />
    <div class="content">	
	<section>				
        <div id="container_demo" >
            <a class="hiddenanchor" id="toregister"></a>
            <a class="hiddenanchor" id="tologin"></a>
            <div id="wrapper">

        	<div id="login" class="animate form" style="color:white;">
				<form runat="server" > 	
                <div class="content-img">
						<img   runat="server" ID="Prof" Src="" alt="img" class="w3l-img"/>
					</div>
                        
                        <h2>Profile</h2> 
                        <p> 
							<label for="txtRoll" class="uname" style="color:darkcyan;"> Your RollNo  :</label>
                             <asp:Literal ID="txtRoll" runat="server"></asp:Literal>
    </p>
						<p> 
                            <label for="password" class="youpasswd" style="color:darkcyan;"> Your password :</label>
	                         <asp:Literal ID="txtPassword" runat="server"></asp:Literal>
                        </p>
                        	<p> 
                            <label for="txtEmail" class="youpasswd" style="color:darkcyan;"> Email Id: </label>
	                         <asp:Literal ID="txtEmail" runat="server"></asp:Literal>
                        </p>
                    	<p> 
                            <label for="txtGen" class="youpasswd" style="color:darkcyan;"> Gender :</label>
	                         <asp:Literal ID="txtGen" runat="server"></asp:Literal>
                        </p>
                    	<p > 
                            <label for="txtye" class="youpasswd" style="color:darkcyan;" > Year :</label>
	                         <asp:Literal ID="txtye"  runat="server"></asp:Literal>
                        </p>
                    <p> 
                            <label for="txtBr" class="youpasswd" style="color:darkcyan;"> Branch :</label>
	                         <asp:Literal ID="txtBr" runat="server"></asp:Literal>
                        </p>
                    <p> 
                            <label for="txtSem" class="youpasswd" style="color:darkcyan;"> Semester :</label>
	                         <asp:Literal ID="txtSem" runat="server"></asp:Literal>
                        </p>
                      <p class="login button">   
                            <asp:LinkButton ID="Res"  runat="server" href="" type="submit" Text="Download Resume" /> 
		
            		
<%--                        <p class="login button"> 
                            <asp:Button ID="Button1" runat="server" type="submit" Text="Change Details" /> 
						</p>
                    --%></form>
                </div>
</div>
            </div>
        </section>
        </div>
    			
    
</body>
    </html>