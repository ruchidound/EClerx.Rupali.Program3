<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayProductByDate.aspx.cs" Inherits="Test3_WebForm.DisplayProductByDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .div1{
            margin:auto;
            padding:10px;
            font-size:15pt;
             border:2px solid pink;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center;">Display Product By Date</h1>
         <table class="div1">
             <tr>
                 <td>
                      <asp:Label ID="Label1" runat="server" Text="FromDate"></asp:Label>
                 </td>
                <td>
                   
                    <asp:TextBox ID="TxtFromDate" runat="server"></asp:TextBox>
                   
                </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="Label2" runat="server" Text="ToDate"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="TxtToDate" runat="server"></asp:TextBox>
                 </td>
                
             </tr>
             <tr>
                 <td colspan="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" /></td>
             </tr>
              <tr>
                  <td colspan="2">
                      <br />
                      <asp:GridView ID="GridDisplay" runat="server">
                       </asp:GridView>
                  </td>
              </tr>
         </table>
        </div>
       
    </form>
</body>
</html>
