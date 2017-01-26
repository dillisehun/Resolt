<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs"  Inherits="Resolt.Accounts.Register" %>

<!DOCTYPE html>
<html>



<!-- Head -->
<head>
<title>SIGNUP</title>
<script src="../Helpers/Styles/easyResponsiveTabs.js"></script>
    <script src="../Helpers/Styles/jquery-1.11.1.min.js"></script>
    <link href="../Helpers/style.css" rel="stylesheet" />
    
<!-- Horizontal-Tabs-JavaScript -->

</head>
<!-- Head -->



<!-- Body -->
<body>

	<!-- Heading -->
	<h1>Door to Resolt.</h1>
	<!-- //Headng -->


	<!-- Container -->
	<div class="container">

		<div class="tabs">

			<div class="sap_tabs">

				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">

			
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><h2><span><a id="logi" href="Login.aspx">LOGIN</a></span></h2></li>
						<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><a href="Register.aspx">SIGNUP</a> </span></li>
						<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><a href="../WebForm1.aspx">RANKS</a></span></li>
						<li class="resp-tab-item" aria-controls="tab_item-4" role="tab"><span><a href="wall.aspx">WALL</a></span></li>

					</ul>

					<div class="resp-tabs-container">
		<div class="tab-2" aria-labelledby="tab_item-2">
							<div class="register">
	 <center><form id="Form1" runat="server">									
   <table >
       <tr><td>     <asp:Literal ID="Error" runat="server"></asp:Literal>
       </td></tr>
        <tr>   
	  <td> <asp:TextBox type="text" ID="txtRoll" Name="RollNo" placeholder="University RollNo." runat="server" ></asp:TextBox>
            </td> 
          <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4"  ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtRoll"
                runat="server" /></td>
          </tr>        
         <tr><td><asp:TextBox type="password" ID="txtPassword" Name="Password" placeholder="Password"  runat="server"  ></asp:TextBox>
             </td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" /></td>
     </tr>
       <tr> <td>       <asp:TextBox type="password" ID="txtConfirmPassword" Name="Password" class="lessgap" placeholder="Confirm Password" runat="server" Width="243px"  />
           </td>
    <td>       <asp:CompareValidator ID="CompareValidator2"  ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtConfirmPassword"
                runat="server" /></td>
           </tr>     
        <tr><td>   <asp:TextBox type="text" ID="txtEmail" Name="Email" placeholder="Email" runat="server" Width="249px" ></asp:TextBox>
            </td>
          <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" /></td>
          <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />

          </td></tr>
         <tr><td>
             <asp:TextBox type="text" ID="ye" Name="Ye" placeholder="Current Year"  runat="server"  ></asp:TextBox>
             </td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator8"  ErrorMessage="Required" ForeColor="Red" ControlToValidate="ye"
                runat="server" /></td>
     </tr>
         <tr><td><asp:TextBox type="text" ID="Br" Name="Br" placeholder="Branch"  runat="server"  ></asp:TextBox>
             </td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator9"  ErrorMessage="Required" ForeColor="Red" ControlToValidate="Br"
                runat="server" /></td>
     </tr>
         <tr><td><asp:TextBox type="text" ID="Sem" Name="Sem" placeholder="Current Semester"  runat="server"  ></asp:TextBox>
             </td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator10"  ErrorMessage="Required" ForeColor="Red" ControlToValidate="Sem"
                runat="server" /></td>
     </tr>
       
              <tr><td>
                  <asp:RadioButtonList ItemType="radio" ID=RadioButtonList1 runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
             </asp:RadioButtonList></td><td>  <asp:RequiredFieldValidator  ID="RequiredFieldValidator2"  ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="RadioButtonList1" runat="server" />  <br /></td>
         </tr>
      
       <tr>  <td>       <asp:FileUpload ID="Resume" runat="server" BackColor="WindowFrame"  Font-Bold="true" ></asp:FileUpload>
             </td>
           <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ErrorMessage="Required" Display="Dynamic" ForeColor="Red"      ControlToValidate="Resume" runat="server" />  </td> 
            <td><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Resume" ErrorMessage="Invalid extension" ForeColor="Red" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.pdf|.DOC|.PDF)$"></asp:RegularExpressionValidator>
<br /></td>
       </tr>
        <tr> <td>       <asp:FileUpload ID="Profilepic" runat="server" placeholder="Upload Picture" BackColor="WindowFrame" Font-Bold="true" ></asp:FileUpload></td>
            <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="Profilepic" runat="server" /> </td>
            <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Profilepic" ErrorMessage="Invalid extension" ForeColor="Red" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.JPG|.JPEG|.GIF|.PNG)$"></asp:RegularExpressionValidator>
<br /></td>
        </tr>
     
       <!--       <tr><td>  <asp:DropDownList type="dropdown" ID="Branch" Name="Branch" placeholder="Branch" runat="server" Width="249px" >
                    <asp:ListItem runat="server"  Text="CS"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="EC"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="CE"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="ME"></asp:ListItem>
                        </asp:DropDownList></td>
                  <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator12"  ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="Branch" runat="server" /></td>
              </tr>
               <tr><td> <asp:DropDownList type="dropdown"  ID="Semester" runat="server">
                     <asp:ListItem runat="server"  Text="Semester 1"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 2"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 3"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 4"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 5"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 6"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 7"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 8"></asp:ListItem>
   
                        </asp:DropDownList></td>
                   <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator13"  ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="Semester" runat="server" /></td>
               </tr>

               <tr><td> <asp:DropDownList ID="Year" type="text"   runat="server">
                    <asp:ListItem runat="server"  Text="1st"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="2nd"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="3rd"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="4th"></asp:ListItem>
                                 
                        </asp:DropDownList></td>
                   <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator14"  ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="Year" runat="server" /></td>
               </tr>

            
       -->
              <tr>      <td><asp:Button ID="Button3"  Text="Register" runat="server"  OnClick="RegisterUser" />  
     </td>  
   </tr>
       


   </table> 		</form>	
                    </center>            
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
<!-- //Body -->



</html>					
         