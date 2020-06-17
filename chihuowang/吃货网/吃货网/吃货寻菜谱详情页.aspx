<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="吃货寻菜谱详情页.aspx.cs" Inherits="吃货网.吃货寻菜谱详情页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/吃货寻菜谱详情页.css" rel="stylesheet" />
    <script src="js/jquery-1.11.0.min.js"></script>

    
    
    <link href="UI/themes/default/easyui.css" rel="stylesheet" />
    <link href="UI/themes/icon.css" rel="stylesheet" />
    <script src="UI/jquery-1.11.2.min.js"></script>
    <script src="UI/jquery.easyui.min.js"></script>
    <script src="UI/locale/easyui-lang-zh_CN.js"></script>
    <script src="js/吃货寻菜谱详情页.js"></script>
    <div id="bigdiv">
        <div id="mian">
            <ul id="ul_top">
                <li class="fh"><a href="吃货寻菜谱列表.aspx">返回</a></li>
                <li class="wycp"><a href="发布菜单.aspx">我有菜谱</a></li>
                <div style="clear:both"></div>
            </ul>
            <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
                <ItemTemplate>
            <div id="neirong">
                <div id="neirong_left">
                    <h3><%#Eval("YHM") %></h3>
                    <img src='Images/<%#Eval("userpic") %>' />
                    <p>发帖:146</p>
                    <p>关注:6</p>
                    <p>粉丝:11</p>
                    <p>注册时间: <%#Eval("zhuceshijian") %></p>
                </div>
                
                <div id="neirong_right">
                    <ul id="ul_fabiao">
                        <li>发表于 <%#Eval("fabutime") %></li>
                    </ul>
                    <p><%#Eval("neirong") %></p>
                    <img src='Images/<%#Eval("fabutupian") %>' />
                    <ul id="ul_huifu">
                        <li>
                        <input type="button" id="dianzan" value="支持"/>
                        </li>
                        
                        <li>
                        <input type="button" id="huifu" value="回复"/>
                        </li>
                        <div style="clear:both"></div>
                    </ul>
                </div>
                <div style="clear:both">

                </div>
            </div>

                </ItemTemplate>
</asp:Repeater>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="pinglunliebiao">
                        <p>回复时间：<%#Eval("pinglunshijian") %></p>
                        <ul>
                            <li><img src='Images/<%#Eval("userpic") %>' /></li>
                            <li><%#Eval("YHM") %></li>
                        </ul>
                        <p><%#Eval("pinglunneirong") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div id="pinglun">
            <ul>
                <li class="pinglun_left">发表评论</li>
                <li class="pinglun_right"><input type="button" id="pinglun_close"/></li>
                <div style="clear:both"></div>
            </ul>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="text_pinglun"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="发表" CssClass="button_pinglun" OnClick="Button1_Click"/>
        </div>
    </div>
    <script>
        $("#dianzan").click(function () {
            $.messager.alert('提示', '支持成功');
        });
    </script>
</asp:Content>
