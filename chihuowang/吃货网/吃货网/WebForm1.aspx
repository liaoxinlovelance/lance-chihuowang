<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="吃货网.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/首页.css" rel="stylesheet" />
    <link href="css/首页.css" rel="stylesheet" />
    <script src="js/jquery-1.8.2.min.js"></script>
      <script>
          $(function () {
             
              var ye = 1;

              $.ajax({
                  type: "post",
                  url: "Handler1.ashx",
                  data:{"ye":ye},
                  success: function (data) {
                      var data = JSON.parse(data)
                      console.info(data);
                      console.info(data.length)
                      $.each(data, function (i, s) {
                          var ch = $(" <a href='吃货寻菜谱详情页.aspx?id='" + s["caipuID"] + "'><div class='tupianhezi'>" +
                              " <dl> <dt><img src='Images/" + s["fabutupian"] + "' /></dt>" +
                              "<dd class='font_jiacu'>" + s["Title"] + "</dd>" +
                              " <dd class='font_suoxiao'>" + s["neirong"] + "</dd></dl> </div>");
                          $("#lunbodiv").append(ch);
                      })
                  },
                  error: function (data) {
                      console.info(data);
                  }
              });
              $(".lb_r").click(function () {
                  ye++;
                  console.info(ye)

                  $.ajax({
                      type: "post",
                      url: "Handler1.ashx",
                      data: { "ye": ye },
                      success: function (data) {
                          $("#lunbodiv").children().remove();
                          var data = JSON.parse(data)
                          console.info(data);
                          console.info(data.length)
                          $.each(data, function (i, s) {
                              var ch = $(" <a href='吃货寻菜谱详情页.aspx?id='" + s["caipuID"] + "'><div class='tupianhezi'>" +
                                  " <dl> <dt><img src='Images/" + s["fabutupian"] + "' /></dt>" +
                                  "<dd class='font_jiacu'>" + s["Title"] + "</dd>" +
                                  " <dd class='font_suoxiao'>" + s["neirong"] + "</dd></dl> </div>");
                              $("#lunbodiv").append(ch);
                          })
                      },
                      error: function (data) {
                          console.info(data);
                      }
                  });
              })
              $(".lb_l").click(function () {
                  ye--;
                  $.ajax({
                      type: "post",
                      url: "Handler1.ashx",
                      data: { "ye": ye},
                      success: function (data) {
                          $("#lunbodiv").children().remove();
                          var data = JSON.parse(data)
                          console.info(data);
                          console.info(data.length)
                          $.each(data, function (i, s) {
                              var ch = $(" <a href='吃货寻菜谱详情页.aspx?id='" + s["caipuID"] + "'><div class='tupianhezi'>" +
                                  " <dl> <dt><img src='Images/" + s["fabutupian"] + "' /></dt>" +
                                  "<dd class='font_jiacu'>" + s["Title"] + "</dd>" +
                                  " <dd class='font_suoxiao'>" + s["neirong"] + "</dd></dl> </div>");
                              $("#lunbodiv").append(ch);
                          })
                      },
                      error: function (data) {
                          console.info(data);
                      }
                  });
              })
          })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="tupianlunbo">
          <p class="font_center">八月你可能需要的内容<a href="#">更多菜单>></a></p>
           <div id="lunbo_left">
              <a href="#" class="button_s lb_l"></a>
           </div>
           <div id="lunbodiv">
                          <%-- Repeater控件内容 --%>     
                  <div style="clear:both"></div>
              </div>
           <div id="lunbo_right">
              <a href="#" class="button_x lb_r"></a>
           </div>
           <div style="clear:both"></div>
       
        
       </div>
    </form>
</body>
</html>

           <%--  <asp:Repeater ID="Repeater1" runat="server">
                 <ItemTemplate>--%>
                     <%-- <a href="吃货寻菜谱详情页.aspx?id=<%#Eval("caipuID") %>">
                          <div class="tupianhezi">
                      <dl>
                          <dt>
                              <img src='Images/<%#Eval("fabutupian") %>' /></dt>
                          <dd class="font_jiacu"><%#Eval("Title") %></dd>
                          <dd class="font_suoxiao"><%#Eval("neirong") %></dd>
                      </dl>
                  </div>
</a>--%>
               <%--  </ItemTemplate>
             </asp:Repeater>--%>