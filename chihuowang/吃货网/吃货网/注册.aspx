<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="注册.aspx.cs" Inherits="吃货网.注册" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/注册.css" rel="stylesheet" />
     <div id="zhuce">
        <p id="font-center">有账号，更幸福。</p>
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
                    <li id="zhucezi">注册吃货网</li>
                    <li id="dlyou">已经有账号？<a href="登录.aspx">登录</a></li>
                    <div style="clear:both"></div>
                </ul>
                <table id="zhucetable">
                    <tr>
                        <td>邮箱：</td>
                        <td><asp:TextBox ID="TextBox1" runat="server" placeholder="用户名/邮箱"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="邮箱格式错误！" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>昵称：</td>
                        <td><asp:TextBox ID="TextBox2" runat="server" placeholder="请填写昵称"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><asp:TextBox ID="TextBox3" runat="server" placeholder="请填写密码"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                           <asp:CheckBox ID="CheckBox1" runat="server" />
                            我已阅读并且同意
                            <a href="#">吃货网用户使用协议</a>
                        </td>
                    </tr>
                </table>
               <%-- <input type="button" id="zhuceannui"value="注册"/>--%>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click1" BackColor="Red" ForeColor="#FFFFCC" Height="31px" Width="72px" />
                
            </div>
         <div style="clear:both"></div>
      
    </div>
</div>
</asp:Content>
