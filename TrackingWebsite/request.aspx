<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request.aspx.cs" Inherits="TrackingWebsite.request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request</title>
        <style type="text/css">
        body {
            width: 100%;
            font-family: 'Roboto',sans-serif;
        }
        .newStyle1 {
            background-color:whitesmoke;
            margin:0px;
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
        
  
        
        .auto-style4:hover {
            color: whitesmoke;
            background-color: #193F44;
        }

        .newStyle10 {
            position: absolute;
            background-color:white;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);


        }
      
            .auto-style5 {
                top: 24px;
                left: 250px;
                position: absolute;
                font-size: xx-large;
                font-weight: bold;
                color:#193F44;
            }


            .auto-style6 {
                top: 292px;
                left: 50px;
                width: 239px;
                height: 28px;
                border-radius:5px;
                padding-left:5px;
                padding-right:5px;
            }

            .auto-style7 {
                position: absolute;
                top: 133px;
                left:50px;
                width: 226px;
                height: 28px;
                border-radius:5px;
                padding-left:5px;
                padding-right:5px;
                border-width:thin;
               
            }
            .auto-style8 {
                position: absolute;
                top: 133px;
                right:50px;
                height: 28px;
                width: 226px;
                border-radius:5px;
                padding-left:5px;
                padding-right:5px;
                border-width:thin;
            }
            .auto-style10 {
                position: absolute;
                top: 212px;
                left:50px;
                width: 596px;
                height: 28px;
                border-radius:5px;
                padding-left:5px;
                padding-right:5px;
                border-width:thin;
                margin-right:50px;
            }

            .newStyle11 {
                position: absolute;
                font-size: medium;
                color:#193F44;
                
            }
            .auto-style9 {
                top: 108px;
                left: 50px;
            }
            .auto-style11 {
                top: 292px;
                right: 52px;
                width: 239px;
                height: 28px;
                border-radius:5px;
                padding-left:5px;
                padding-right:5px;
                position: absolute;
                font-size:16px;
            }

            .newStyle12 {
                font-size: medium;
                position: absolute;
                color: #193F44;
                top: 327px;
                left: 414px;
            }
            .btn {
                position: absolute;
                height: 56px;
                width: 144px;
                display: inline-block;
                padding: 15px 25px;
                font-size: large;
                cursor: pointer;
                text-align: center;
                text-decoration: none;
                outline: none;
                color: whitesmoke;
                background-color: #3e8e41;
                border-radius: 15px;
                font-family:'Roboto',sans-serif;
                border-style:none;
                top: 407px;
                left: 50px;
            }
            .btn:hover {
                background-color: #2C6F7D;
            }
            .btn:active {
                background-color: #3e8e41;
                transform: translateY(4px);
            }
            .btn1 {
                position: absolute;
                height: 56px;
                width: 144px;
                display: inline-block;
                padding: 15px 25px;
                font-size: large;
                cursor: pointer;
                text-align: center;
                text-decoration: none;
                outline: none;
                color: red;
                background-color: whitesmoke;
                border-radius: 15px;
                font-family:'Roboto',sans-serif;
                border-style:none;
                top: 407px;
                right: 50px;
            }
            .btn1:hover {
                background-color: #2C6F7D;
                color:whitesmoke
            }
            .btncopy {
                position: absolute;
                height: 44px;
                width: 94px;
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
                
            }
            .btncopy:hover {
                background-color: #3e8e41;
                color:whitesmoke
            }
            .btn1:active {
                background-color: #3e8e41;
                transform: translateY(4px);
            }


            .auto-style12 {
                top: 716px;
                left: 473px;
            }


            .newStyle13 {
                position: absolute;
                width: 100%;
                height: 100%;
                background-color:rgb(208,208,208,0.7);
                text-align:center;
            }


            .newStyle14 {
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


    </style>
</head>
<body class="newStyle1">
   <form id="form1" runat="server">
       <div class="newStyle9">
            
            
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Text="BACK" BorderColor="#333300" BorderStyle="None" OnClick="Button4_Click" />
            
        </div>
        

       <div class="newStyle10" style="top: 194px; height: 502px; width: 708px; left: 32%;">
           <asp:Label ID="Label1" runat="server" Text="Request Form" CssClass="auto-style5"></asp:Label>
           <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6" style="position: absolute" Font-Size="12pt">
               <asp:ListItem></asp:ListItem>
               <asp:ListItem>doctype1</asp:ListItem>
               <asp:ListItem>doctype2</asp:ListItem>
               <asp:ListItem>doctype3</asp:ListItem>
           </asp:DropDownList>
           <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Font-Size="12pt" BorderStyle="Solid" BackColor="White" ReadOnly="True"></asp:TextBox>
           <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style8" Font-Size="12pt" BorderStyle="Solid" BackColor="White" ReadOnly="True"></asp:TextBox>
           <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style10" Font-Size="12pt" BorderStyle="Solid" BackColor="White" ></asp:TextBox>
           <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style11" >
               <asp:ListItem ></asp:ListItem>
               <asp:ListItem >Purpose1</asp:ListItem>
               <asp:ListItem >Purpose2</asp:ListItem>
               <asp:ListItem>Others</asp:ListItem>
           </asp:DropDownList>
           <asp:Label ID="Label2" runat="server" CssClass="newStyle11 auto-style9" Text="Name:"></asp:Label>
           <asp:Label ID="Label3" runat="server" CssClass="newStyle11 " Text="ID:" Style="top: 108px; left: 418px;"></asp:Label>
           <asp:Label ID="Label5" runat="server" CssClass="newStyle11" Text="Address:" Style="top: 188px; left: 50px;"></asp:Label>
           <asp:Label ID="Label4" runat="server" CssClass="newStyle11 " Text="Document Type:" Style="top: 268px; left: 50px;"></asp:Label>
           <asp:Label ID="Label6" runat="server" CssClass="newStyle11 " Text="Purpose:" Style="top: 268px; left: 418px;"></asp:Label>
           <asp:Label ID="Label7" runat="server" Text="Others:" Style="top: 353px; left: 419px; position: absolute; font-size: medium;"></asp:Label>

           <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" style="position: absolute;
                font-size: 12px;
                top: 345px;
                left: 477px;
                border-left-style: none;
                border-left-color: inherit;
                border-left-width: medium;
                border-right-style: none;
                border-right-color: inherit;
                border-right-width: medium;
                border-top-color: inherit;
                width: 175px; height: 28px; border-top-style: none; border-bottom-width: thin;"></asp:TextBox>
           <asp:Label ID="Label12" runat="server" Text="If others please specify." style="position: absolute; top: 325px; left: 420px;" Font-Size="11pt"></asp:Label>
           <asp:Button ID="Button5" class="btn" runat="server" Text="Submit" OnClick="Button5_Click" />
           <asp:Button ID="Button1" class="btn1" runat="server" Text="Clear Form" OnClick="Button1_Click" />
           
           <asp:Label ID="Label9" runat="server" style="position: absolute; font-size: medium; color: #000000; background-color: #FF9999; top: 66px; left: 0px; width: 100%; height: 23px; text-align:center" Text="" Visible="False" ></asp:Label>
           
       </div>

        
       <asp:Label ID="tracking_no" runat="server" CssClass="auto-style12" style="position: absolute" Text="Tracking Number" Visible="False"></asp:Label>

       <div id="display" runat="server" class="newStyle13">
           <div class="newStyle14">
               <asp:Label ID="Label11" runat="server" Text="Request Submitted Successfully!" style="font-size: x-large; top: 10%; display: block; position:absolute; left: 7px; right:7px;"></asp:Label>
               <asp:Label ID="Label10" runat="server" Text="Your <b>Tracking Number</b> For this Transaction is:" style="font-size: large; top: 23%; display: block; position:absolute; left: 7px; right:7px;"></asp:Label>
               <asp:Label ID="Label8" runat="server" Text="" style="font-size: xx-large; top: 45%; display: block; position:absolute; left: 7px; right:7px; font-weight:bold"></asp:Label>
               <asp:Button ID="copy" class="btncopy" runat="server" Text="COPY" style="left: 10%;" OnClick="copy_Click"   />
               <asp:Button ID="ok" class="btncopy" runat="server" Text="OK" OnClick="ok_Click" style="right: 10%;"/>

               
           </div>
           
       </div>
    </form>
</body>
</html>
