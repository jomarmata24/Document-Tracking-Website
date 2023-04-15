<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginview.aspx.cs" Inherits="TrackingWebsite.loginview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ACCOUNT</title>
    <style type="text/css">
        body {
            width: 100%;
            font-size:20px;
            font-family: 'Roboto',sans-serif;
           
           
        }
       
        .newStyle1 {
            background-color:#D0D0D0;
        }
        
        #form1 {
            width: 100%;
           
        }
        a:active {
            color: #333300;
            background-color:#f1f1f1;
            
        }
 

        .newStyle10 {
            position: absolute;
        }
       .sidebar {
          margin-top: 0;
          padding: 0;
          width: 274px;
          background-color:#193F44;
          position: fixed;
          height: 100%;
          overflow: auto;
            top: 0px;
            left: 0px;
           box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
           z-index:1;
        }

        .sidebar a {
          display: block;
          color: whitesmoke;
          text-decoration: none;
            height: 39px;
            padding-left:40px;
            padding-top:30px;
            padding-right: 16px;
            padding-bottom: 16px;
        }
 
        .sidebar a.active {
          background-color: #D0D0D0;
          color: #181818;
          height: 20px;
          padding-top: 15px;
          border-radius:10px;
        }

        .sidebar a:hover:not(.active) {
          background-color: #2C6F7D;
          color: white;
        }

        div.content {
          margin-left: 200px;
          padding: 1px 16px;
          height: 1000px;
        }

        @media screen and (max-width: 700px) {
          .sidebar {
            width: 100%;
            height: auto;
            position: relative;
          }
          .sidebar a {float: left;}
          div.content {margin-left: 0;}
       }

        @media screen and (max-width: 400px) {
          .sidebar a {
            text-align: center;
            float: none;
          }
        }

        .newStyle11 {
            font-size: x-large;
            font-family: 'Roboto',sans-serif;
            text-align:left;
            padding-left: 40px;
            font-weight: bold;
            padding-top:15px;
            padding-bottom:15px;
            background-color: #193F44;
            color:whitesmoke;
        }
        .newStyle12 {
            position: absolute;
            top: 772px;
            left: 23px;
            height: 28px;
            width: 72px;
        }
        
        .newStyle14 {
            position: absolute;
            font-weight:bold;
            font-size:60px;
        }
        .auto-style2 {
            top: 59px;
            right:7%;
            height: 81px;
            width: 51%;
            color: #F5F5F5;
        }
        
        .track {
              border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 20px;
              background-color: #2C6F7D;
              color: #FFFFFF;
              text-align: center;
              font-size: 18px;
              padding: 20px;
              
              transition: all 0.5s;
              cursor: pointer;
              margin: 5px;
              position:absolute;
            
           
        }
        .track span {
          cursor: pointer;
          display: inline-block;
          position: relative;
          transition: 0.5s;
        }
        .track span:after {
          content: '\00bb';
          position: absolute;
          opacity: 0;
          top: 0;
          right: -20px;
          transition: 0.5s;
        }

        .track:hover span {
          padding-right: 25px;
        }

        .track:hover span:after {
          opacity: 1;
          right: 0;
        }
        .track a{
            text-decoration:none;
            color: whitesmoke;
            font-family: 'Roboto',sans-serif;
        }
      
        .newStyle15 {
            position: absolute;
        }
        .auto-style3 {
            top: 104px;
            left: 1072px;
            height: 776px;
            width: 795px;
            font-size:18px;
        }
        .newStyle9 {
            background-color: whitesmoke;
            height: 70px;
            font-size: medium;
            font-weight: bold;
            width:100%;
            position: absolute;
            top: -2px;
            left: 0px;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
        }

        .newStyle16 {
            position: absolute;
            top: 13px;
            left: 90%;
            background-color:whitesmoke;
            cursor: pointer;
            display: inline-block;
            height: 39px;
        }


        .dropdown-content a:hover {background-color: #ddd;}
        .dropdown:hover .dropdown-content {display: block;}
        .dropdown-content {
          display: none;
          position: absolute;
          background-color: #f1f1f1;
          min-width: 222px;
          max-width:300px;
          box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
          z-index: 1;
          left: 85%;
          top: 50px;
          text-align:left;
          font-size:16px;
          
          font-weight:lighter;
         
        }
       .dropdown {
           left: 90%;
       }
       .dropdown-content a{text-decoration:none; color:black;padding: 12px 16px;display:block;padding-left:60px;text-align:left;}

      
        .newStyle17 {
            position: absolute;
            background-color:whitesmoke;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            border-radius:5px;
        }

      
        .newStyle18 {
            position: absolute;
        }
        .about{ color: #F5F5F5; font-size: 14px; position:absolute;
            bottom:2%;
            left:670px;
            width: 30%;
            height: 180px;
        }
        .about a {
            text-decoration:none;
            color: whitesmoke;
        }
        .about a:hover {
            color: #3e8e41;
        }
       
      
    </style>
   
</head>

<body class="newStyle1">
    <form id="form1" runat="server">
        <div class="newStyle9">
            <div class="dropdown">
                <asp:Button ID="Button1" runat="server" Width="35px" Text="" CssClass="newStyle16" OnClick="Button1_Click1" BorderStyle="None"/>
                <a href="loginview.aspx">
                    <asp:Image ID="Image2" runat="server" Height="42px" Width="42px" ImageUrl="account2.png" Style="border-radius: 50%" CssClass="newStyle16" />
                </a>
                <div class="dropdown-content">
                    <div style="padding-left: 15px; padding-right: 15px;">
                        <br />
                         Username:
                    <asp:Label ID="username" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                         ID No:
                <asp:Label ID="Label3" runat="server" Text="" style="font-weight:bold;"></asp:Label>
                    <hr/>
                       
                       <asp:Image ID="Image15" runat="server" ImageUrl="name.png" Height="17px" Width="17px" />
                        Name:
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        <br />
                        <br />
                    <asp:Image ID="Image14" runat="server" ImageUrl="contact.png" Height="17px" Width="17px" />
                        Contact:
                    <asp:Label ID="Contact" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    <asp:Image ID="Image16" runat="server" ImageUrl="mail.png" Height="17px" Width="17px" />
                         Email:
                    <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </div>
                        <hr/>
                    <a href="login.aspx">
                        <asp:Image ID="Image8" runat="server" CssClass="auto-style1" Height="20px" ImageUrl="logout1.png" Width="20px" />&nbsp;Log Out</a>
                   
                </div>
            </div>
        </div>

        <div class="newStyle17" style="top: 121px; left: 376px; width: 402px; height: 263px; font-family:'roboto',sans-serif">
            <asp:Image ID="Image11" runat="server" ImageUrl="trackdocu.png" Style="position:absolute; top: 16px; left: 20px; height: 101px; width: 77px;" />
            <asp:Label ID="Label4" runat="server" Text="Label" style="font-weight: 700; color: #193F44; position: absolute; top: 23px; left: 120px;">TRACK YOUR DOCUMENTS</asp:Label>
            <asp:Label ID="Label5" runat="server" style="position: absolute; font-size: 13px; top: 64px; left: 122px; width: 261px; height: 45px; text-align: left;" Text="You can track your Documents and Request using Municipal Document Tracking Website."></asp:Label>
            <div>
                <button class="track" style="width: 191px; top: 151px;  left: 100px;"><span><a href="track_login.aspx" target="_blank">Track Now</a></span></button>
            </div>
        </div>

        <div class="newStyle17" style="top: 121px; left: 830px; width: 402px; height: 263px; font-family:'roboto',sans-serif">
            <asp:Image ID="Image9" runat="server" ImageUrl="requestdocu.jpg" Style="position:absolute; top: 12px; left: 17px; height: 101px; width: 90px;" />
            <asp:Label ID="Label6" runat="server" Text="MAKE A REQUEST" style="font-weight: 700; color: #193F44; position: absolute; top: 19px; left: 122px;"></asp:Label>
            <asp:Label ID="Label7" runat="server" style="position: absolute; font-size: 13px; top: 57px; left: 122px; width: 261px; height: 45px;" Text="Submit a request to get the document/s you need using Municipal Document Tracking Website."></asp:Label>
            <div>
                <button class="track" style="width: 191px; top: 151px; left: 100px;"><span><a href="request.aspx" target="_blank">Request Now</a></span></button>
            </div>
        </div>

        <div class="newStyle17" style="top: 121px; left: 1282px; width: 402px; height: 263px; font-family:'roboto',sans-serif">
            <asp:Image ID="Image12" runat="server" ImageUrl="downloadocu.png" Style="position:absolute; top: 12px; left: 17px; height: 101px; width: 90px;" />
            <asp:Label ID="Label8" runat="server" Text="DOWNLOADABLE FORMS" style="font-weight: 700; color: #193F44; position: absolute; top: 19px; left: 114px;"></asp:Label>
            <asp:Label ID="Label9" runat="server" style="position: absolute; font-size: 13px; top: 57px; left: 118px; width: 261px; height: 45px;" Text="Download forms, fill up at home and pass to Municipality for faster transaction."></asp:Label>
            <div>
                <button class="track" style="width: 191px; top: 151px; left:100px"><span><a href="formsdl_login.aspx" target="_blank">Download Now</a></span></button>
            </div>
        </div>
        
        <div class="sidebar">
           <div style="height:74px; background-color:#193F44; padding-left:20px;border-bottom:1px solid gray;">
               <asp:Image ID="Image10" runat="server" Height="56px" ImageUrl="mdtslogo.png" Width="78px" style="top:8px;position:absolute;" />
           </div>
            <a class="active" href="loginview.aspx" style="margin-top:25px;">
                <asp:Image ID="Image3" runat="server" CssClass="auto-style1" Height="16px" ImageUrl="home.png" Width="23px" /><b>
                &nbsp;Home</b></a>
            <asp:Button ID="Button5" runat="server" CssClass="newStyle11" Text="Documents" BorderStyle="None" disable="true" Width="272px" Height="59px" />
            
            <a href="my_request.aspx">
                <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="request.png" Width="23px" />
                &nbsp;My Requests</a>
            
            <a href="received.aspx">
                <asp:Image ID="Image5" runat="server" CssClass="auto-style2" Height="19px" ImageUrl="received.png" Width="23px" />
                &nbsp;Received by                                         Admin</a>         
            
            <a href="processing.aspx">
                <asp:Image ID="Image6" runat="server" Height="18px" ImageUrl="processing.png" Width="23px" />
                &nbsp;Processing</a>
            
            <a href="toclaim.aspx">
                <asp:Image ID="Image7" runat="server" CssClass="auto-style3" Height="23px" ImageUrl="claim.png" Width="27px" />
                To Claim</a>

            <a href="history.aspx">
                <asp:Image ID="Image1" runat="server" CssClass="" Height="23px" ImageUrl="history.png" Width="27px" />
                &nbsp;History</a>

        </div>
        
        

    <div style="position: absolute; width: 100%; height: 28%; bottom:0%; padding-right:0px;z-index:0; background-color:#9C9C9C" >
            <asp:Image ID="Image13" runat="server" ImageUrl="MDTS-HOMEPAGE.png" Style="position: absolute; bottom:10%; width:242px; height:180px; left:376px;" />
        
        <div class="about">
        <b>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="time.png" height="23px" Width="23px" style="position:absolute"/><asp:Label ID="Label10" runat="server" Text="" style="position: absolute; left:5%; top: 2px;">Open Hours :<br/>Mon – Fri: 8:00 am – 5:00 pm</asp:Label>
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="phone.png" height="23px" Width="23px" style="position:absolute;  right: 42%;"/><asp:Label ID="Label11" runat="server" Text="" style="position: absolute;right:24%; top: 0px;">Contact Us :<br/>0976-217-9268</asp:Label>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="emailw.png" Width="23px" style="position:absolute; top: 52px; left: 0px; height: 23px;"/><asp:Label ID="Label12" runat="server" Text="" style="position: absolute; left:5%; top: 52px;">Email :<br/><a href="https://accounts.google.com/v3/signin/identifier?dsh=S-1794475961%3A1669885692004616&continue=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&emr=1&followup=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&osid=1&passive=1209600&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=ARgdvAseff4HfxOFEi5724IU6X3VST4XwJPpmDlxMriNurbp2dqAZ49KzJPhSN-WwUBEtWmaso4N" target="_blank">municipalityofmontalban@gmail.com</a></asp:Label>   
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="facebookw.png" Width="23px" style="position:absolute; top: 102px; left: 0px; height: 23px;"/><asp:Label ID="Label13" runat="server" Text="" style="position: absolute; left:5%; top: 102px;">Facebook Page :<br/><a href="https://www.facebook.com/BangonBagongMontalban" target="_blank">Bangon Bagong Montalban</a></asp:Label>   
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="location.png" height="26px" Width="23px" style="position:absolute;  right: 42%; top: 52px;"/><asp:Label ID="Label14" runat="server" Text="" style="position: absolute;right:0%; top: 52px;">Location :<br/>J. P. Rizal St, Rodriguez, 1860 Rizal</asp:Label>

        </b>
        </div>
            
            
       
    </div>
    
        
    
     </form>
    
    </body>
</html>
