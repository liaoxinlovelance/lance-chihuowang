<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="搜索列表.aspx.cs" Inherits="吃货网.搜索列表" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/搜索列表.css" rel="stylesheet" />
    <div id="bigdiv">
        <div id="main">
            <h3>您的搜索结果是：</h3>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <a href="美食内容详情.aspx?id=<%#Eval("fabucaidanid") %>">
                    <dl class="dl_1">
                        <dt>
                        <img src='Images/<%#Eval("chengpintupian") %>'/></dt>
                        <dd><%#Eval("biaoti") %></dd>
                        <dd><%#Eval("YHM") %></dd>
                        <dd><%#Eval("fabushijian") %></dd>
                    </dl></a>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <a href="吃货寻菜谱详情页.aspx?id=<%#Eval("caipuID") %>">
                    <dl class="dl_1">
                        <dt>
                        <img src='Images/<%#Eval("fabutupian") %>'/></dt>
                        <dd><%#Eval("Title") %></dd>
                        <dd><%#Eval("YHM") %></dd>
                        <dd><%#Eval("fabutime") %></dd>
                    </dl></a>
                </ItemTemplate>
            </asp:Repeater>
            <h4><%=Session["zaobudaojieguo"] %></h4>
            <div style="clear:both"></div>
        </div>

    </div>



</asp:Content>
