<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="首页.aspx.cs" Inherits="吃货网.首页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/首页.css" rel="stylesheet" />
    <link href="css/首页.css" rel="stylesheet" />
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/jquery.carouFredSel-6.0.4-packed.js"></script>
    <link rel="stylesheet" href="css/jquery.zySlide.css" />
     
    
    <div id="souye">
    <div id="wucantuijian">
        <p class="font_center">今日午餐推荐：家常快炒，让你在厨房闪进闪出</p>
       <%-- <div id="tuijianlunbo">
           <div class="banbiantu"></div>            
            <div class="quantu"><img src="Images/未标题-1.png" /></div>
             <div class="quantu">
                 <img src="Images/0003.png" /></div>
             <div class="quantu">
                 <img src="Images/0004.png" /></div>
            <div class="banbiantu"></div>
            <div style="clear:both"></div>
            <div id="shijian">
                <ul>
                   
                    <li><a href="#">4:00</a></li>
                    <li><a href="#">10:00</a></li>                 
                    <li><a href="#">14:00</a></li>
                    <li><a href="#">16:00</a></li>
                    <li><a href="#">21:00</a></li>
                    <li><a href="#">4:00</a></li> 
                    <li><a href="#"><span> 午餐时间</span></a></li>
                     <div style="clear:both"></div>
                </ul>
            </div>
        </div>--%>
        <div id="Slide1" class="zy-Slide">
	<!--prev:元素中的文本通常会保留空格和换行符。而文本也会呈现为等宽字体。-->
	<section>前一张</section>
	<section>后一张</section>
	<ul>
		<!--alt + shift : 可以创建一个矩形选择区域-->
		<li><a href="美食内容详情.aspx?id=5"><img src="Images/01.png" /></a></li><%--排骨--%>
       
		<li><a href="美食内容详情.aspx?id=6"><img src="Images/02.png" /></a></li><%--寿司--%>
		<li><a href="美食内容详情.aspx?id=11"><img src="Images/03.png" /></a></li>
		<li><a href="美食内容详情.aspx?id=3"><img src="Images/04.png" /></a></li><%--炒面--%>
		<li><a href="美食内容详情.aspx?id=14"><img src="Images/05.png" /></a></li>
		<li><a href="美食内容详情.aspx?id=4"><img src="Images/06.png" /></a></li><%--红烧豆腐--%>
		<li><a href="美食内容详情.aspx?id=2"><img src="Images/07.png" /></a></li><%--可乐鸡翅--%>
	</ul>
</div>
<script src="jquery.min.js"></script>
<script src="jquery.zySlide.js"></script>
<script src="index.js"></script>
     

        </div>

     <div id="tupianlunbo">
          <p class="font_center">八月你可能需要的内容<a href="#">更多菜单>></a></p>
           <div id="lunbo_left">
             
                <a href="首页.aspx?fyid1=<%=int.Parse(Session["fyid1"].ToString())-1 %>" class="button_s"></a>
           </div>
         <div id="lunbodiv">
             <asp:Repeater ID="Repeater1" runat="server">
                 <ItemTemplate>
                      <a href="吃货寻菜谱详情页.aspx?id=<%#Eval("caipuID") %>">
                          <div class="tupianhezi">
                      <dl>
                          <dt>
                              <img src='Images/<%#Eval("fabutupian") %>' /></dt>
                          <dd class="font_jiacu"><%#Eval("Title") %></dd>
                          <dd class="font_suoxiao"><%#Eval("neirong") %></dd>
                      </dl>
                  </div>
</a>
                 </ItemTemplate>
             </asp:Repeater>                                 
                  <div style="clear:both"></div>
              </div>
         <div id="lunbo_right">
              <a href="首页.aspx?fyid1=<%=int.Parse(Session["fyid1"].ToString())+1 %>" class="button_x"></a>
         </div>
             <div style="clear:both"></div>            
       </div>

     <div id="tupianlunbo2">
          <p class="font_center2 ">每小时最热门菜谱
              <a href="#">最新</a>&nbsp
               <a href="#">最热</a>&nbsp
               <a href="#">一小时</a>&nbsp
               <a href="#">七天</a>&nbsp
              <a href="#">更多菜谱>></a>

          </p>
           <div id="lunbo_left2">
               <a href="首页.aspx?fyid2=<%=int.Parse(Session["fyid2"].ToString())-1 %>" class="button_s"></a>
           </div>
              <div id="lunbodiv2">
                  <asp:Repeater ID="Repeater2" runat="server">
                      <ItemTemplate>
                          <a href="美食内容详情.aspx?id=<%#Eval("fabucaidanid") %>">
 <div class="tupianhezi">
                      <dl>
                          <dt>
                              <img src='Images/<%#Eval("chengpintupian") %>' /></dt>
                          <dd class="font_jiacu"><%#Eval("biaoti") %></dd>
                          <dd class="font_suoxiao"><%#Eval("fabushijian") %></dd>
                      </dl>
                  </div>
                          </a>
                      </ItemTemplate>
                  </asp:Repeater>                                
                  <div style="clear:both"></div>
              </div>
         <div id="lunbo_right2">
              <a href="首页.aspx?fyid2=<%=int.Parse(Session["fyid2"].ToString())+1 %>" class="button_x"></a>
         </div>
             <div style="clear:both"></div>
       
        
       </div>
   </div>
</asp:Content>
