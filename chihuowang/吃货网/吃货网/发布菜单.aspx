<%@ Page Title="" Language="C#" MasterPageFile="~/模板/Site1.Master" AutoEventWireup="true" CodeBehind="发布菜单.aspx.cs" Inherits="吃货网.发布菜单" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/发布菜单.css" rel="stylesheet" />
    <script src="js/jquery.js"></script>
    <script src="js/upload.js"></script>
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/发布菜单.js"></script>
    <div class="beijingse">
    <div id="fabucaidan">
        <p class="font_center_jiacu">欢迎发布新菜谱，先介绍一下你的大作！</p>

        <div id="jieshaocaidan">
            <ul>
                <li>标题</li>
                <li class="right"><a href="#">查看帮助</a></li>
               <div style="clear:both"></div>
            </ul>
            <ul><li>
          <asp:DropDownList ID="DropDownList1"  runat="server" ></asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="请填写菜谱名称10字以内" CssClass="caipumingcheng"></asp:TextBox>
         <%-- <input type="text" placeholder="请填写菜谱名称10字以内" id="caipumingcheng"/>--%>
            </li></ul>
          <ul class="suxin">
             
           <li>属性</li>       
           <li>
               <asp:DropDownList ID="DropDownList2"  runat="server" ></asp:DropDownList> 
               <asp:DropDownList ID="DropDownList3"  runat="server" ></asp:DropDownList> 
               <asp:DropDownList ID="DropDownList4"  runat="server" ></asp:DropDownList> 
               <asp:DropDownList ID="DropDownList5"  runat="server" ></asp:DropDownList> 
               <asp:DropDownList ID="DropDownList6"  runat="server" ></asp:DropDownList> 
               <asp:DropDownList ID="DropDownList7"  runat="server" ></asp:DropDownList> 
           </li>
         
           </ul>
            <div id="jieshaocaidan_buttom">
                <p>成品图（328*440）</p>
                <div id="shangchuangtupians">
                    <asp:Image ID="Image1" runat="server" CssClass="shangchuantupianyangsi" ImageUrl="~/Images/上传图片按钮样式1.png"/>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="shangchuanliulan" />
                    <asp:Button ID="Button1" runat="server" Text="确认上传" OnClick="Button1_Click" CssClass="shangchuanqueding"/>
                 <%--   <div id="drop_area"></div>--%>
                  <%--  <script type="text/javascript">
                        var dragImgUpload = new DragImgUpload("#drop_area", {
                            callback: function (files) {
                                //回调函数，可以传递给后台等等
                                var file = files[0];
                                console.log(file.name);
                            }
                        })
</script>--%>
                </div>

                <div id="xingqin"><asp:TextBox ID="TextBox2" runat="server" Height="191px" Width="690px" placeholder="说说你当时的心情吧！" Rows="10"></asp:TextBox></div>
                <div style="clear:both"></div>
            </div>
        </div>
        <p class="font_center_jiacu">记录所有材料</p>
        <div id="jilucailiao">
         <p>主料</p> <%--https://blog.csdn.net/dusea/article/details/48139477     增删文本框--%>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="请填写主料名称" CssClass="zhuliaowenbenkuang"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="请填写主料用量" CssClass="zhuliaoyongliangwenbenkuang"></asp:TextBox>
            
            &nbsp;<asp:TextBox ID="TextBox5" runat="server" placeholder="请填写主料名称" CssClass="zhuliaowenbenkuang"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" placeholder="请填写主料用量" CssClass="zhuliaoyongliangwenbenkuang"></asp:TextBox>
            
            &nbsp;<asp:TextBox ID="TextBox7" runat="server" placeholder="请填写主料名称" CssClass="zhuliaowenbenkuang"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" placeholder="请填写主料用量" CssClass="zhuliaoyongliangwenbenkuang"></asp:TextBox>
            
            &nbsp;<div style="clear:both"></div>   
            <br />
            &nbsp;<p>辅料</p>
             
          <asp:TextBox ID="TextBox9" runat="server" placeholder="请填写辅料名称" CssClass="fuliaowenbenkuang"></asp:TextBox>
            <asp:TextBox ID="TextBox10" runat="server" placeholder="请填写辅料用量" CssClass="fuliaoyongliangwenbenkuang"></asp:TextBox>
            
       
            &nbsp;<asp:TextBox ID="TextBox11" runat="server" placeholder="请填写辅料名称" CssClass="fuliaowenbenkuang"></asp:TextBox>
            <asp:TextBox ID="TextBox12" runat="server" placeholder="请填写辅料用量" CssClass="fuliaoyongliangwenbenkuang"></asp:TextBox>
            
            &nbsp;<asp:TextBox ID="TextBox13" runat="server" placeholder="请填写辅料名称" CssClass="fuliaowenbenkuang"></asp:TextBox>
            <asp:TextBox ID="TextBox14" runat="server" placeholder="请填写辅料用量" CssClass="fuliaoyongliangwenbenkuang"></asp:TextBox>
            
            &nbsp;<div style="clear:both"></div>   
            <br />
            &nbsp;</div>
          <p class="font_center_jiacu">开始写步骤了！能否简单易学就看你怎么写了，加油！</p>
        

        <div id="caidanbuzou">
           <div class="buzhou">
               <span>1.</span>
               <div  class="tianjiabuzhoutu">
                   <%--<img src="Images/上传图片按钮样式1.png" id="img_ys" />
                   <input type="file" id="img_file"/>--%>


                   <asp:Image ID="Image2" runat="server" Height="138px" Width="163px" ImageUrl="~/Images/上传图片按钮样式1.png"/>
                   <asp:FileUpload ID="FileUpload2" runat="server" CssClass="buzhoutupian1"/>
                   <asp:Button ID="Button2" runat="server" Text="确认上传" CssClass="buzhouannui1" OnClick="Button2_Click"/>


               </div>
               
               <asp:TextBox ID="TextBox15" runat="server" placeholder="请填写步骤描述" CssClass="buzhoumiaosu"></asp:TextBox>
              <%-- <input type="text" class="buzhoumiaosu"/>--%>
               <div style="clear:both"></div>
           </div>
            <div class="buzhou">
               <span>2.</span>
               <div  class="tianjiabuzhoutu">
                   <asp:Image ID="Image3" runat="server" Height="138px" Width="163px" ImageUrl="~/Images/上传图片按钮样式1.png"/>
                   <asp:FileUpload ID="FileUpload3" runat="server" CssClass="buzhoutupian1" />
                   <asp:Button ID="Button3" runat="server" Text="确认上传"  CssClass="buzhouannui1" OnClick="Button3_Click"/>
                </div>
              <asp:TextBox ID="TextBox16" runat="server" placeholder="请填写步骤描述" CssClass="buzhoumiaosu"></asp:TextBox>
               <div style="clear:both"></div>
           </div>
            <div class="buzhou">
               <span>3.</span>
              <div  class="tianjiabuzhoutu">
                  <asp:Image ID="Image4" runat="server" Height="138px" Width="163px" ImageUrl="~/Images/上传图片按钮样式1.png"/>
                   <asp:FileUpload ID="FileUpload4" runat="server" CssClass="buzhoutupian1" />
                   <asp:Button ID="Button4" runat="server" Text="确认上传"  CssClass="buzhouannui1" OnClick="Button4_Click"/>
              </div>
              <asp:TextBox ID="TextBox17" runat="server" placeholder="请填写步骤描述" CssClass="buzhoumiaosu"></asp:TextBox>
               <div style="clear:both"></div>
           </div>
            <div class="buzhou">
               <span>4.</span>
               <div  class="tianjiabuzhoutu">
                   <asp:Image ID="Image5" runat="server" Height="138px" Width="163px" ImageUrl="~/Images/上传图片按钮样式1.png"/>
                   <asp:FileUpload ID="FileUpload5" runat="server" CssClass="buzhoutupian1" />
                   <asp:Button ID="Button5" runat="server" Text="确认上传"  CssClass="buzhouannui1" OnClick="Button5_Click"/>
               </div>
              <asp:TextBox ID="TextBox18" runat="server" placeholder="请填写步骤描述" CssClass="buzhoumiaosu"></asp:TextBox>
               <div style="clear:both"></div>
           </div>
            <div class="buzhou">
               <span>5.</span>
               <div  class="tianjiabuzhoutu">
                   <asp:Image ID="Image6" runat="server" Height="138px" Width="163px" ImageUrl="~/Images/上传图片按钮样式1.png"/>
                   <asp:FileUpload ID="FileUpload6" runat="server" CssClass="buzhoutupian1" />
                   <asp:Button ID="Button6" runat="server" Text="确认上传"  CssClass="buzhouannui1" OnClick="Button6_Click"/>
               </div>
              <asp:TextBox ID="TextBox19" runat="server" placeholder="请填写步骤描述" CssClass="buzhoumiaosu"></asp:TextBox>
               <div style="clear:both"></div>
           </div>
            &nbsp;<p>最终效果图（请上传两张或以上不同角度成品图，宽度550-600px之间，最好横图竖图、远景近景都有）</p>
            <div class="tianjianchengpingtu">
                <asp:Image ID="Image7" runat="server" Height="138px" Width="163px" ImageUrl="~/Images/上传图片按钮样式1.png"/>
                   <asp:FileUpload ID="FileUpload7" runat="server" CssClass="buzhoutupian1" />
                   <asp:Button ID="Button7" runat="server" Text="确认上传"  CssClass="buzhouannui1" OnClick="Button7_Click"/>
            </div>
             <div class="tianjianchengpingtu">
                 <asp:Image ID="Image8" runat="server" Height="138px" Width="163px" ImageUrl="~/Images/上传图片按钮样式1.png"/>
                   <asp:FileUpload ID="FileUpload8" runat="server" CssClass="buzhoutupian1" />
                   <asp:Button ID="Button8" runat="server" Text="确认上传"  CssClass="buzhouannui1" OnClick="Button8_Click"/>
             </div>
             <div class="tianjianchengpingtu">
                 <asp:Image ID="Image9" runat="server" Height="138px" Width="163px" ImageUrl="~/Images/上传图片按钮样式1.png" />
                   <asp:FileUpload ID="FileUpload9" runat="server" CssClass="buzhoutupian1" />
                   <asp:Button ID="Button9" runat="server" Text="确认上传"  CssClass="buzhouannui1" OnClick="Button9_Click"/>
             </div>
             <div class="tianjianchengpingtu">
                 <asp:Image ID="Image10" runat="server" Height="138px" Width="163px" ImageUrl="~/Images/上传图片按钮样式1.png" />
                   <asp:FileUpload ID="FileUpload10" runat="server" CssClass="buzhoutupian1" />
                   <asp:Button ID="Button10" runat="server" Text="确认上传"  CssClass="buzhouannui1" OnClick="Button10_Click"/>
             </div>
            <div style="clear:both"></div>

            <%--<p>烹饪小技巧</p>

            <asp:TextBox ID="TextBox20" runat="server" placeholder="分享下你做菜的过程中的心得和小技巧吧！" CssClass="pengrenxiaojiqiao"></asp:TextBox>
           --%>
            <%-- <input type="text" id="pengrenxiaojiqiao" placeholder="分享下你做菜的过程中的心得和小技巧吧！"/>--%>

            <p>菜谱标签</p>
            <asp:TextBox ID="TextBox21" runat="server" placeholder="给你的菜谱加些标签吧！格式为#+标签+#，多个标签用空格分隔，如#无辣不欢#  #川菜# #保健养生#" CssClass="caipubiaoqian"></asp:TextBox>
          <%--  <input type="text" id="caipubiaoqian" placeholder="给你的菜谱加些标签吧！格式为,+标签+,，多个标签用,分隔，如无辣不欢,川菜,保健养生#"/>--%>

        </div>
   <%--     <input type="button" id="gaodingtijiao" value="搞定，提交！"/>--%>
        <asp:Button ID="Button11" runat="server" Text="搞定，提交！"  CssClass="gaodingtijiao" OnClick="Button11_Click"/>
    </div>

    </div>
    
</asp:Content>
