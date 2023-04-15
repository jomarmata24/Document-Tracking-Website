<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="TrackingWebsite.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
    <style type="text/css">
        body {
            width: 100%;
            font-family: 'Roboto',sans-serif;
        }
        .newStyle1 {
            background-image: url('municipalhall.jpg');
            background-size:cover;
            background-repeat:no-repeat;
            margin:0px;

        }
         .auto-style1 {
            top: 0px;
            left: 1239px;
            position: absolute;
            color: whitesmoke;
            height: 100%;
            width: 136px;
            background-color: #2C6F7D;
            font-family: 'Roboto',sans-serif;
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
            background-color: #3e8e41;
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
        #form2 {
            width: 100%;
            height: 831px;
        }
        a:active {
            color: #333300;
            background-color:whitesmoke;
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
            border-style:inset;
        }
        .newStyle12 {
            font-size: 70px;
            font-weight: bolder;
            position: absolute;
            top: 26px;
            left: 12px;
            width: 589px;
        }
        .newStyle13 {
            font-size: x-large;
            position: absolute;
            top: 879px;
        }
        .newStyle14 {
            font-size: x-large;
            position: absolute;
            top: 951px;
            left: 843px;
        }
        .newStyle15 {
            font-size: large;
            position: absolute;
            top: 848px;
            left: 843px;

        }
        .newStyle16 {
            
            position: absolute;
            top: 953px;
            left: 413px;
            width: 335px;
        }
        .newStyle17 {
            font-size: large;
            position: absolute;
            top: 848px;
            left: 1209px;
            width: 152px;
        }
        .newStyle18 {
            position: absolute;
            text-align:center;
            border-radius: 25px;
            border: 2px solid  #3e8e41;
            padding: 20px;
            width: 200px;
            height: 150px;
            background: rgb(0,0,0,0.7);
            color:whitesmoke;

        }

        .footer {
            text-align: center;
            padding:3px;
            background: rgb(25,63,68,0.92);
            color: whitesmoke;
            margin-bottom:0px;
            display:block;
            margin-top:-18px;
            height:170px; 
        }
        .footer a {
            text-decoration:none;
            color: whitesmoke;
        }
        .footer a:hover {
            color: #3e8e41;
        }

        .newStyle19 {
            font-size: large;
            position: absolute;
            top: 920px;
            left: 843px;
        }
        .newStyle20 {
            font-size: x-large;
            position: absolute;
            top: 881px;
            left: 1214px;
            width: 225px;
        }
        .newStyle21 {
            font-size: large;
            position: absolute;
            top: 921px;
            left: 419px;
            width: 85px;
        }

        .newStyle22 {
            position: absolute;
        }
        .newStyle22 {
            font-size: x-large;
        }

        .newStyle23 {
            position: absolute;
        }
        .newStyle24 {
            font-size: large;
            position: absolute;
            top: 847px;
            width: 118px;
            left: 419px;
        }
        .newStyle25 {
            font-size: x-large;
            position: absolute;
            top: 880px;
            left: 421px;
            width: 241px;
        }

        .newStyle26 {
            position: absolute;
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
            right: 84px;
        }
        .auto-style2:hover {
            color: whitesmoke;
            background-color: #193F44;
        }
        
        </style>
</head>
<body class="newStyle1">
    <form id="form2" runat="server">
    <div class="newStyle9">
        
            <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Text="DOWNLOAD  FORMS" BorderColor="#333300" BorderStyle="None" OnClick="Button3_Click" />
           
            <asp:Button ID="Button5" runat="server" CssClass="auto-style1" Text="TRACK" BorderColor="#333300" BorderStyle="None" OnClick="Button5_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="ABOUT" BorderColor="#333300" BorderStyle="None" OnClick="Button2_Click" />
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Text="LOGIN" BorderColor="#333300" BorderStyle="None" OnClick="Button4_Click" />
            
        </div>
        <div class="newStyle18" style="top: 146px; height: 532px; width: 1212px; left: 263px;">
                <h2 class="newStyle23" style="top: 28px; left: 498px; text-align:center">Municipality of Montalban</h2>
                <p class="newStyle22" style="top: 118px; left: 74px; height: 416px; width: 1101px; text-align:justify"><b>Town Established</b><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It was in the early part of the year 1871, during the Spanish regime, when Montalban was established as a town by Padre Eustaquio, a native of Pasig. Prior to that, it was just a lonely barrio belonging to the municipality of San Mateo which presently is an adjoining town. The barrio was then called “Balite” by the natives, after the wide spreading Balite Trees that stand proudly on the banks of the Montalban River. But later on, the Spaniards changed the name to “Montalban”, from the Spanish word “Monte”, meaning mountain since the town was surrounded by them.<br />
                </p>
               
                
        </div>
        
        </form>
    <div class="footer">
        <asp:Label ID="Label5" runat="server" CssClass="newStyle16" Text="J. P. Rizal St, Rodriguez, 1860 Rizal" Font-Size="20px"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="newStyle13" Style="left: 817px; width: 185px; right: 596px;" Text="0976-217-9268" Font-Size="20px"></asp:Label>
        <a href="https://accounts.google.com/v3/signin/identifier?dsh=S-1794475961%3A1669885692004616&continue=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&emr=1&followup=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&osid=1&passive=1209600&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=ARgdvAseff4HfxOFEi5724IU6X3VST4XwJPpmDlxMriNurbp2dqAZ49KzJPhSN-WwUBEtWmaso4N" target="blank">
            <asp:Label ID="Label3" runat="server" CssClass="newStyle14" Text="municipalityofsample@gmail.com" Font-Size="18px"></asp:Label>
        </a>
        <asp:Label ID="Label4" runat="server" CssClass="newStyle15" Text="Contact Us :"></asp:Label>
        <asp:Label ID="Label1" runat="server" CssClass="newStyle19" Text="Email Us :"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="newStyle17" Text="Facebook Page :"></asp:Label>
        <a href="https://www.facebook.com/BangonBagongMontalban" target="_blank">
            <asp:Label ID="Label7" runat="server" CssClass="newStyle20" Text="Bangon Bagong Montalban" Font-Size="18px"></asp:Label>
        </a>
        <asp:Label ID="Label8" runat="server" CssClass="newStyle21" Text="Location :"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="newStyle24" Text="Open Hours :"></asp:Label>
        <asp:Label ID="Label10" runat="server" CssClass="newStyle25" Text="Mon – Fri: 8:00 am – 5:00 pm" Font-Size="18px"></asp:Label>
        <a href="track.aspx"><asp:Image ID="Image1" runat="server" CssClass="newStyle26" ImageUrl="mdtslogo.png" style="top: 835px; left: 197px; height: 150px; width: 154px" /></a>
        <asp:Image ID="Image2" runat="server" CssClass="newStyle26" ImageUrl="MONTALBAN-LOGO.png" style="top: 826px; left: 1494px; height: 154px; width: 148px"/>
    </div>
    </body>
</html>
