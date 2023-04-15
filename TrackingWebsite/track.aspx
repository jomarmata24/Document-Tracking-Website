 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="track.aspx.cs" Inherits="TrackingWebsite.track" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Track</title>
    <style type="text/css">
        body {
            width: 100%;
            font-family: 'Roboto',sans-serif;
        }
        .newStyle1 {
            background-color: whitesmoke;
            margin:0px;
        }
        .newStyle2 {
            position: absolute;
        }
        .newStyle3 {
            position: absolute;
        }
        .newStyle4 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            position: absolute;
            font-weight: bold;
            top: 34px;
            left: 494px;
            height: 55px;
            width: 113px;
            display: inline-block;
            padding: 15px 25px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: whitesmoke;
            background-color: #2C6F7D;
            border-radius: 15px;
            box-shadow: 0 9px #999;
        }
        .newStyle5 {
            font-size: x-large;
            position: absolute;
            top: 7px;
            left: 14px;
        }
        .auto-style1 {
            top: 0px;
            left: 1239px;
            position: absolute;
            color: whitesmoke;
            height: 100%;
            width: 136px;
            background-color: #3e8e41;
            font-family:'Roboto',sans-serif;
            font-size: medium;
            font-weight: bold;
            cursor: pointer;
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
            top: -1px;
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

        #form1 {
            width: 100%;
            height: 831px;
        }
        a:active {
            color:#2C6F7D;
            background-color:whitesmoke;
        }
        .auto-style1:hover {
            color: whitesmoke;
            background-color: #193F44;
        }
  
        .auto-style2:hover {
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
        .newStyle4:hover {
            background-color: #3e8e41;
        }
        .newStyle4:active {
            background-color: #3e8e41;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
        .newStyle17:hover {
            background-color: #3e8e41;
        }
        .newStyle17:active {
            background-color: #3e8e41;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
        .newStyle10 {
            position: absolute;
            border-radius: 28px;
            background: #2C6F7D;
            padding: 20px;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
         }
   
        .newStyle11 {
            position:absolute;
        }
        .newStyle12 {
            font-size: large;
            position: absolute;
            font-weight: bold;
            cursor:pointer;
            color:whitesmoke;
        }
       
        a {
            text-decoration:none;
            color:black;
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
        
      
   
    </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server">
        <div class="newStyle9">
          
                <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Text="DOWNLOAD  FORMS" BorderColor="#333300" BorderStyle="None" OnClick="Button3_Click" />
               
            <asp:Button ID="Button5" runat="server" CssClass="auto-style1" Text="TRACK" BorderColor="#3e8e41" BorderStyle="None" OnClick="Button5_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="ABOUT" BorderColor="#333300" BorderStyle="None" OnClick="Button2_Click1" />
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Text="LOGIN" BorderColor="#333300" BorderStyle="None" OnClick="Button4_Click" />
            
        </div>
        <div class="newStyle2" style="top: 275px; left: 620px; height: 216px; width: 650px">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="newStyle3" style="top: 43px; left: 11px; height: 44px;" Width="459px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="newStyle4" Text="Track" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" CssClass="newStyle5" Text="Enter Tracking Number:"></asp:Label>
            

            <asp:Label ID="Label7" runat="server" CssClass="newStyle21" Visible="False"></asp:Label>

        </div>
      
       

      
      <a href="https://www.facebook.com/BangonBagongMontalban" target="_blank"> 
    <div class="newStyle10" style="top: 711px; left: 118px; width: 292px; height: 20px">
        <img src="facebookw.png" style="width:42px; height:42px; top: 7px; left: 13px; right: 273px;" class="newStyle11"/>
        <asp:Label ID="Label2" runat="server" CssClass="newStyle12" style="top: 20px; left: 74px" Text="Bangon Bagong Montalban"></asp:Label>
    </div>
      </a>
       

      
    
      <div class="footer">
        <asp:Image ID="Image1" runat="server" ImageUrl="mdtslogo.png" CssClass="auto-style5" ImageAlign="Middle" />
        <asp:Label ID="Label6" runat="server" Text="Municipal Document Tracking Website" CssClass="newStyle20" ></asp:Label>

        <div style="position:absolute; bottom:15px; left: 118px; height: 61px; width: 424px; color:darkgray; text-align:left; font-size:medium">
            
            <asp:Image ID="Image2" runat="server" ImageUrl="phone.png" Height="15px" Width="15px" /><asp:Label ID="Label3" runat="server" Text="Label" >&nbsp 0976-217-9268</asp:Label><br/><br/>
            <asp:Image ID="Image3" runat="server" ImageUrl="emailw.png" Height="15px" Width="15px" /><asp:Label ID="Label4" runat="server" Text="Label" >&nbsp municipalityofmontalban@gmail.com</asp:Label><br/>
           

        </div>
           <div style="position:absolute; bottom:15px; left: 440px; height: 61px; width: 346px; color:darkgray; text-align:left; font-size:medium">
              <asp:Image ID="Image4" runat="server" ImageUrl="time.png" Height="15px" Width="15px" /><asp:Label ID="Label5" runat="server" Text="Label" >&nbsp Mon – Fri: 8:00 am – 5:00 pm</asp:Label><br/><br/>
            <asp:Image ID="Image5" runat="server" ImageUrl="location.png" Height="17px" Width="15px" /><asp:Label ID="Label8" runat="server" Text="Label" >&nbsp J. P. Rizal St, Rodriguez, 1860 Rizal</asp:Label>
        </div>
    </div>
       
    </form>
    </body>
</html>
