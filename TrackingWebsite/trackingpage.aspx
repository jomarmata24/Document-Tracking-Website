<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trackingpage.aspx.cs" Inherits="TrackingWebsite.trackingpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Track</title>    
    <style>
         .newStyle9 {
            background-color:  #2C6F7D;
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
        }

        .newStyle10 {
            position: absolute;
            font-size: xx-large;
            color: whitesmoke;
            font-family: 'Roboto',sans-serif;
            top: 2px;
            left: 69px;
        }

        .newStyle11 {
            position: absolute;
            top: 450px;
            left: 225px;
            width: 1100px;
            height: 98px;
            bottom: 206px;
            background-color: #f3f1f1;
            border-style: inherit
        }

        .newStyle12 {
            position: absolute;
                        background-color: #f3f1f1;
        }

        .newStyle13 {
            position: absolute;
            background-color: #f3f1f1;
        }
        .auto-style1 {
            top: 0px;
            left: 1239px;
            position: absolute;
            color: whitesmoke;
            height: 100%;
            width: 136px;
            background-color:  #2C6F7D;
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
            background-color:  #2C6F7D;
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
            background-color:  #2C6F7D;
            font-family:'Roboto',sans-serif;
            font-size: medium;
            font-weight: bold;
            cursor: pointer;
        }
        a:active {
            color:  #2C6F7D;
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

        /**/
        body{
            background-color: whitesmoke;
            height: 100vh;
            vertical-align: middle;
            display: flex;
            font-family: 'Roboto',sans-serif;
            font-size: 14px;    
        }
        .card{
            margin: auto;
            width: 50%;
            max-width:600px;
            box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-top: 3px solid #73AD21;
            border-bottom: 3px solid #73AD21;
            position:absolute;
            top: 215px;
            left: 600px;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
        }
        @media(max-width:768px){
            .card{
                width: 90%;
            }
        }
        .title{
            color:#73AD21;
            font-weight: 600;
            margin-bottom: 2vh;
            padding: 0 8%;
            font-size: large;
            height: 41px;
            margin-top: 0px;
        }
        #details{
            font-weight: 400;
        }
        .info {
            padding: 5% 8%;
            font-size:x-large;
        }
        .info .col-5 {
            padding: 0;
            position:absolute;
            top: 34px;
            left: 370px;
            width: 216px;
        }
        #heading{
            color: grey;
            line-height: 6vh;
        }
        .type{
            background-color: #ddd;
            padding: 5px;
            font-weight: 400;
            line-height: 2.5;
            padding-left: 49px;
            font-size:large;
        }
        
        #progressbar {
            overflow: hidden;
            color: rgb(252, 103, 49);
            padding-left: 0px;
            margin-top: 3vh
        }

        #progressbar li {
            list-style-type: none;
            font-size: medium;
            width: 25%;
            float: left;
            position: relative;
            font-weight: 400;
            color: rgb(160, 159, 159);
        }

        #progressbar #step1:before {
            content: "";
            color: rgb(252, 103, 49);
            width: 5px;
            height: 5px;
            margin-left: 0px !important;
            /* padding-left: 11px !important */
        }

        #progressbar #step2:before {
            content: "";
            color: #fff;
            width: 5px;
            height: 5px;
            margin-left: 100%;
        }

        #progressbar #step3:before {
            content: "";
            color: #fff;
            width: 5px;
            height: 5px;
            margin-left: 100% ; 
            /* padding-right: 11px !important */
        }

        #progressbar #step4:before {
            content: "";
            color: #fff;
            width: 5px;
            height: 5px;
            margin-right: 0px !important;
            /* padding-right: 11px !important */
        }

        #progressbar li:before {
            line-height: 29px;
            display: block;
            font-size: 12px;
            background: #ddd;
            border-radius: 50%;
            margin: auto;
            z-index: -1;
            margin-bottom: 1vh;
        }
        #progressbar li:after {
             content: '';
             height: 2px;
             background: #ddd;
             position: absolute;
             left: 3%;
             right: 0%;
             margin-bottom: 2vh;
             top: 1px;
             z-index: 1;

        }

        .progress-track{
            padding: 0 8%;
        }
        #progressbar li:nth-child(2):after {
            margin-left: auto;
        }

        #progressbar li:nth-child(1):after {
            margin: auto;
        }

        #progressbar li:nth-child(3):after {
            
        }
        #progressbar li:nth-child(4):after {
            margin-left: auto;
            width: 132%;
        }

        #progresslabel  li.active{
            color: black;
        }

        #progressbar li.active:before,
        #progressbar li.active:after
        {
            background: #73AD21;
        }
        label {
            font-weight:400;
        }

        .col-7 {
            width: 195px;
        }

        .auto-style11 {
            top: 711px;
            left: 38px;
            position: absolute;
            height: 17px;
            width: 72px;
        }

        #progresslabel li {
            list-style-type: none;
            font-size: medium;
            width: 26%;
            float: left;
            position: relative;
            font-weight: 400;
            color: rgb(160, 159, 159);
        }
        #progresslabel {
            margin-bottom: 3vh;
            overflow: hidden;
            color: rgb(252, 103, 49);
            padding-left: 0px;
            margin-top:-2%;
        }
        #document {
            top: 146px;
            position:absolute;
            width: 216px;
            text-align:right;
            padding-right:49px;
            left: 178px;
        }
        .trackanother {
              border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 4px;
              background-color: #f4511e;
              color: #FFFFFF;
              text-align: center;
              font-size: 18px;
              padding: 20px;
              width: 200px;
              transition: all 0.5s;
              cursor: pointer;
              margin: 5px;
              position:absolute;
            top: 670px;
            left: 793px;
        }
        .trackanother span {
          cursor: pointer;
          display: inline-block;
          position: relative;
          transition: 0.5s;
        }
        .trackanother span:after {
          content: '\00bb';
          position: absolute;
          opacity: 0;
          top: 0;
          right: -20px;
          transition: 0.5s;
        }

        .trackanother:hover span {
          padding-right: 25px;
        }

        .trackanother:hover span:after {
          opacity: 1;
          right: 0;
        }
        a{
            text-decoration:none;
            color: whitesmoke;
            font-family: 'Roboto',sans-serif;
        }
        #progressbar #step4:after {
            margin-left:0px;
        }
        #progressbar #step3:after {
           
        }
      .dropdown-content {
          display: none;
          position: absolute;
          background-color: #f1f1f1;
          min-width: 222px;
          box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
          z-index: 1;
          left: 1017px;
          top: 64px;
          text-align:center;
         
        }
        .dropdown-content a {
          color:dimgray;
          font-weight:100;
          padding: 12px 16px;
          text-decoration: none;
          display: block;
        }
        .dropdown-content a:hover {background-color: #ddd;}
        .dropdown:hover .dropdown-content {display: block;}
        .dropdown:hover .dropbtn {background-color: #3e8e41;}

    </style>
</head>
<body>
    <form id="form1" runat="server">   
        <div class="newStyle9">
            <div class="dropdown">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Text="DOWNLOAD  FORMS" BorderColor="#333300" BorderStyle="None"  />
                <div class="dropdown-content">
                    <a href="forms.aspx">Sample Form</a>
                </div>
            </div>
           <asp:Button ID="Button5" runat="server" CssClass="auto-style1" Text="TRACK" BorderColor="#333300" BorderStyle="None" OnClick="Button5_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="ABOUT" BorderColor="#333300" BorderStyle="None" OnClick="Button2_Click" />
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Text="LOGIN" BorderColor="#333300" BorderStyle="None" OnClick="Button4_Click" />
        </div>


        <div class="card">
            <div class="info">
                <div class="row">
                    <div class="col-7">
                        <span id="heading">Tracking No.</span><br>
                        <asp:Label ID="code" runat="server" Text="Label"></asp:Label>
                    <div class="col-7" style="position:absolute; top: 28px; left: 367px;">
                        <span id="heading">Status</span><br>
                        <asp:Label ID="statuslabel" runat="server" Text="Label"></asp:Label>
                    </div>
                    </div>
                </div>
            </div>
            <div class="type">
                <asp:Label ID="Label1" runat="server" Text="">Document Detail:</asp:Label>
                <br/>
                <asp:Label ID="details" runat="server" Text="" Style="font-size:14px"></asp:Label>
                <asp:Label ID="document" runat="server" Text=""></asp:Label>
            </div>
            <br>
            <br>
            <div class="tracking">
                <div class="title">Document Tracking</div>
            </div>
            <div class="progress-track" runat="server" id="prog">
                <asp:BulletedList ID="progressbar" runat="server">
                    <asp:ListItem id="step1" class="step0" runat="server" style="width:0px"></asp:ListItem>
                    <asp:ListItem id="step2" class="step0" runat="server" style="text-align:left; width:33%"></asp:ListItem>
                    <asp:ListItem id="step3" class="step0" runat="server" style="text-align:right; width:34%"></asp:ListItem>
                    <asp:ListItem id="step4" class="step0" runat="server" style="text-align:right; width:33%"></asp:ListItem>
                </asp:BulletedList>
                <asp:BulletedList ID="progresslabel" runat="server">
                    <asp:ListItem id="slabel1" class="step0" runat="server" style="width:21%">Completed Requirements</asp:ListItem>
                    <asp:ListItem id="slabel2" class="step0" runat="server" style="text-align: center">Processing</asp:ListItem>
                    <asp:ListItem id="slabel3" class="step0" runat="server" style="text-align: right">To Claim</asp:ListItem>
                    <asp:ListItem id="slabel4" class="step0" runat="server" style="text-align: right">Completed</asp:ListItem>
                </asp:BulletedList>
            </div>
            <br>
        </div>
        <div>
        <asp:Label ID="trackingno" runat="server" CssClass="auto-style11" Visible="False" ></asp:Label>
            <asp:Label ID="status" runat="server" CssClass="auto-style11" style="top:750px" ></asp:Label>
  </div>
        <button class="trackanother"><span><a href="track.aspx">Track Another</a></span></button>
        
    </form>
</body>
</html>
