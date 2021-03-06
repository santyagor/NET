﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TextEditor.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>.:Text Editor:.</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>
                <asp:Label ID="lbl_Title" runat="server" Text="Text Editor"></asp:Label>
            </h2>
        <table class="table-condensed table-bordered table-hover">
            <tr>
                <td>
                    <asp:TextBox ID="txt_Editor" runat="server" TextMode="MultiLine" Rows="10" Columns="60" Wrap="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_IncreaseRows" runat="server"  Text="+ (R)" OnClick="btn_IncreaseRows_Click" CssClass="btn btn-default btn-sm" />
                    <asp:Button ID="btn_DecreaseRows" runat="server"  Text="- (R)" OnClick="btn_DecreaseRows_Click" CssClass="btn btn-default btn-sm" />
                    <asp:Button ID="btn_IncreaseWidth" runat="server" Text="+ (C)" OnClick="btn_IncreaseWidth_Click" CssClass="btn btn-default btn-sm" />
                    <asp:Button ID="btn_DecreaseWidth" runat="server" Text="- (C)" OnClick="btn_DecreaseWidth_Click" CssClass="btn btn-default btn-sm" />
                    <asp:Label ID="lbl_ColRow" runat="server" Text="Cols x Rows:" Font-Bold="false" Font-Size="Medium"></asp:Label>
                    <asp:Label ID="lbl_ColRowCout" runat="server" Text="60 x 10" Font-Bold="false" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_TextMode" runat="server" Text="Text Mode: " Font-Bold="false" Font-Size="Medium"></asp:Label>
                    <asp:RadioButton ID="rbtn_Multiline" runat="server" Text="Multiline" TextAlign="Left" Font-Size="Medium" AutoPostBack="true" OnCheckedChanged="rbtn_Multiline_CheckedChanged" Checked="true" GroupName="TextMode"  />
                    <asp:RadioButton ID="rbtn_SingleLine" runat="server" Text="SingleLine" TextAlign="Left" Font-Size="Medium" AutoPostBack="true" GroupName="TextMode" OnCheckedChanged="rbtn_SingleLine_CheckedChanged"  />
                    <asp:CheckBox ID="chk_Wrap" runat="server" Text="Wrap"  Font-Size="Medium" AutoPostBack="true" OnCheckedChanged="chk_Wrap_CheckedChanged"   />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_ExistingText" runat="server" Text="Existing Text: " Font-Bold="false" Font-Size="Medium"></asp:Label>
                    <asp:Button ID="btn_Duplicate" runat="server"  Text="Duplicate" OnClick="btn_Duplicate_Click" CssClass="btn btn_info btn-sm"  />
                    <asp:Button ID="btn_Clear" runat="server"  Text="Clear" OnClick="btn_Clear_Click" CssClass="btn btn_info btn-sm"  />
                </td>
            </tr>
        </table>
    </div>
        
    </form>

</body>
</html>
