<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="吃货天堂.aspx.cs" Inherits="吃货网.吃货天堂" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/吃货天堂.css" rel="stylesheet" />
    <div id="chihuoxuncaipu">
        <div  id="caidanliebiao"><%--上面盒子部分——站点地图--%>
            <ul class="jiachangcai">
                <li>我的美食属性<span>(未开放)</span></li>
                <li><a href="#">家常菜谱</a></li>
                <li><a href="#">中华菜系</a></li>
                <li><a href="#">各地小吃</a></li>
                <li><a href="#">外国菜谱</a></li>
                <li><a href="#">红烩</a></li>
                <li><a href="#">厨房百科</a></li>
                <li><a href="#">食材百科</a></li>
               <div style="clear:both"></div>
            </ul>
<div id="hezi">
            <p>家常菜谱</p>
            <ul>
                <li class="red">家常菜</li>
                <li><a href="#">私家菜</a></li>
                <li><a href="#">凉菜</a></li>
                <li><a href="#">海鲜</a></li>
                <li><a href="#">热菜</a></li>
                 <li><a href="#">汤粥</a></li>
                 <li><a href="#">素食</a></li>
                <li><a href="#">酱料蘸料</a></li>
                <li><a href="#">微波炉</a></li>
                <li><a href="#">火锅底料</a></li>
                <li><a href="#">甜品点心</a></li>
                <li><a href="#">糕点主食</a></li>
                <li><a href="#">干果制作</a></li>
                <li><a href="#">卤酱</a></li>
                <li><a href="#">时尚饮品</a></li>
                <div style="clear:both"></div>
            </ul>
    <div class="hezi_foot">
    <p>每日三餐</p>
            <ul>
                <li><a href="#">早餐</a></li>
                <li><a href="#">午餐</a></li>
                <li><a href="#">晚餐</a></li>
                <li><a href="#">下午茶</a></li>
                <li><a href="#">夜宵</a></li>
                <div style="clear:both"></div>
            </ul>
   </div>
     <div class="hezi_foot">
    <p>人群</p>
            <ul>
                <li><a href="#">老年人</a></li>
                <li><a href="#">产妇</a></li>
                <li><a href="#">孕妇</a></li>
                <li><a href="#">宝宝食谱—婴儿食谱</a></li>
                
                <div style="clear:both"></div>
            </ul>
   </div>
     <div class="hezi_foot">
      <p>功效</p>
            <ul>
                <li><a href="#">疾病调理</a></li>
                <li><a href="#">功能性调理</a></li>
                <li><a href="#">肝腑调理</a></li>
                <li><a href="#">人群膳食</a></li>                
                <div style="clear:both"></div>
            </ul>
   </div>
    <div style="clear:both"></div>
        </div>

        </div><%--上面的列表盒子--%>

        <div id="jiachanghaoweidao">
            <p class="font_center ">八月你可能需要的内容<a href="#">最新</a>&nbsp&nbsp
                &nbsp<a href="#">最热</a></p>

            <div id="jiachanghaoweidao_left">
                <ul id="shaixuan">
                    <li><a href="#">普通筛选</a></li>
                    <li><a href="#">食材筛选</a></li>
                </ul>
                <input type="text" placeholder="请输入您要找查的食材" id="zhaocha"/>
                <p>按数量排序</p>
                <ul>
                    <li><span class="green">应季</span> 五花肉 <span class="shuliang">1603</span></li>
                </ul>
            </div>
            <div id="jiachanghaoweidao_right">
                <div id="jiachanghaoweidao_right_top">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                    <a href="美食内容详情.aspx?id=<%#Eval("fabucaidanid") %>"><dl class="fudong">
                    <dt>
                        <img src="Images/<%#Eval("chengpintupian")%>" />
                        </dt>
                    <dd class="jiacu"><%#Eval("biaoti")%>"</dd>
                    <dd class="huise"><%--<%#Eval("")%>"评论 &nbsp &nbsp&nbsp --%><%#Eval("renqi")%>人气  </dd>
                    <dd class="hongse"><%#Eval("YHM")%></dd>
                </dl></a>
               
                    </ItemTemplate>
                </asp:Repeater>
 <div style="clear:both"></div>
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
                        <a href="吃货天堂.aspx?page=<%=i %>"><span><%=i %></span></a>
                    <% }
                     %>
                
              

            </div>
        </div>

            </div>
            <div style="clear:both"></div>
        </div>
    </div>

</asp:Content>
