<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<input name="__RequestVerificationToken" type="hidden" value="<q:verificationKey/>">
<input name="__qi" type="hidden" value="<q:formBeanKey/>">
<% // 画面タイトル %>
<div class="np-content-header">
	<span title="<q:getResource targetKey="F-formcaption"/>" class="np-content-title"><q:getResource targetKey="F-formcaption"/></span>
	<ul class="np-control-group  np-right">
		<li>
        	<% // ----- 終了ボタン----- %>
			<%
			// 終了ボタンを配置するときは下記タグのコメントアウトを解除してください。
			// ブラウザの仕様により終了ボタンが動作しない場合があります。
			// 動作保証のブラウザで十分検証を行ってから配置してください。
            //<button type="button" id="btn-close" data-action-id="_closewindow" style = "display:block">
            //	<q:getProgramCommonResource targetKey="closeBtn" />
            //</button>
			%>
		</li>
    </ul>
</div>
<q:pageSetting/>