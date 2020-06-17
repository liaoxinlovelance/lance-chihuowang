<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="登录.aspx.cs" Inherits="吃货网.登录" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/登录.css" rel="stylesheet" />
    
     <div id="zhuce">
        <p id="font-center">登录后，更幸福。</p>
     <div id="form">
            <div id="left">
                <p><input type="button" value="QQ账号登录" class="dlbutton"/></p>
                  <p><input type="button" value="新浪微博账号登录" class="dlbutton"/></p>
                  <p><input type="button" value="人人网账号登录"class="dlbutton"/></p>
                  <p><input type="button" value="百度账号登录"class="dlbutton"/></p>
                  <p><input type="button" value="开心网账号登录"class="dlbutton"/></p>
                  <p><input type="button" value="盛大通行证登录"class="dlbutton"/></p>
            </div>
            <div id="right">
                <ul>
                    <li id="zhucezi">登录吃货网</li>
                    <li id="dlyou">没有账号？<a href="注册.aspx">注册账号</a></li>
                    <div style="clear:both"></div>
                </ul>
                <table id="zhucetable">
                   <%-- <tr>
                        <td>邮箱：</td>
                        <td><input type="text" placeholder="用户名/邮箱"/></td>
                    </tr>--%>
                    <tr>
                        <td>登录名/邮箱：</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="241px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="238px"></asp:TextBox>
                        </td>
                    </tr>
                    <%--<tr>
                        <td></td>
                        <td>
                            <input type="checkbox" value=""/>
                            我已阅读并且同意
                            <a href="#">吃货网用户使用协议</a>
                        </td>
                    </tr>--%>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="zhuceannui" runat="server" Text="登录" OnClick="zhuceannui_Click" BackColor="Red" ForeColor="#FFFFCC" Height="31px" Width="72px" />
                
            </div>
         <div style="clear:both"></div>
      
    </div>
</div>
</asp:Content>
