<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="AspWIthAdo.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 14px;
        }

        .auto-style2 {
            width: 237px;
            height: 31px;
        }

        .auto-style7 {
            width: 237px;
            height: 32px;
        }

        .auto-style8 {
            height: 32px;
        }

        .auto-style9 {
            width: 237px;
            height: 33px;
        }

        .auto-style10 {
            height: 33px;
        }

        .auto-style11 {
            height: 31px;
        }
    </style>
</head>
<body style="height: 102px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblContact" runat="server" Text="Contact No."></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        <br />
        <br />
        <asp:Label ID="lblNameData" runat="server" Text="name :"></asp:Label>
        <br />
        <asp:Label ID="lblEmailData" runat="server" Text="Email :"></asp:Label>
        <br />
        <asp:Label ID="lblContactData" runat="server" Text="Contact :"></asp:Label>
    </form>
</body>
</html>
