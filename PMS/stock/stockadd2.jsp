<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>培训</title>
    <link href="../css/tail.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<form id="form_demo" >
<div class="top">
    <div>
        <div class="top_out">
            <table class="table" >
                <tbody>
                <tr>
                    <td style="border-top: none">仓库名称：<i class="i_start"></i> </td>
                    <td  colspan = "6"  style="text-align: left;border-top: none"><input type="text"  name ="name" minlength="2"  required id="name"></td>
                </tr>
                <tr>
                    <td>建立时间：</td>
                    <td  style="text-align: left"><input type="text" id="timeok"></td>
                    <td>负责人：</td>
                    <td colspan = "3" style="text-align: left"><input type="text" class="long_text" id="cman"></td>
                </tr>
                <tr>
                    <td>仓库容量：</td>
                    <td  style="text-align: left"><input type="text" id="quality"></td>
                    <td>结束时间：</td>
                    <td colspan = "3" style="text-align: left"><input type="text" class="long_text" id="demo01"></td>
                </tr>
               </tbody>
            </table>
        </div>
    </div>
    <div class="bot_btn">
        <input class="btn" value="保存" type="submit"/>
        <button class="btn btn1"><a href="notice.html" target="right">返回</a></button>
    </div>
</div>
</form>
</body>
</html>
