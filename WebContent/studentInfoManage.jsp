<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>服务员信息管理</title>
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var url;

	function searchStudent(){
		$('#dg').datagrid('load',{
			stuNo:$('#s_stuNo').val(),
			stuName:$('#s_stuName').val(),
			sex:$('#s_sex').combobox("getValue"),
			bbirthday:$('#s_bbirthday').datebox("getValue"),
			ebirthday:$('#s_ebirthday').datebox("getValue"),
			gradeId:$('#s_gradeId').combobox("getValue")
		});
	}
	
</script>
</head>
<body style="margin: 5px;">
	<table id="dg" title="服务员信息" class="easyui-datagrid" fitColumns="true"
		pagination="true" rownumbers="true" url="studentList" fit="true"
		toolbar="#tb">
		<thead>
			<tr>
				<th field="cb" checkbox="true"></th>
				<th field="stuId" width="50" align="center">编号</th>
				<th field="stuNo" width="100" align="center">工号</th>
				<th field="stuName" width="100" align="center">姓名</th>
				<th field="sex" width="100" align="center">性别</th>
				<th field="birthday" width="100" align="center">出生日期</th>
				<th field="gradeId" width="100" align="center" hidden="true">职务ID</th>
				<th field="gradeName" width="100" align="center">职务名称</th>
				<th field="email" width="150" align="center">Email</th>
				<th field="stuDesc" width="250" align="center">职务备注</th>
			</tr>
		</thead>
	</table>

	<div id="tb">
		<div>
			&nbsp;工号：&nbsp;<input type="text" name="s_stuNo" id="s_stuNo"
				size="10" /> &nbsp;姓名：&nbsp;<input type="text" name="s_stuName"
				id="s_stuName" size="10" /> &nbsp;性别：&nbsp;<select
				class="easyui-combobox" id="s_sex" name="s_sex" editable="false"
				panelHeight="auto">
				<option value="">请选择...</option>
				<option value="男">男</option>
				<option value="女">女</option>
			</select> &nbsp;出生日期：&nbsp;<input class="easyui-datebox" name="s_bbirthday"
				id="s_bbirthday" editable="false" size="10" />-><input
				class="easyui-datebox" name="s_ebirthday" id="s_ebirthday"
				editable="false" size="10" /> &nbsp;所属职务：&nbsp;<input
				class="easyui-combobox" id="s_gradeId" name="s_gradeId" size="10"
				data-options="panelHeight:'auto',editable:false,valueField:'id',textField:'gradeName',url:'gradeComboList'" />

			<a href="javascript:searchStudent()" class="easyui-linkbutton"
				iconCls="icon-search" plain="true">搜索</a>
		</div>
	</div>

</body>
</html>