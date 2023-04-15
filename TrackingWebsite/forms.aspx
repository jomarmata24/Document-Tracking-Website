<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forms.aspx.cs" Inherits="TrackingWebsite.forms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Downloadable Forms</title>
    <style type="text/css">
        body {
            width: 100%;
            font-family: 'Roboto',sans-serif;
        }
        .newStyle1 {
            background-color:#D0D0D0;
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
            background-color: #3e8e41;
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
            margin-right: 0px;
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
        


        .auto-style5 {
            top: 206px;
            left: 517px;
            height: 468px;
            width: 830px;
            position: absolute;
            background-color: white;
           
        }



        .auto-style6 {
            top: 20px;
            font-family:'Roboto',sans-serif;
            position: absolute;
            font-size: larger;
            color:dimgray;
        }


       .dl {
           color: rgb(44,111,125);
           font-weight:bold;
           position:absolute;
           top: 20px;
           right:10%;
           text-decoration:underline;
           font-size:larger;
       }
        
        a:hover {
            text-decoration:underline;
            color: #3e8e41;
            
        }

        .label {
            position: absolute;
            font-size: x-large;
            font-weight: bold;
            color: whitesmoke;
            display:block;

        }

    </style>
      

</head>
<body class="newStyle1">
    <form id="form1" runat="server">
        <div class="newStyle9">
            
                <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Text="DOWNLOAD  FORMS" BorderColor="#333300" BorderStyle="None" OnClick="Button3_Click"  />
                
            <asp:Button ID="Button5" runat="server" CssClass="auto-style1" Text="TRACK" BorderColor="#3e8e41" BorderStyle="None" OnClick="Button5_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="ABOUT" BorderColor="#333300" BorderStyle="None" OnClick="Button2_Click1" />
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Text="LOGIN" BorderColor="#333300" BorderStyle="None" OnClick="Button4_Click" />
            
        </div>
        
        <div class="auto-style5">
            <div style="position: absolute; top: -1px; height: 63px; width:80%; display:block; padding-left:10%; padding-right:10%; left: 0px; border-bottom:2px solid #D0D0D0;background-color:rgb(44,111,125); ">
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Business Permit and Licensing Office" style="top:15px;left:15px;"></asp:Label>
            </div>
            
            <div style="position: absolute; top: 67px; height: 63px; width:80%; display:block; padding-left:10%; padding-right:10%; left: 0px; border-bottom:2px solid #D0D0D0; ">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Application-Form-Business-Permit"></asp:Label>
               
                    <a class="dl" href="Application-Form-Business-Permit.pdf" download="Application-Form-Business-Permit">download</a>
            </div>
             <div style="position: absolute; top: 130px; height: 63px; width:80%; display:block; padding-left:10%; padding-right:10%; left: 0px; border-bottom:8px solid #D0D0D0; ">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Application-Form-Working-Permit"></asp:Label>
               
                    <a class="dl" href="Application-Form-Working-Permit.pdf" download="Application-Form-Working-Permit">download</a>
            </div>
             <div style="position: absolute; top: 201px; height: 63px; width:80%; display:block; padding-left:10%; padding-right:10%; left: 0px; border-bottom:2px solid #D0D0D0;background-color:rgb(44,111,125); ">
               <asp:Label ID="Label4" runat="server" CssClass="label" Text="Assessor's Office" style="top:18px; left:15px;"></asp:Label>
            </div>
            
            <div style="position: absolute; top: 268px; height: 63px; width:80%; display:block; padding-left:10%; padding-right:10%; left: 0px; border-bottom:2px solid #D0D0D0; ">
                <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Text="Assessors-Office-Requirements-Transfer-Form"></asp:Label>
               
                    <a class="dl" href="Assessors-Office-Requirements-Transfer-Form.docx" download="Assessors-Office-Requirements-Transfer-Form">download</a>
            </div>
             <div style="position: absolute; top: 335px; height: 63px; width:80%; display:block; padding-left:10%; padding-right:10%; left: 0px; border-bottom:2px solid #D0D0D0; ">
                <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="Certified-True-copy-of-Tax-Declaration"></asp:Label>
               
                    <a class="dl" href="Certified-True-copy-of-Tax-Declaration.docx" download="Certified-True-copy-of-Tax-Declaration">download</a>
            </div>
        </div>
        <div style="position:absolute;bottom:0px;height:60px;width:100%;display:block;border-top: 1px solid; border-top-color:gray;">
        <asp:Label ID="Label8" runat="server" Text="Label" style="left: 382px; position:absolute; bottom:26px; color:gray; width: 128px;">Source of Forms:</asp:Label>
            <asp:Label ID="Label7" runat="server" Text="Label" style="left: 517px; position:absolute; bottom:7px; color:gray; width: 702px;">Municipality of Rodriguez Information Hub. (2022). downloadable forms. https://montalbanrizalph.com</asp:Label>
           </div>
    </form>
</body>
</html>
