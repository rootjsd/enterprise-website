﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="center.aspx.cs" Inherits="jsbestop.Web.Manager.center" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
-->
</style>
</head>
<body>
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="8" bgcolor="#353c44">
                &nbsp;</td>
            <td width="147" valign="top">
                <iframe height="100%" width="100%" border="0" frameborder="0" src="left.aspx" name="leftFrame"
                    id="leftFrame" title="leftFrame"></iframe>
            </td>
            <td width="10" bgcolor="#add2da">
                &nbsp;</td>
            <td valign="top">
                <iframe height="100%" width="100%" border="0" frameborder="0" src="right.aspx" name="rightFrame"
                    id="rightFrame" title="rightFrame"></iframe>
            </td>
            <td width="8" bgcolor="#353c44">
                &nbsp;</td>
        </tr>
    </table>
</body>
</html>
