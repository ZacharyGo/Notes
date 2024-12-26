<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<input name="__RequestVerificationToken" type="hidden" value="<q:verificationKey/>">
<input name="__qi" type="hidden" value="<q:formBeanKey/>">
<% // 画面タイトル %>
<div data-role="header" data-position="fixed" data-tap-toggle="false" class="np-header">
    <ul class="np-header-group np-left">
    </ul>
    <span class="np-header-title"><q:getResource targetKey="F-formcaption"/></span>
</div>
<q:pageSetting/>