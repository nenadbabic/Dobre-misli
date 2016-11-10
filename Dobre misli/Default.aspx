<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dobre_misli.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <center>
            <h1>..:: Dobre Misli ::..</h1>
            <br />
        
            <table style="margin: 20px;">
                <tr>
                    <td>
                        <asp:TextBox ID="misel" runat="server" Height="50px" Width="573px" class="form-control"></asp:TextBox>            
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="dodajMisel" runat="server" Height="50px" Text="Dodaj misel" Width="167px" class="btn btn-default" OnClick="dodajMisel_Click" />            
                    </td>
                </tr>
            </table>
        </center>

        <hr/>

        <table style="margin: 20px;">
            <tr>
                <td class="auto-style1">
                    Misli naših uporabnikov:
                </td>
            </tr>
            <tr>
                <td style="margin-left: 15px; padding-left: 15px; font-weight: bolder;">
                    <asp:PlaceHolder ID="misli" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
