<%@ Page Title="Rankings" Language="C#" MasterPageFile="~/Helpers/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Resolt.WebForm1" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <h1>Rankings</h1>		
</asp:Content>
                
  <asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
  <style>
      .grid {

border:solid 1.00px White;
text-align:center;
      }


  </style> <br /> 	   			<br /><div class="main">
				<div class="main-section">
					<div class="property-section">
						<h3>Check Rankings</h3>
						<div class="property-bottom">
					      &nbsp;&nbsp;&nbsp;	
                          <%--<asp:TextBox  ID="txtRolln"  placeholder="University RollNo."  runat="server"  ></asp:TextBox>--%>
                <center>             <asp:Label ID="roll_lab" runat="server" Font-Size="Medium"></asp:Label></center>  <br />
                            <asp:LinkButton runat="server" ID="shw_dept" Text="SHOW DEPARTMENT" ForeColor="Blue" Font-Size="Smaller" OnClick="shw_dept_Click"></asp:LinkButton>
                            	<div class="select-section">
									<div class="select-left">
										
							            <asp:Dropdownlist class="sel"  Visible="false" ID="br"  runat="server"  >
                            
                            <asp:ListItem runat="server"  Text="SELECT"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="CS"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="EC"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="CE"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="ME"></asp:ListItem>
    </asp:Dropdownlist>

            															</div>
									<div class="select-right">
										
	                                    <asp:Dropdownlist class="sel"   ID="semester" runat="server" >
                            <asp:ListItem runat="server"  Text="SELECT SEMESTER"></asp:ListItem>
                         
                                               <asp:ListItem runat="server"  Text="Semester 1"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 2"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 3"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 4"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 5"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 6"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 7"></asp:ListItem>
                            <asp:ListItem runat="server"  Text="Semester 8"></asp:ListItem>
                        
                                                                             </asp:Dropdownlist> 
      <br />    			<br /></div>
                                 
									</div>
							<br />
							<br />
					<asp:Button ID="Button1"  runat="server" OnClick="Button_Click"  Text="Check Rankings" />
                          <p style="animation-name:movearound; color:darkorange;">  <asp:Literal runat="server" ID="Error" ></asp:Literal></p>
					        </div>
                    	</div>
					</div></div>
      <br />
                    <br />
                    
           <div id="ranks_div" runat="server"  style="overflow-x:scroll ; background-color:white; height:100px; overflow-y:scroll;  " >
                <div style="text-align:center;color:red; font-family:'Segoe UI';font-size:large;font-weight:300" > Results </div>
                <asp:GridView ID="ranks_grid" runat="server"   AutoGenerateColumns="false" AllowPaging="false"
        Width="100%" >
            <RowStyle BackColor="White" ForeColor="Black" />
                  
            <HeaderStyle BackColor="#D61919"  ForeColor="White"  />
                    
                    <Columns>
                        <asp:TemplateField HeaderText="RollNo." HeaderStyle-CssClass="grid" ItemStyle-CssClass="grid">
                            <ItemTemplate>
                                <%#Eval("rollno") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Result" HeaderStyle-CssClass="grid"  ItemStyle-CssClass="grid">
                            <ItemTemplate>
                                <%#Eval("Result") %>
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
      
 </Columns>

                </asp:GridView>
                     </div>
				
			

      

	 </asp:Content>