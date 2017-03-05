<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BurgerTime.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bar and Grill Template</title>
    <link href="styles.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato|Ultra" rel="stylesheet" />
    
    
    
</head>
<body>
    <form id="form1" runat="server">
    <section id="page-title">
        <div class="container-top">
            <h1>Bar & Grill</h1>
        </div>
    </section>
    
    <div class="container-bar">
        <div class="About">About Us:</div>
        <div class="Address">Address:
            <br />123 Hot Dog Ave.</div>   
        <div class="Phone">Phone#:
            <br />(402)-555-5555</div>
        <div class="Hours">Hours:
            <br />11am - 2am</div>            
    </div>
    <div class="container-menu">The Menu</div>
    <div class="menu">
        <div class="menu-col1">
            <div class="itemTitle">Burgers</div>
                <a>Classic</a>
                    <p>1/2 lb. Hamburger Patty | Lettuce | Tomato | Onion | Kaiser Roll
                    <br />...$6.95<br />
                    </p>                                            
                <a>Cheeseburger</a>
                    <p>Just like our Traditional Burger with your choice of cheese:
                    <br />American, Swiss, Pepperjack, or Cheddar
                    <br />Additional Slice add $.50
                    <br />...$7.95
                    </p>   
                      
                <a>Patty Melt</a>
                    <p>1/2 lb. Hamburger Patty | American & Swiss | Carmelized Onion | Toasted Marble Rye
                    <br />...$7.95<br />
                    </p>
             <div class="itemTitle">Sandwiches</div>
                 <a>Reuben</a>
                    <p>Corned Beef | Saurkraut | Swiss Cheese | Russian Dressing | Marble Rye
                    <br />...$6.95<br />
                    </p>   
                  <a>Grilled Chicken</a>
                    <p>Chicken Breast | Lettuce | Tomato | Onion | Kaiser Roll
                    <br />...$7.95<br />
                    </p>
                   <a>Pulled Pork</a>    
                    <p>House Smoked Pork | BBQ Sauce | Kaiser Roll
                    <br />...$6.95<br />    
                    </p>
                    
       </div>       
       <div class="menu-col2">
           <div class="itemTitle">Appetizers</div>
                <a>Chicken Fingers</a>
                  <p>Breaded Chicken Strips | Choice of Sauce: BBQ, Honey Mustard, Ranch, Hot Sauce
                    <br />...$6.95<br />
                  </p>
                <a>Quesidilla</a>
                  <p>Beef, Chicken, Pork or Black Bean | Cheddar Cheese | Flour Totilla
                      <br />...$5.95<br />
                  </p>
                <a>Hot Wings</a>
                  <p>1 1/2lb. Fried Chicken Wings | Choice of Sauce: Hot, BBQ, Teryaki | Ranch or Blue Cheese
                      <br />...7.95<br />
                  </p>
           <div class="itemTitle">Tacos</div>
                <a>Beef</a>
                    <p>Lettuce | Tomato | Shredded Cheddar | Fried Flour Shell | Taco Sauce
                    <br />...$2.95<br />
                    </p>
                <a>Chicken</a>
                    <p>Lettuce | Tomato | Shredded Cheddar | Fried Flour Shell | Taco Sauce
                    <br />...$2.95<br />
                    </p>
                <a>Pork</a>
                    <p>Lettuce | Tomato | Shredded Cheddar | Fried Flour Shell | Taco Sauce
                    <br />...$2.95<br />
                    </p>    
                <a>Reuben</a>
                    <p>Corned Beef | Saurkraut | Russian Dressing | Swiss Cheese | Fried Flour Shell
                    <br />...$2.95<br />    
                     </p> 
                   
                    </div>          
                           
    </div>
     <div class="container-comments">
        <h1>Questions & Comments</h1>
      </div>       
        <div class="table">       
          <table>          
           <tr>
             <td>Name</td>
             <td>
               <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
              </td>
              <td>&nbsp;</td>
           </tr>
           <tr>
           <td>Email</td>
           <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
           </td>
           <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Format Error</asp:RegularExpressionValidator>
           </td>
           </tr>
           <tr>
           <td>Website</td>
           <td>
            <asp:TextBox ID="txtWebsite" runat="server"></asp:TextBox>
           </td>
           <td></td>
           </tr>
           <tr>
           <td>Content</td>
           <td>
            <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContent" ErrorMessage="Content Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
           </td>
           <td></td>
           </tr>
           <tr>
           <td>&nbsp;</td>
           <td>
            <asp:Button ID="btnComment" runat="server" OnClick="btnComment_Click" Text="Comment Now" />
            <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br />
          <asp:Label ID="Label2" runat="server" Text='<%# Eval("Email") %>'></asp:Label><br />
          <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Website") %>' NavigateUrl='<%# Eval("Website") %>'></asp:HyperLink><br />
          <asp:Label ID="Label3" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
         </ItemTemplate>
         </asp:Repeater>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Comments.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Comments]"></asp:SqlDataSource>
           </td>
           <td>&nbsp;</td>
           </tr>
           </table>
           </div>
                  
<footer>
   <div class="footer">
      Want to learn more about us? Check out our Facebook page.
      <a target="_blank" title="find us on Facebook" href="http://www.facebook.com/PLACEHOLDER"><img alt="find us on facebook" src="//login.create.net/images/icons/user/facebook-c_130x50.png" /></a>
    </div>
   </footer>    
  </form>
</body>
</html>
