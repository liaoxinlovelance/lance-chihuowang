<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="美食内容详情.aspx.cs" Inherits="吃货网.美食内容详情" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/美食内容详情.css" rel="stylesheet" />
    <div id="bigdiv">
      
<div id="mian">
    <br /> 
     <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

           
   <div id="meishi">
       <div id="tupian">
           <img src='Images/<%#Eval("chengpintupian") %>' /></div>
       <div id="meishi_right">
       <div style="clear:both"></div>
           <h2><%#Eval("biaoti") %></h2>
           <ul id="biaoqian">
               <%
                   string bq = Session["biaoqian"].ToString();
                   List<string> list = new List<string>(bq.Split(','));
                   foreach (var item in list)
                   {%>
                        <li><%=item %></li>
                   <%}
                    %>
              <%-- <li>安神</li>
               <li>增强体质</li>  
               <li>健脾胃</li>--%>
               <div style="clear:both"></div>
           </ul>
           <table id="tb_cai">
               <tr>
                   <td class="tb_left">
                       <ul>
                           <li class="huise">工艺</li>
                           <li class="red">蒸</li>
                       </ul>
                   </td>
                   <td class="tb_middle">
                       <ul>
                           <li class="huise">难度</li>
                           <li class="red"> <img src='img/zhuantai_<%#Eval("nandu")%>.png' /></li>
                       </ul>
                   </td>
                   <td class="tb_right">
                       <ul>
                           <li class="huise"> 人数</li>
                           <li class="red"> <img src="img/zhuantai_<%#Eval("renshu")%>.png" /></li>
                       </ul>
                   </td>
               </tr>
                <tr>
                   <td class="tb_left">
                        <ul>
                           <li class="huise">口味</li>
                           <li class="red">蒸</li>
                       </ul>
                   </td>
                   <td class="tb_middle">
                       <ul>
                           <li class="huise">准备时间</li>
                           <li class="red"> <img src="img/zhuantai_<%#Eval("zunbeishijian")%>.png" /></li>
                       </ul>
                   </td>
                   <td class="tb_right">
                       <ul>
                           <li class="huise">烹饪时间</li>
                           <li class="red"> <img src="img/zhuantai_<%#Eval("penrenshijian")%>.png" /></li>
                       </ul>
                   </td>
               </tr>
           </table>
           <dl id="fabuzhe">
               <dt>
                   <img src='Images/<%#Eval("userpic") %>' />
               </dt>
                <dd class="d_red"><%#Eval("YHM") %></dd>
                <dd class="d_heise">菜谱：94/关注：4/粉丝：0</dd>
                <dd class="d_huise"><%#Eval("biaoti") %>的原文/<%#Eval("fabushijian") %>/<%#Eval("renqi") %>人看过</dd>
               <div style="clear:both"></div>
           </dl>
       </div>
   </div>
                 </ItemTemplate>
        </asp:Repeater>
    <div id="yongliao">
        <p><%=Session["xingqin"] %></p>
        <h2>用料</h2>
        <table id="tb_yongliao">
            <tr>
                <td class="tb_yongliao_left">
                    <p class="tb_yongliao_left_red">主料</p>
                </td>
                <td class="tb_yongliao_middle">
                    <ul>
                        <li class="tb_yongliao_middle_left"> 
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                        </li>
                        <li class="tb_yongliao_middle_right">
                            <asp:Label ID="Label2" runat="server" Text="Label">

                            </asp:Label></li>
                        <div style="clear:both"></div>
                       
                    </ul>

                </td>
                <td class="tb_yongliao_right">
                      <ul>
                        <li class="tb_yongliao_right_left"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></li>
                        <li class="tb_yongliao_right_right"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></li>
                        <div style="clear:both"></div>
                    </ul>
                </td>
            </tr>
             <tr>
                 <td class="tb_yongliao_left">
                   
                </td>
                <td class="tb_yongliao_middle">
                    <ul>
                        <li class="tb_yongliao_middle_left"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></li>
                        <li class="tb_yongliao_middle_right"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></li>
                        <div style="clear:both"></div>
                    </ul>

                </td>
                <td class="tb_yongliao_right">
                      <ul>
                        <li class="tb_yongliao_right_left"></li>
                        <li class="tb_yongliao_right_right"></li>
                        <div style="clear:both"></div>
                    </ul>
                </td>
            </tr>
             <tr>
                 <td class="tb_yongliao_left">
                    <p class="tb_yongliao_left_red">辅料</p>
                </td>
                <td class="tb_yongliao_middle">
                    <ul>
                        <li class="tb_yongliao_middle_left"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></li>
                        <li class="tb_yongliao_middle_right"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></li>
                        <div style="clear:both"></div>
                    </ul>

                </td>
                <td class="tb_yongliao_right">
                      <ul>
                        <li class="tb_yongliao_right_left"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></li>
                        <li class="tb_yongliao_right_right"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></li>
                        <div style="clear:both"></div>
                    </ul>
                </td>
            </tr>
             <tr>
                 <td class="tb_yongliao_left">
                   
                </td>
                <td class="tb_yongliao_middle">
                    <ul>
                        <li class="tb_yongliao_middle_left"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></li>
                        <li class="tb_yongliao_middle_right"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></li>
                        <div style="clear:both"></div>
                    </ul>

                </td>
                <td class="tb_yongliao_right">
                      <ul>
                        <li class="tb_yongliao_right_left"></li>
                        <li class="tb_yongliao_right_right"></li>
                        <div style="clear:both"></div>
                    </ul>
                </td>
            </tr>
             
        </table>
    </div>
    <div id="zuofa">
        <h2><%=Session["biaoti"]%>的做法</h2>

         <%
                   string bzms = Session["buzhoumiaosu"].ToString();
                   List<string> bzmslist = new List<string>(bzms.Split(','));
                   string bztp = Session["buzoutupian"].ToString();
                   List<string> bztplist = new List<string>(bztp.Split(','));
                   for (int i = 0; i < 5; i++)
                   {%>
                       <ul>
                       <li class="jiacu_id"><%=i+1 %></li>
                       <li><%=bzmslist[i] %></li>
                       <div style="clear:both"></div>
                       </ul>
                       <img src="Images/<%=bztplist[i] %>" class="img_buzou"/>
                  <% }
                    %>

        
        <%-- <ul>
            <li class="jiacu_id">2</li>
            <li>将面粉揉成饼装，蒸熟，再油炸</li>
            <div style="clear:both"></div>
        </ul>
        <img src="Images/4PI`NF4}N%K$18~5TU0@ZU7.png" class="img_buzou"/>
         <ul>
            <li class="jiacu_id">3</li>
            <li>将面粉揉成饼装，蒸熟，再油炸</li>
            <div style="clear:both"></div>
        </ul>
        <img src="Images/4PI`NF4}N%K$18~5TU0@ZU7.png" class="img_buzou"/>
         <ul>
            <li class="jiacu_id">4</li>
            <li>将面粉揉成饼装，蒸熟，再油炸</li>
            <div style="clear:both"></div>
        </ul>
        <img src="Images/4PI`NF4}N%K$18~5TU0@ZU7.png" class="img_buzou"/>
         <ul>
            <li class="jiacu_id">4</li>
            <li>将面粉揉成饼装，蒸熟，再油炸</li>
            <div style="clear:both"></div>
        </ul>
        <img src="Images/4PI`NF4}N%K$18~5TU0@ZU7.png" class="img_buzou"/>--%>


        <h2>成品图片</h2>
        <%
            string zuizhongxiaoguotu = Session["zuizhongxiaoguotu"].ToString();
            List<string> zuizhongxiaoguotulist = new List<string>(zuizhongxiaoguotu.Split(','));
            foreach (var item in zuizhongxiaoguotulist)
                   {%>
                       
        <img src="Images/<%=item %>" class="chengpingtu"/>
                   <%}
                    %>
        
        <%--<img src="Images/05.png" class="chengpingtu"/>
        <img src="Images/04.png" class="chengpingtu"/>
         <img src="Images/03.png" class="chengpingtu"/>--%>
    </div>


</div>

    </div>

</asp:Content>
