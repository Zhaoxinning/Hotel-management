<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>房间信息管理</title>
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
	
	function searchGrade(){
		$('#dg').datagrid('load',{
			gradeName:$('#s_gradeName').val(),
			gradeDesc:$('#s_gradeDesc').combobox("getValue")
		});
	}
	
	function openGradeModifyDialog(){
		var selectedRows=$("#dg").datagrid('getSelections');
		if(selectedRows.length!=1){
			$.messager.alert("系统提示","请选择一条要编辑的数据！");
			return;
		}
		var row=selectedRows[0];
		$("#dlg").dialog("open").dialog("setTitle","编辑房间状态");
		$("#fm").form("load",row);
		url="roomSave?id="+row.id;
	}
	
	function closeGradeDialog(){
		$("#dlg").dialog("close");
		resetValue();
	}
	
	function resetValue(){
		$("#gradeName").val("");
		$("#gradeDesc").val("");
	}
	
	
	function saveGrade(){
		$("#fm").form("submit",{
			url:url,
			onSubmit:function(){
				return $(this).form("validate");
			},
			success:function(result){
				if(result.errorMsg){
					$.messager.alert("系统提示",result.errorMsg);
					return;
				}else{
					$.messager.alert("系统提示","保存成功");
					resetValue();
					$("#dlg").dialog("close");
					$("#dg").datagrid("reload");
				}
			}
		});
	}
	
</script>
</head>
<body style="margin: 5px;">
	<table id="dg" title="房间信息" class="easyui-datagrid" fitColumns="true"
		pagination="true" rownumbers="true" url="roomList" fit="true"
		toolbar="#tb">
		<thead>
			<tr>
				<th field="cb" checkbox="true"></th>
				<th field="id" width="50">编号</th>
				<th field="gradeName" width="100">房间号</th>
				<th field="gradeDesc" width="250">房间是否为空</th>
			</tr>
		</thead>
	</table>

	<div id="tb">
	    <div>
			 <a href="javascript:openGradeModifyDialog()" class="easyui-linkbutton"
				iconCls="icon-edit" plain="true">房间状态</a> 
		</div>
		<div>
			&nbsp;房间名：&nbsp;<input type="text" name="s_gradeName"
				id="s_gradeName" />
			&nbsp;房间是否为空：&nbsp;<select
				class="easyui-combobox" id="s_gradeDesc" name="s_gradeDesc" editable="false"
				panelHeight="auto">
				<option value="">请选择...</option>
				<option value="空">空</option>
				<option value="满">满</option>
			</select>

			<a href="javascript:searchGrade()" class="easyui-linkbutton"
				iconCls="icon-search" plain="true">搜索</a>
		</div>
	</div>
	<div id="dlg" class="easyui-dialog"
		style="width: 400px; height: 280px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons">
		<form id="fm" method="post">
			<table>
				<tr>
					<td>房间名：</td>
					<td><input type="text" name="gradeName" id="gradeName"
						class="easyui-validatebox" required="true" /></td>
				</tr>
				<tr>
					<td valign="top">房间是否为空：</td>
					<td><textarea rows="7" cols="30" name="gradeDesc"
							id="gradeDesc"></textarea></td>
				</tr>
			</table>
		</form>
	</div>

	<div id="dlg-buttons">
		<a href="javascript:saveGrade()" class="easyui-linkbutton"
			iconCls="icon-ok">保存</a> <a href="javascript:closeGradeDialog()"
			class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
	</div>
</body>
</html>