<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridviewExample.aspx.cs" Inherits="GirdView.GridviewExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #FFCC00;
        }
    </style>
</head>
<body style="font-weight: 700">
    <form id="form1" runat="server">
    <div>
    <table align="center">
        <tr>
            <td style="text-align: center; font-size: x-large" class="auto-style1">
                GridView Example
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvExample" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    <Columns>
                        <asp:BoundField HeaderText="#" DataField="RowNumber" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="NAME" DataField="NAME" />
                        <asp:BoundField HeaderText="DESIGNATION" DataField="DESIGNATION" />
                        <asp:BoundField HeaderText="SALARY" DataField="SALARY" ItemStyle-HorizontalAlign="Right" />
                        <asp:BoundField HeaderText="STATE" DataField="STATE" />
                        <asp:BoundField HeaderText="COUNTRY" DataField="COUNTRY" ItemStyle-HorizontalAlign="Center" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
