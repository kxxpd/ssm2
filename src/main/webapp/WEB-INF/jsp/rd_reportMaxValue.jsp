<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"> 
 
<head>
	<%@include file="/common/head.jsp"%>

	<meta http-equiv="Content-type" content="text/html; charset=utf-8" /> 
	<title>湖南省自来水公司营销管理信息系统</title> 
	
	<link rel="stylesheet" href="${ctx}/fycss/reset.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${ctx}/fycss/text.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${ctx}/fycss/form.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${ctx}/fycss/buttons.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${ctx}/fycss/grid.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${ctx}/fycss/layout.css" type="text/css" media="screen" title="no title" />
	
	<link rel="stylesheet" href="${ctx}/fycss/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${ctx}/fycss/plugin/jquery.visualize.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${ctx}/fycss/plugin/facebox.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${ctx}/fycss/plugin/uniform.default.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${ctx}/fycss/plugin/dataTables.css" type="text/css" media="screen" title="no title" />
	
	<link rel="stylesheet" href="${ctx}/fycss/custom.css" type="text/css" media="screen" title="no title">
</head> 
 
<body>


<div id="wrapper">

	<div id="header">

		<!-- <div id="wrapper"> -->

		<div id="masthead">

		</div>

		<div id="content" class="xgrid" >

			<div class="x12">

				<h2>零吨位用户查询</h2>



				<div class="reportTitle">
					零吨位用户情况报表
				</div>

				<table class="report datatable">
					<thead>
					<tr>
						<th width="100">抄表年月</th>
						<th width="100">所在辖区</th>
						<th width="100">用户编码</th>
						<th width="100">用户姓名</th>
						<th width="100">上月底数</th>
						<th width="100">本月抄数</th>
						<th width="100">实用水量</th>
						<th width="60">是否复核</th>
					</tr>
					</thead>
					<tbody>
						<tr>
							<td class="center">{zz.readYear}zz.readMonth}</td>
							<td class="center">{zz.volumeName}</td>
							<td class="center">{zz.userNo}</td>
							<td class="center">{zz.userName}</td>
							<td class="center">zz.preValue}</td>
							<td class="center">{zz.curValue}</td>
							<td class="center">{zz.amount}</td>
							<td class="center">
						</tr>
					</tbody>
				</table>


			</div> <!-- .x12 -->

		</div> <!-- #content -->

		<div id="footer">
			<div class="content_pad">
			</div> <!-- .content_pad -->
		</div> <!-- #footer -->

	</div> <!-- #wrapper -->

<script src="${ctx}/fyjs/jquery/jquery-1.5.2.min.js"></script>
<script src="${ctx}/fyjs/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="${ctx}/fyjs/misc/excanvas.min.js"></script>
<script src="${ctx}/fyjs/jquery/facebox.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.visualize.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.dataTables.min.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.tablesorter.min.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.uniform.min.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.placeholder.min.js"></script>

<script src="${ctx}/fyjs/widgets.js"></script>
<script src="${ctx}/fyjs/dashboard.js"></script>

	<script type="text/javascript">

        $(document).ready ( function ()
        {
            Dashboard.init ();

        });

        //设置用户所属表册


        //设置排序
        function setOrder(){
            window.showModalDialog('rd_volume_1_setOrder.html',null,'dialogWidth:560px;dialogHeight:200px;');
        }


	</script>

</body>

</html>