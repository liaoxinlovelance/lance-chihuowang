<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="吃货寻菜谱列表.aspx.cs" Inherits="吃货网.吃货寻菜谱列表" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/吃货寻菜谱列表.css" rel="stylesheet" />
    <div id="main">
        <div id="hezi">
            <p class="center_jiacu">有人的地方才有力量</p>
            <div id="hezi_left">
                <p class="red"><a href="我要找菜谱.aspx">寻找菜谱</a></p>
              
                <div id="caidanliebiao">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
<a href="吃货寻菜谱详情页.aspx?id=<%#Eval("caipuID") %>"> 
     <div class="liebiao_neirong">
                    <div class="liulan">
                        <ul>
                            <li><%#Eval("liulanliang") %></li>
                            <li>浏览</li>
                        </ul>
                    </div>
                     <div class="wenzi">
                         <ul>
                            <li class="biaoti"><%#Eval("Title") %></li>
                            <li class="huise"><%#Eval("neirong") %></li>
                            <li class="huise">发帖人：<%#Eval("YHM") %>&nbsp&nbsp&nbsp <%--最后回复：<%#Eval("liulanliang") %>--%>&nbsp&nbsp&nbsp 发布时间：<%#Eval("fabutime") %></li>
                        </ul>
                     </div>
                    <div style ="clear:both"></div>
                </div></a>
                    </ItemTemplate>
                </asp:Repeater>
              </div>
            <div class="heiha" >
            <div class="hei">共<%=Session["count"] %>条记录，当前显示第<%=Session["page"] %>页</div>
            <div class="ha">
                <%
                    //总条数
                    int count = int.Parse(Session["count"].ToString());
                    //int count = int.Parse(Session["count"].ToString);
                    //计算总页数
                    int totaPage = count / 6;
                    if (count%6>0)
                    {
                        totaPage++;
                    }
                    for (int i = 1; i <=totaPage; i++)
                    {%>
                        <a href="吃货寻菜谱列表.aspx?page=<%=i %>"><span><%=i %></span></a>


                    <% }
                     %>
                
              

            </div>
        </div>

           

            </div>
             <div id="hezi_right">
                  <p class="red">吃货排行榜</p>
              
                 <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate> 
                    <dl class="paihangbang_hezi"> 
                     <dd class="paihangbang_mingci">1</dd>
                     <dt class="paihangbang_touxiang">
                         <img src='Images/<%#Eval("userpic") %>'/></dt>
                     <dd class="paihangbang_xingming"><%#Eval("YHM")%></dd>
                     <dd class="paihangbang_fengshu"><%#Eval("Fenshu")%></dd>
                     <div style="clear:both"></div>
                 </dl>

                </ItemTemplate>
                 </asp:Repeater>
               

             </div>
            <div style="clear:both"></div>
    </div>

    </div>

</asp:Content>
