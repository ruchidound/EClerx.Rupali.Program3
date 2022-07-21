<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Test3_WebForm.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .d1{
            margin:auto;
            padding:20px;
            font-size:15pt;
            border:1px solid pink;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center;">Validation Form</h1>
            <table class="d1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="ProductName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtProductName" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTxtProductName" ValidationExpression = "^[\s\S]{0,3}$" ForeColor="Red" runat="server" ControlToValidate="TxtProductName" ErrorMessage="ProductName should be minimum 3 characters in length"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="CategoryName"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCategoryName" runat="server"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTxtPrice" runat="server" MaximumValue="1" Type="Integer"  ControlToValidate="TxtPrice" ForeColor="Red" ErrorMessage="Price should be an integer and cannot be 0 or negative."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="TotalQuantity"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtTotalQuantity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTxtTotalQuantity" runat="server" ControlToValidate="TxtTotalQuantity" ForeColor="Red" ErrorMessage="TotalQuantity cannot be negative"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="AddedDate"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAddedDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" />
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkDisplay" runat="server" OnClick="LinkDisplay_Click">Display Product By Date Page</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
