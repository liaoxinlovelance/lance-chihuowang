<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="我要找菜谱.aspx.cs" Inherits="吃货网.我要找菜谱" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/我要找菜谱.css" rel="stylesheet" />
    <script src="assets/jquery.min.js"></script>
    <script src="assets/trumbowyg.js"></script>
    <link href="assets/design/css/trumbowyg.css" rel="stylesheet" />

    <script src="assets/plugins/base64/trumbowyg.base64.js"></script>
    
    <div id="bigdiv">
       
        <div id="center">
           <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#990000" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
            <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
        </asp:SiteMapPath>

            <div id="baiseneirong">
                <h3>标题</h3>
                <div class="biaoti">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="biaoti"></asp:TextBox>

                </div>
                <h3>内容</h3>
               <%-- <div class="neirong">
    <div id="odiv" style="display:none;position:absolute;z-index:100;">
    <img src="assets/pic/sx.png" title="缩小" border="0" alt="缩小" onclick="sub(-1);"/>
    <img src="assets/pic/fd.png" title="放大" border="0" alt="放大" onclick="sub(1)"/>
    <img src="assets/pic/cz.png" title="重置" border="0" alt="重置" onclick="sub(0)"/>
    <img src="assets/pic/sc.png" title="删除" border="0" alt="删除" onclick="del();odiv.style.display='none';"/>
</div>
<div  onmousedown="show_element(event)" style="clear:both" id="customized-buttonpane" class="editor"></div>


                </div>--%>
                <asp:TextBox ID="TextBox2" runat="server" Height="231px" Width="745px"></asp:TextBox>
                
                <br />
                <h3>图片</h3>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button2" runat="server" Text="上传" OnClick="Button2_Click" />
                <br />
                <asp:Image ID="Image1" runat="server" CssClass="tupian_sc"/>
                
                <br />
                <asp:Button ID="Button1" runat="server" Text="我要找菜谱"  CssClass="tijiaoanniu" OnClick="Button1_Click"/>
            </div>
        </div>

    </div>


</asp:Content>
