<%@ page pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<%@ taglib uri="http://tempuri.org/intarfrm/np/tags" prefix="np" %>

<form action="<q:webRootName/>/practice2/practice2.action?<q:formBeanKey/>" id="practice2" method="post" >
<div class="np-content">
<% // 画面共通ヘッダーのインクルード %>
<%@ include file="/views/pjcommon/jsp/commonformheader.jsp" %>
<% // メッセージエリア %>
<div id="practice2----message_area" class="np-validation-summary-errors"></div>

<%
//------------------------------------------------------------------
//    カード部
//------------------------------------------------------------------
%>

    <% // グループ G1 %>
	<div id="practice2----g1" class="np-section">
        <div class="np-section-header">
            <div class="np-section-header-left">
				<ul class="np-control-group">
                <li>
                <span class="np-section-title"><q:getResource targetKey="F-group1"/></span>
				</li>
				<li>
				<np:hasRequiredItem group="1">
				<q:true>
				<span class="np-require-message">(<span class="np-require-mark">*</span><q:getProgramCommonResource targetKey="RequiredMark"/>)</span>
				</q:true>
				</np:hasRequiredItem>
				</li>
				</ul>
            </div>
            <div class="np-section-header-right"></div>         
        </div>
        <div class="np-section-content">
            <% //  カード部  %>
            <table class="np-card">
                <tr>
                    <th class="np-card-label"><q:itemCaption item-id="department"/></th>
                    <td class="np-card-value">
                        <% // 「部署」 %>
                        <q:label item-id="department"/>
                    </td>
                </tr>
            </table>
            <% // 明細M1のインクルード %>
            <div id="practice2----m1">
                <%@ include file="/views/programs/practice2/practice2_m1.jsp" %>
            </div>
            <% //  カード部  %>
            <table class="np-card">
                <tr>
                    <th class="np-card-label"></th>
                    <td class="np-card-value">
                        <% // 「ボタン確定」 %>
                        <q:button item-id="btndef"/>
                    </td>
                </tr>
            </table>
        </div>
		<% // セクションフッター %>
        <div class="np-section-footer">
            <ul class="np-control-group">
            </ul>
            <ul class="np-control-group np-right">
            </ul>
        </div>
    </div>
    <% // コンテンツフッター %>
    <div class="np-content-footer">
        <div>
            <ul class="np-control-group  np-left">
                <li></li>
            </ul>
            <ul class="np-control-group np-right">
            </ul>
        </div>
    </div>
</div>
</form>