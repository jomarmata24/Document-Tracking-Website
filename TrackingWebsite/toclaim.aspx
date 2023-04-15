<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toclaim.aspx.cs" Inherits="TrackingWebsite.toclaim" %>

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
 

        .newStyle10 {
            position: absolute;
        }
       .sidebar {
          margin-top: 0;
          padding: 0;
          width: 274px;
          background-color: #193F44;
          position: fixed;
          height: 100%;
          overflow: auto;
            top: 0px;
            left: 0px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2)
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
            border-radius:10px;
        }
 
        .sidebar a.active {
          background-color: #D0D0D0;
          color: #181818;
          height: 20px;
          padding-top: 15px;
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
            color: whitesmoke;
        }
        .newStyle12 {
            position: absolute;
            top: 772px;
            left: 23px;
            height: 28px;
            width: 72px;
        }
        .newStyle14 {
            position:absolute;
        }

        .newStyle15 {
            position: absolute;
            top: 488px;
            left: 1188px;
            height: 439px;
            width: 580px;
            opacity: 0.7;
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
        .newStyle17 {
            position: absolute;
            
            right:5%;
            bottom:20%;
            opacity: 0.7;
        }

        .dropdown-content a:hover {background-color: #ddd;}
        .dropdown:hover .dropdown-content {display: block;}
        .dropdown-content {
          display: none;
          position: absolute;
          background-color: #f1f1f1;
          min-width: 222px;
          box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
          z-index: 1;
          left: 85%;
          top: 50px;
          font-size:16px;
          text-align:left;
          max-width:300px;
          font-weight:lighter;
          
         
         
        }
       .dropdown {
           left: 90%;
       }
       .dropdown-content a{text-decoration:none; color:black;padding: 12px 16px;display:block;padding-left:60px;text-align:left;}

        .auto-style1 {}
        .gridrow {
           
           padding: 10px;
           border-bottom-color: #D0D0D0;
           border-bottom-width: 8px;
           border-bottom-style: solid;
       }
       .header {
           border-bottom-width: 8px;border-bottom-style: solid;border-bottom-color: #D0D0D0;
       }
       .refresh {
            position: absolute;
            height: 56px;
            width: 124px;
            display: inline-block;
            padding: 10px 20px;
            font-size: large;
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
        .refresh:hover {
            background-color: #3e8e41;
        }
        
        .newStyle18 {
            display:block;
            font-size: xx-large;
            font-weight: 700;
            color: #666666;
     
        }
        .newStyle19 {
            position:absolute;
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
                <asp:Label ID="Label1" runat="server" Text="" style="font-weight:bold;"></asp:Label>
                    <hr/>
                       
                       <asp:Image ID="Image15" runat="server" ImageUrl="name.png" Height="17px" Width="17px" />
                        Name:
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        <br />
                        <br />
                    <asp:Image ID="Image9" runat="server" ImageUrl="contact.png" Height="17px" Width="17px" />
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
                        <asp:Image ID="Image17" runat="server" CssClass="auto-style1" Height="20px" ImageUrl="logout1.png" Width="20px" />&nbsp;Log Out</a>
                   
                </div>
            </div>
        </div>
               
        <div class="sidebar">
             <div style="height:74px; background-color:#193F44; padding-left:20px;border-bottom:1px solid gray;">
               <asp:Image ID="Image10" runat="server" Height="56px" ImageUrl="mdtslogo.png" Width="78px" style="top:8px;position:absolute;" />
           </div>
            <a href="loginview.aspx" style="margin-top:25px;">
                <asp:Image ID="Image3" runat="server" CssClass="auto-style1" Height="16px" ImageUrl="home.png" Width="23px" />
                &nbsp;Home</a>
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
            
            <a class="active" href="toclaim.aspx">
                <asp:Image ID="Image7" runat="server" CssClass="auto-style3" Height="23px" ImageUrl="claim.png" Width="27px" /><b>
                To Claim</b></a>

            <a href="history.aspx">
                <asp:Image ID="Image8" runat="server" CssClass="" Height="23px" ImageUrl="history.png" Width="27px" />
                &nbsp;History</a>

        </div>
        
        <div class="newStyle14" style="width: 60%; height: auto; left:274px; padding-left:10%; top:17%; padding-right:10%">
        <asp:Button ID="Button2" runat="server" CssClass="refresh" style="right:2%; height: 58px; width: 150px" Text="Refresh" OnClick="Button2_Click"/>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:fastdeal002_dtsdb1ConnectionString %>" ProviderName="<%$ ConnectionStrings:fastdeal002_dtsdb1ConnectionString.ProviderName %>" SelectCommand="SELECT tracking_no, date, doc_type, sender FROM to_claim WHERE user_id=@idnumber">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="idnumber" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>





            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Width="914px" BackColor="#F1F1F1" GridLines="Horizontal" CssClass="grid">
                <EditRowStyle BorderStyle="Inset" />
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#2C6F7D" Font-Bold="True" ForeColor="White" Height="90px" CssClass="header"/>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle HorizontalAlign="Center" Height="100px" CssClass="gridrow"/>
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />

            </asp:GridView>

            <asp:Image ID="Image1" runat="server" ImageUrl="empty-box.png" alt="No data to display" Height="576px" visible="false" style="left:35%; right:40%; opacity:0.4;" Width="576px"/>

            
           


            <div id="empty" runat="server" style="text-align: center; position: absolute; top: 45%; width: 300px; right:33%;" visible="false">
                <asp:Label ID="Label3" runat="server" CssClass="newStyle18" Text="It's Empty in Here"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Nothing to Claim." Style="color: #666666; top: 56%; left: 727px;"></asp:Label>
            </div>
           


            
        </div>
      

        <asp:Image ID="Image11" runat="server" CssClass="newStyle17" ImageUrl="trackbg.png" Height="200px" Width="200px" />
        <div class="newStyle19" style="bottom:8%; right: 5%; width: 216px">
            <a href="https://www.facebook.com/BangonBagongMontalban" target="_blank"><asp:Image ID="Image12" runat="server" ImageUrl="facebookw.png" Height="60px" Width="60px" ToolTip="facebook" /></a>&nbsp&nbsp
            <a href="https://accounts.google.com/v3/signin/identifier?dsh=S-1794475961%3A1669885692004616&continue=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&emr=1&followup=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&osid=1&passive=1209600&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=ARgdvAseff4HfxOFEi5724IU6X3VST4XwJPpmDlxMriNurbp2dqAZ49KzJPhSN-WwUBEtWmaso4N" target="_blank"><asp:Image ID="Image13" runat="server" ImageUrl="emailw.png" Height="60px" Width="60px" ToolTip="Gmail" /></a>&nbsp&nbsp
            <a href="https://www.instagram.com" target="_blank"><asp:Image ID="Image14" runat="server" ImageUrl="instagramw.png" Height="60px" Width="60px" ToolTip="Instagram" /></a>
        </div>
        
        
     </form>
</body>
</html>
