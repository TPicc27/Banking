<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankAccount.aspx.cs" Inherits="Question_5.BankAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 279px;
        }
        .auto-style3 {
            width: 250px;
        }
        .auto-style4 {
            width: 289px;
        }
        .auto-style5 {
            width: 293px;
        }
        .auto-style6 {
            color: #FF0000;
        }
        .auto-style7 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Bank Account Details</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="BankAccountDD" runat="server" AutoPostBack="True" Width="240px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style3">Withdrawal Amount</td>
                <td class="auto-style4">
                    <asp:TextBox ID="WithdrawTB" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RangeValidator ID="WithdrawRange" runat="server" ControlToValidate="WithdrawTB" CssClass="auto-style6" ErrorMessage="Amount should be greater than 0." MaximumValue="100000000" MinimumValue="0" Type="Double"></asp:RangeValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="WithdrawTB" CssClass="auto-style7" ErrorMessage="An amount is Required."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="WithdrawButton" runat="server" OnClick="WithdrawButton_Click" Text="Withdraw" Width="247px" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="WithdrawLabel" runat="server" Text="Withdraw Amount"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="BankAmericaLink" runat="server" NavigateUrl="http://www.bankofamerica.com" Target="_blank">For bank details, click here</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
