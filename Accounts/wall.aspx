<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wall.aspx.cs" Inherits="Resolt.Accounts.wall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Timeline</title>
<script src="../Helpers/Styles/easyResponsiveTabs.js"></script>
    <script src="../Helpers/Styles/jquery-1.11.1.min.js"></script>
    <link href="../Helpers/style.css" rel="stylesheet" />
    <link href="Helpers/Rankcss/style.css" rel="stylesheet" />
    <link href="../Helpers/wallcss/style.css" rel="stylesheet" />
<!-- Horizontal-Tabs-JavaScript -->

</head>
<!-- Head -->



<!-- Body -->
<body>

        <h1>Wall Posts</h1>
    
<!-- Body -->
 
 
	<!-- Heading -->
	<!-- //Headng -->
    <div class="container">

		<div class="tabs">

			<div class="sap_tabs">

				<div id="horizontalTab" style="display: block; width: 100%;  margin: 0px;">


	<!-- Container -->
 				<ul class="resp-tabs-list">
				<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><h2><span><a id="logi" href="Login.aspx" runat="server"><asp:literal id="log" runat="server"></asp:literal></a></span></h2></li>
						<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><a href="Register.aspx"><asp:literal id="profile" runat="server"></asp:literal></a> </span></li>
								<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><a href="../WebForm1.aspx">RANKS</a></span></li>
						<li class="resp-tab-item" aria-controls="tab_item-4" role="tab"><span><a href="wall.aspx">WALL</a></span></li>

					</ul>
                    
</div>
                </div>
  <div class="resp-tabs-container">
		<div class="tab-2" aria-labelledby="tab_item-1">
 
    <form id="Form1"  runat="server">    
  
          <asp:TextBox type="text" runat="server" ID="Postit" Placeholder="Write a Post..." Width="561px" Height="91px" ></asp:TextBox>
        <asp:Button type="SUBMIT" ID="Button1" runat="server" Text="Post" OnClick="Button1_Click" />
          <br />
          <br />
     <asp:Button type="SUBMIT" ID="Button2" runat="server" Text="LOGOUT" OnClick="Button2_Click" Width="248px" />
             <p style="animation-name:movearound; color:aliceblue;">  <asp:Literal runat="server" ID="Error" ></asp:Literal></p>
					
                
             
            <center>
      <div class="postss"> 
    
<%--  <div class="dialogbox">
  				
             <div class="content-img" style="display: block; float:left;    width:50px; height:50px; margin: 3px 7px 2px 100px;">
						<img   runat="server" id="Img2" src="image.png"    alt="img" class="w3l-img"/>

             </div>
      
       <div class="body">
	            <asp:Literal  runat="server" ID="now2" ></asp:Literal>
     
       <span class="tip tip-left">      </span>
   
           <div class="message">
        <span> <asp:Literal  runat="server" ID="post2" ></asp:Literal></span>
      </div>
    </div>
  </div>
       
  <div class="dialogbox">
  				
             <div class="content-img" style="display: block; float:left;    width:50px; height:50px; margin: 3px 7px 2px 100px;">
						<img   runat="server" id="Img1" src="image.png"    alt="img" class="w3l-img"/>

             </div>
      
       <div class="body">
	            <asp:Literal  runat="server" ID="now1" ></asp:Literal>
     
       <span class="tip tip-left">      </span>
   
           <div class="message">
        <span> <asp:Literal  runat="server" ID="post1" ></asp:Literal></span>
      </div>
    </div>
  </div>
    
  <div class="dialogbox">
  				
             <div class="content-img" style="display: block; float:left;    width:50px; height:50px; margin: 3px 7px 2px 100px;">
						<img   runat="server" id="Img0" src="image.png"    alt="img" class="w3l-img"/>

             </div>
      
       <div class="body">
	            <asp:Literal  runat="server"  ID="now0" ></asp:Literal>
     
       <span class="tip tip-left">      </span>
   
           <div class="message">
        <span> <asp:Literal  runat="server" ID="post0" ></asp:Literal></span>
      </div>
    </div>
  </div>
       --%>   <div class="dialogbox">
                <asp:GridView ID="ranks_grid" runat="server"   AutoGenerateColumns="false" AllowPaging="false"
        Width="100%" >
                    
                    <Columns>
                        <asp:TemplateField >
                            <ItemTemplate>
                                     <div class="content-img" style="display: block; float:left;    width:50px; height:50px; margin: 3px 7px 2px 100px;">
						<img   runat="server" id="Img0" src='<%#Eval("pic") %>'    alt="img" class="w3l-img"/>

             </div>
      
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField >
                            <ItemTemplate>
                             <div class="body">
	                    <asp:Literal  runat="server"  ID="now0" Text='<%#Eval("dt") %>' ></asp:Literal>
     
                  <span class="tip tip-left">      </span>
   
                   <div class="message">
                     <span> <asp:Literal  runat="server" ID="post0" Text='<%#Eval("comments") %>' ></asp:Literal></span>
                     </div>
                     </div>                         
                            </ItemTemplate>
                        </asp:TemplateField>
              
 </Columns>

                </asp:GridView>

              
                     </div>
    </form>
    </div>
            </center> </div> 
     </div>       
     </div>       
        
          
        <br />
          
   	<!-- Footer -->
	<div class="footer">

		<!-- Copyright -->
		<div class="copyright">
			<p> &copy; 2016 Resolt. All Rights Reserved | Design by <a href="http://Resolt.com">Resolt</a></p>
		</div>
	</div>	<!-- //Copyright -->
	<!-- //Footer -->
                    
                    </div>
   

</body>
</html>
