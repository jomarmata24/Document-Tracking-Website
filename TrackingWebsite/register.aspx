<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="TrackingWebsite.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">
        body {
            width: 100%;
            font-family: 'Roboto',sans-serif;
            
        }
        .newStyle1 {
            background-color: whitesmoke;
            margin:0px;
        }
       
        .auto-style4 {
            position: absolute;
            top: -1px;
            left:80%;
            color: whitesmoke;
            height: 100%;
            width: 136px;
            background-color: #2C6F7D;
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
        .signup {
            position: absolute;
            top: 195px;
            height: 650px;
            background-color:#2C6F7D;
            border-radius: 15px;
            left: 32%;
            width: 502px;
            color:whitesmoke;
            font-family:'Roboto',sans-serif;
        }
        .newStyle11 {
            position: absolute;
            top: 91px;
            left: 111px;
            width: 197px;
        }
        
        .newStyle13 {
            position: absolute;
            font-size: xx-large;
            font-weight: bold;
        }
        .auto-style6 {
            top: 22px;
            left: 192px;
        }
        .newStyle14 {
            position: absolute;
            font-size: large;
            top: 92px;
            left: 45px;
        }
        .newStyle15 {
            position: absolute;
            font-size: large;
        }
        .auto-style7 {
            position: absolute;
            font-size: large;
            left: 102px;
            top: 264px;
        }
        
        .auto-style9 {
            position: absolute;
            top: 127px;
            left: 102px;
            width: 279px;
            height: 30px;
            border-radius:15px;
            padding-left:15px;
            padding-right:15px;
        }
        .auto-style10 {
            position: absolute;
            font-size: large;
            top: 99px;
            left: 102px;
        }
        .newStyle16 {
            position: absolute;
        }
        .newStyle17 {
            position: absolute;
            font-size: large;
        }
        .auto-style12 {
            top: 338px;
            left: 103px;
        }

        .auto-style13 {
            position: absolute;
            top: 291px;
            left: 102px;
            width: 279px;
            height: 30px;
            bottom: 323px;
            border-radius:15px;
            padding-left:15px;
            padding-right:15px;
        }
        .newStyle19 {
            position: absolute;
            font-size: large;
        }
        .auto-style14 {
            top: 414px;
            left: 102px;
        }
        .newStyle20 {
            position: absolute;
            color: #2C6F7D;
            height: 9%;
            width: 208px;
            background-color:whitesmoke;
            font-family:'Roboto',sans-serif;
            font-size: larger;
            font-weight: bold;
            cursor: pointer;
            top: 526px;
            left: 148px;
            text-align: center;
            text-decoration: none;
            outline: none;
            border-radius: 30px;
            border-width:0;
        }
        .newStyle20:hover {
            color:whitesmoke;
            background-color: #3e8e41;
        }
        .link a {
            color:whitesmoke;
            text-decoration:none;
        }
        .link a:hover {
            color:#3e8e41;
        }

        

        .auto-style15 {
            top: 189px;
            left: 103px;
        }
         .otpbox {
                position: absolute;
                right: 30%;
                left: 30%;
                display: block;
                background-color:white;
                top: 20%;
                bottom:40%;
                height: 316px;
                font-family:'Roboto',sans-serif;
                color:#193F44;
            }
        .btnotp {
                position: absolute;
                height: 44px;
                width: 20%;
                display: inline-block;
                padding: 10px 20px;
                font-size: large;
                cursor: pointer;
                text-align: center;
                text-decoration: none;
                outline: none;
                color: #193F44;
                background-color: whitesmoke;
                border-radius: 10px;
                font-family:'Roboto',sans-serif;
                border-style:none;
                bottom:10%;
                left:40%;
                right:40%
        }
        .txtotp {
            font-size: xx-large; top: 45%; display: block; position:absolute; left: 20%; right:20%; font-weight:bold;text-align:center;width:60%;border-width:0 0 2px 0;border-style:solid;
        }
        .btncopy:hover {
                background-color: #3e8e41;
                color:whitesmoke
            }

        </style>
</head>
<body>
     <form id="form1" runat="server">
       <div class="newStyle9">
            
            
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Text="BACK" BorderColor="#333300" BorderStyle="None" OnClick="Button4_Click" />
            
        </div>
        
         <div class="signup">
             
             <asp:Label ID="Label1" runat="server" CssClass="newStyle13 auto-style6" Text="Sign Up"></asp:Label>
             <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="Full Name:" ></asp:Label>
             <asp:Label ID="Label5" runat="server" CssClass="newStyle19 auto-style14" Text="Enter Password:"></asp:Label>
             <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Contact No:"></asp:Label>
             <asp:Label ID="Label4" runat="server" CssClass="newStyle17 auto-style12" Text="Email:"></asp:Label>
             <asp:Label ID="Label7" runat="server" Text="Username:" CssClass="auto-style15" style="font-size: large; position: absolute"></asp:Label>
             <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" BorderStyle="None" Font-Size="12pt" ></asp:TextBox>
             <asp:TextBox ID="TextBox2" runat="server" style="position: absolute; top: 216px; left: 103px; width: 279px; height: 30px; border-radius:15px; padding-left:15px;padding-right:15px;" BorderStyle="None" Font-Size="12pt"></asp:TextBox>
             <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style13"  BorderStyle="None" Font-Size="12pt" MaxLength="11" TextMode="Phone"></asp:TextBox>
             <asp:TextBox ID="TextBox5" runat="server" style="position: absolute; top: 365px; left: 103px; width: 279px; height: 30px; border-radius:15px; padding-left:15px;padding-right:15px;" BorderStyle="None" Font-Size="12pt"></asp:TextBox>
             <asp:TextBox ID="TextBox6" runat="server" style="position: absolute; top: 441px; left: 102px; width: 279px; height: 30px; border-radius:15px; 5px;padding-left:15px;padding-right:15px;" TextMode="Password" BorderStyle="None"></asp:TextBox>

             <asp:Button ID="Button5" runat="server" CssClass="newStyle20 " Text="REGISTER" OnClick="Button5_Click" />
             <asp:Label ID="Label6" runat="server" CssClass="link" Style="position:absolute; top: 592px; left: 202px; font-size:13px;"><a href="login.aspx">Go Back to Login</a></asp:Label>
             <asp:Label ID="Label9" runat="server" style="position: absolute; font-size: medium; color: #000000; background-color: #FF9999; top: 64px; left: 0px; width: 100%; height: 23px; text-align:center" Text="" Visible="False" ></asp:Label>
             <asp:Label ID="Label10" runat="server" style="position: absolute; font-size: small; top: 166px; left: 130px;" Text="(First Name &amp;nbsp Middle Name &amp;nbsp Last Name)" ForeColor="Silver"></asp:Label>
         </div>

         <div id="otpdiv" runat="server" style="position: absolute; width: 100%; height: 100%; background-color:rgb(208,208,208,0.7); text-align:center;">
             <div class="otpbox">
                  <asp:Label ID="Label12" runat="server" style="position: absolute; font-size: medium; color: #000000; background-color: #FF9999; top: 0px; left: 0px; width: 100%; height: 23px; text-align:center" Text="" Visible="False" ></asp:Label>
               <asp:Label ID="Label11" runat="server" Text="Kindly Check Your Email" style="font-size: x-large; top: 10%; display: block; position:absolute; left: 7px; right:7px;"></asp:Label>
               <asp:Label ID="Label8" runat="server" Text="We sent you an &lt;b&gt;OTP&lt;/b&gt; to verify your email." style="font-size: large; top: 23%; display: block; position:absolute; left: 7px; right:7px;"></asp:Label>
                 <asp:TextBox ID="TextBox3" runat="server" class="txtotp"></asp:TextBox>
               <asp:Button ID="submit" class="btnotp" runat="server" Text="submit" OnClick="submit_Click1"   />
               
           </div>
           
                 <asp:Label ID="Label13" runat="server" Text="Label"  Enabled="false"></asp:Label>
               
         </div>

    </form>
</body>
</html>
