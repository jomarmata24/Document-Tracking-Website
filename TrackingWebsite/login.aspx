<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TrackingWebsite.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <style type="text/css">
        body {
            width: 100%;
            font-family: 'Roboto',sans-serif;
        }
        .newStyle1 {
            background-color: whitesmoke;
            margin:0px;
        }
         .auto-style1 {
            top: -1px;
            left: 1239px;
            position: absolute;
            color: whitesmoke;
            height: 100%;
            width: 136px;
            background-color: #2C6F7D;
            font-family:'Roboto',sans-serif;
            font-size: medium;
            font-weight: bold;
            cursor: pointer;
        }
        
        .auto-style3 {
            position: absolute;
            top: 0px;
            left: 1375px;
            color: whitesmoke;
            height: 100%;
            width: 136px;
            background-color: #2C6F7D;
            font-family:'Roboto',sans-serif;
            font-size: medium;
            font-weight: bold;
            cursor: pointer;
        }
        .auto-style4 {
            position: absolute;
            top: 0px;
            left: 1511px;
            color: whitesmoke;
            height: 100%;
            width: 136px;
            background-color: #3e8e41;
            font-family:'Roboto',sans-serif;
            font-size: medium;
            font-weight: bold;
            cursor: pointer;
        }

        .newStyle9 {
            background-color: #2C6F7D;
            height: 64px;
            font-size: medium;
            font-weight: bold;
            width:100%;
            position: absolute;
            top: -2px;
            left: 0px;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
        }
        #form1 {
            width: 100%;
            height: 831px;
        }
         .auto-style1:hover {
            color: whitesmoke;
            background-color: #193F44;
        }
        .auto-style3:hover {
            color: whitesmoke;
            background-color: #193F44;
        }
        .auto-style4:hover {
            color: whitesmoke;
            background-color: #193F44;
        }
        .newStyle10 {
            position: absolute;
        }
        .newStyle11 {
            font-size: 41px;
            font-weight: bold;
            color: #333300;
            position: absolute;
        }
        .newStyle12 {
            font-size: x-large;
            position: absolute;
            top: 169px;
            left: 41px;
        }
        .newStyle13 {
            position: absolute;
        }
        .newStyle14 {
            position: absolute;
        }
        .newStyle15 {
            font-size: x-large;
            position: absolute;
            top: 228px;
            left: 45px;
        }
        .newStyle16 {
            position: absolute;
            height: 56px;
            width: 124px;
            display: inline-block;
            padding: 15px 25px;
            font-size: x-large;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: whitesmoke;
            background-color: #2C6F7D;
            border-radius: 15px;
            font-family:'Roboto',sans-serif;
            border-style:none;
        }
        .register {
            position: absolute;
            height: 56px;
            width: 124px;
            display: inline-block;
            padding: 15px 25px;
            font-size: x-large;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: whitesmoke;
            background-color: #2C6F7D;
            border-radius: 15px;
            font-family:'Roboto',sans-serif;
            border-style:none;
        }
        
        .newStyle16:hover {
            background-color: #3e8e41;
        }
        .newStyle16:active {
            background-color: #3e8e41;
            transform: translateY(4px);
        }
        .register:hover {
            background-color: #3e8e41;
        }
        .register:active {
            background-color: #3e8e41;
            transform: translateY(4px);
        }

        .newStyle18 {
            position: absolute;
            color: #CC0000;
            font-size: large;
        }
         .footer {
            text-align: center;
            
            background: rgb(23,20,23,0.92);
            color: whitesmoke;
            bottom:0px;
            display:block;
            width:100%;
            height:130px;
            position:absolute;
           
        }
        .newStyle19 {
            position: absolute;
            top: 825px;
            left: 904px;
        }
        
        .auto-style2 {
            position: absolute;
            top: 0px;
            left: 1017px;
            color: whitesmoke;
            height: 100%;
            width: 222px;
            background-color: #2C6F7D;
            font-family:'Roboto',sans-serif;
            font-size: medium;
            font-weight: bold;
            cursor: pointer;
            display: inline-block;
            
        }
        .auto-style2:hover {
            color: whitesmoke;
            background-color: #193F44;
        }
       

        .newStyle20 {
            position: absolute;
            font-size: medium;
            left: 797px;
            bottom: 10px;
            width: 299px;
        }
   
      
   
        .newStyle21 {
            position: absolute;
            font-size: large;
            color: #FF0000;
            top: 113px;
            left: 15px;
            text-align:center;
        }

        
        .auto-style5 {
            position:absolute;
            top: 15px;
            left: 895px;
            height: 76px;
            width: 102px;
            opacity:0.9;
        }
         .fb1 {
            position: absolute;
            border-radius: 28px;
            background: #2C6F7D;
            padding: 20px;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
         }
   

        .fb2 {
            font-size: large;
            position: absolute;
            font-weight: bold;
            cursor:pointer;
            color:whitesmoke;
        }
        

    </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server">
        <div class="newStyle9">
           
                <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Text="DOWNLOAD  FORMS" BorderColor="#333300" BorderStyle="None" OnClick="Button3_Click" />
               
            <asp:Button ID="Button5" runat="server" CssClass="auto-style1" Text="TRACK" BorderColor="#333300" BorderStyle="None" OnClick="Button5_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="ABOUT" BorderColor="#333300" BorderStyle="None" OnClick="Button2_Click" />
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Text="LOGIN" BorderColor="#333300" BorderStyle="None" OnClick="Button4_Click" />
        </div>
        <div class="newStyle10" style="top: 109px; left: 642px; width: 582px; height: 572px">
            <asp:Label ID="Label1" runat="server" CssClass="newStyle11" style="top: 40px; left: 232px" Text="Log In"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="newStyle12" Text="Username:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="newStyle13" style="top: 164px; left: 167px; height: 31px; width: 255px" AutoCompleteType="Disabled" ></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="newStyle14" style="top: 223px; left: 167px; width: 255px; height: 31px" AutoCompleteType="Disabled" TextMode="Password" ></asp:TextBox>
            <asp:Label ID="Label3" runat="server" CssClass="newStyle15" Text="Password:"></asp:Label>
            <asp:Button ID="Button6" runat="server" CssClass="newStyle16" style="top: 324px; left: 215px; height: 58px; width: 172px" Text="Login" OnClick="Button6_Click" />
            <asp:Button ID="Button1" runat="server" CssClass="register" style="top: 405px; left: 215px; height: 58px; width: 172px" Text="Sign Up" OnClick="Button1_Click" />
<center>
            <asp:Label ID="Label4" runat="server" CssClass="newStyle18" style="top: 118px; left: 230px"></asp:Label>
</center>
        </div>
    

        <script>
            var input = document.getElementById("TextBox2");

            // Execute a function when the user presses a key on the keyboard
            input.addEventListener("keypress", function (event) {
                // If the user presses the "Enter" key on the keyboard
                if (event.key === "Enter") {
                    // Cancel the default action, if needed
                    event.preventDefault();
                    // Trigger the button element with a click
                    document.getElementById("Button6").click();
                }
            });
        </script>
        <script>
            var input = document.getElementById("TextBox1");

            // Execute a function when the user presses a key on the keyboard
            input.addEventListener("keypress", function (event) {
                // If the user presses the "Enter" key on the keyboard
                if (event.key === "Enter") {
                    // Cancel the default action, if needed
                    event.preventDefault();
                    // Trigger the button element with a click
                    document.getElementById("Button6").click();
                }
            });
        </script>

        <a href="https://www.facebook.com/BangonBagongMontalban" target="_blank"> 
    <div class="fb1" style="top: 711px; left: 118px; width: 292px; height: 20px">
        <img src="facebookw.png" style="width:42px; height:42px; top: 7px; left: 13px; right: 273px;  position: absolute;"/>
        <asp:Label ID="Label10" runat="server" CssClass="fb2" style="top: 20px; left: 74px" Text="Bangon Bagong Montalban"></asp:Label>
    </div>
      </a>

         <div class="footer">
        <asp:Image ID="Image1" runat="server" ImageUrl="mdtslogo.png" CssClass="auto-style5" ImageAlign="Middle" />
        <asp:Label ID="Label6" runat="server" Text="Municipal Document Tracking Website" CssClass="newStyle20" ></asp:Label>

        <div style="position:absolute; bottom:15px; left: 118px; height: 61px; width: 424px; color:darkgray; text-align:left; font-size:medium">
            
            <asp:Image ID="Image2" runat="server" ImageUrl="phone.png" Height="15px" Width="15px" /><asp:Label ID="Label5" runat="server" Text="Label" >&nbsp 0976-217-9268</asp:Label><br/><br/>
            <asp:Image ID="Image3" runat="server" ImageUrl="emailw.png" Height="15px" Width="15px" /><asp:Label ID="Label7" runat="server" Text="Label" >&nbsp municipalityofmontalban@gmail.com</asp:Label><br/>
           

        </div>
           <div style="position:absolute; bottom:15px; left: 440px; height: 61px; width: 346px; color:darkgray; text-align:left; font-size:medium">
              <asp:Image ID="Image4" runat="server" ImageUrl="time.png" Height="15px" Width="15px" /><asp:Label ID="Label8" runat="server" Text="Label" >&nbsp Mon – Fri: 8:00 am – 5:00 pm</asp:Label><br/><br/>
            <asp:Image ID="Image5" runat="server" ImageUrl="location.png" Height="17px" Width="15px" /><asp:Label ID="Label9" runat="server" Text="Label" >&nbsp J. P. Rizal St, Rodriguez, 1860 Rizal</asp:Label>
        </div>
    </div>

    </form>
    
</body>
</html>
