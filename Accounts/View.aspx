<%@ Page  Language="C#"  AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="Resolt.Ranks" %>

<!DOCTYPE html>
<html>



<!-- Head -->
<head>
<title>Ranks</title>
<script src="../Helpers/Styles/easyResponsiveTabs.js"></script>
    <script src="../Helpers/Styles/jquery-1.11.1.min.js"></script>
    <link href="../Helpers/style.css" rel="stylesheet" />
<!-- Horizontal-Tabs-JavaScript -->
     <style>
      .grid {

border:solid 1.00px White;
text-align:center;
      }


  </style> 
</head>
<!-- Head -->



<!-- Body -->
<body>

	<!-- Heading -->
	<h1>All Profiles</h1>
	<!-- //Headng -->


	<!-- Container -->
	<div class="container">

		<div class="tabs">

			<div class="sap_tabs">

				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">

			
					<ul class="resp-tabs-list">
							<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><h2><span><a ID="logi" runat="server" href="Accounts/Login.aspx"><asp:literal id="log" runat="server"></asp:literal></a></span></h2></li>
						<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><a href="Accounts/Register.aspx"><asp:literal id="profile" runat="server"></asp:literal></a> </span></li>
					<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><a href="../WebForm1.aspx">RANKS</a></span></li>
						<li class="resp-tab-item" aria-controls="tab_item-4" role="tab"><span><a href="Accounts/wall.aspx">WALL</a></span></li>

					</ul>

					<div class="resp-tabs-container">
		<div class="tab-2" aria-labelledby="tab_item-2">

            <br /><center>       <form id="Form1" runat="server">    <div id="prof_div" runat="server"  style=" background-color:white; height:200px; overflow-y:scroll;  " >
                <div style="text-align:center;color:red; font-family:'Segoe UI';font-size:large;font-weight:300" >All Users</div>
            <asp:GridView ID="prof_grid" runat="server"   AutoGenerateColumns="false" AllowPaging="false"
        Width="100%" >
            <RowStyle BackColor="White" ForeColor="Black" />
                  
            <HeaderStyle BackColor="#D61919"  ForeColor="White"  />
                    
                    <Columns>
            <%--            <asp:TemplateField HeaderText="RollNo." HeaderStyle-CssClass="grid" ItemStyle-CssClass="grid">
                            <ItemTemplate>
                                <%#Eval("pic") %>
                            </ItemTemplate>
                        </asp:TemplateField>
            --%>            <asp:TemplateField HeaderText="RollNo." HeaderStyle-CssClass="grid"  ItemStyle-CssClass="grid">
                            <ItemTemplate>
                                <%#Eval("rollno") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Branch"  HeaderStyle-CssClass="grid" ItemStyle-CssClass="grid">
                            <ItemTemplate>
                                <%#Eval("Branch") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Year"  HeaderStyle-CssClass="grid" ItemStyle-CssClass="grid">
                            <ItemTemplate>
                                <%#Eval("yearr") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Semester"  HeaderStyle-CssClass="grid" ItemStyle-CssClass="grid">
                            <ItemTemplate>
                                <%#Eval("semester") %>
                                
                            </ItemTemplate>

                        </asp:TemplateField>
        <asp:TemplateField HeaderText="Results"  HeaderStyle-CssClass="grid" ItemStyle-CssClass="grid">
                            <ItemTemplate>
                                <%#Eval("result") %>
                                 
                                
                            </ItemTemplate>

                        </asp:TemplateField>
      
 </Columns>

                </asp:GridView>
                     </div>
				</form>
      
 </center>  </div></div></div>
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
    
</body>
<!-- //Body -->



</html>					
    