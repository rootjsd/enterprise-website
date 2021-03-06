﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cpProductTypeDetail.aspx.cs"
    Inherits="jsbestop.Web.Manager.ProductManager.cpProductTypeDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/detail.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/Utility.js"></script>
    <script type="text/javascript">
        function checkUI() {
            var sm = document.getElementById("<%=txtProductTypeName.ClientID %>");
            var as = document.getElementById("<%=txtAutoSort.ClientID %>");
            if (sm != null) {
                if (sm.value.trim() == "") {
                    alert("请输入产品类别名称");
                    return false;
                }
            }
            if (as != null) {
                if (isNaN(as.value.trim())) {
                    alert("排序只能为数字");
                    return false;
                }
            }
            return true;
        }

      
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="sm1" runat="Server" EnablePageMethods="true" />
    <table width="98%">
        <tr>
            <td width="98%" align="center">
                <div class="percent">
                    <div id="nav">
                        <div class="nav_left">
                            <asp:Label ID="lblNav" Text="产品类别详细" runat="Server" /></div>
                        <div class="nav_right">
                        </div>
                    </div>
                    <table border="0" cellpadding="0" cellspacing="1" class="tbl_form">
                        <tr>
                            <td class="td_label" style="width: 13%; height: 25px;">
                                是否为英文：
                            </td>
                            <td class="td_ctrl" width="80%" align="left">
                                <asp:RadioButton ID="rbtnIsChinese" runat="server" Text="中文" GroupName="IsEnglishLa"
                                    Checked="true" />
                                <asp:RadioButton ID="rbtnIsEnglish" runat="server" Text="英文" GroupName="IsEnglishLa" />
                            </td>
                        </tr>
                        <tr>
                            <td class="td_label" style="width: 13%; height: 25px;">
                                * 维修案例名称：
                            </td>
                            <td class="td_ctrl" width="80%" align="left">
                                <asp:TextBox ID="txtProductTypeName" runat="server" Width="230px" CssClass="input_ctrl"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_label" style="width: 13%; height: 25px;">
                                手机一级列表图片：
                            </td>
                            <td class="td_ctrl" width="80%" align="left">
                                <asp:FileUpload ID="UploadImg" runat="server" />
                                <asp:Image ID="Image1" runat="server" Width="200px" Height="135px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="td_label" style="width: 13%; height: 25px;">
                                排序：
                            </td>
                            <td class="td_ctrl" width="80%" align="left">
                                <asp:TextBox ID="txtAutoSort" onKeyUp="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"
                                    runat="server" Width="230px" Text="0" CssClass="input_ctrl"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_label" style="width: 13%; height: 25px;">
                                * 是否有二级目录：
                            </td>
                            <td class="td_ctrl" width="80%" align="left">
                                <asp:RadioButton ID="rbhave" runat="server" Text="有" GroupName="Ishavese" Checked="true" />
                                <asp:RadioButton ID="rbno" runat="server" Text="无" GroupName="Ishavese" />
                            </td>
                        </tr>
                        <tr>
                            <td class="td_label" style="width: 13%; height: 25px;">
                                备注：
                            </td>
                            <td class="td_ctrl" width="80%" align="left">
                                <asp:TextBox ID="txtRemarks" runat="server" CssClass="input_ctrl" TextMode="MultiLine"
                                    Width="390px" Height="150px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" class="tbl_form" width="90%">
                        <tr>
                            <td style="background: #fff; text-align: left; padding-left: 150px; padding-top: 10px;
                                padding-bottom: 10px;" colspan="2">
                                <asp:Button ID="btnSubmit" runat="Server" CssClass="btn" Text="保存信息" OnClientClick="return checkUI();"
                                    OnClick="btnSubmit_Click" />&nbsp;&nbsp;
                                <input type="button" class="btn" value="返回列表" onclick="javascript:window.location.href='cpProductTypeList.aspx';" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
