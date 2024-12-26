<%@ page pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<%@ taglib uri="http://tempuri.org/intarfrm/np/tags" prefix="np" %>

<% //----- 検索項目セクション ----- %>
<div class="np-section">
    <div class="np-section-header">
        <span class="np-section-title"><q:getCodeCommonResource targetKey="codeSearchTitle"/></span>
        <np:hasRequiredItem group="1">
		<q:true>
            <span class="np-require-message">（<span class="np-require-mark">*</span><q:getProgramCommonResource targetKey="RequiredMark"/>）</span>
        </q:true>
		</np:hasRequiredItem>
    </div>
	<% // メッセージエリア %>
    <div class="np-validation-summary-errors" id="code--storesch----message_area"></div>
	<div class="np-section-content">
        <% //----- 検索項目セクション ----- %>
        <ul class="np-card">
            <li>
                <div class="np-card-label">
				    <q:itemCaption item-id="storename-search"/>
				</div>
				<div class="np-card-value">
                     <q:input item-id="storename-search"/>
                </div>
			</li>
    <% //----- 検索ボタン ----- %>
    <button type="submit" id="code--storesch----search_btn"
        name="code--storesch----search_btn"
        data-action-id="_code_reference"
        data-action-target="code--storesch----search_result_part"
        data-action-get-args="__item=<%=(String)request.getAttribute("clickedItem") %>&actionType=search">
        <q:getCodeCommonResource targetKey="codeSearchBtn" />
	</button>
		</ul>
	</div>
</div>
<% //----- 検索結果明細セクション ----- %>
<div id="code--storesch----search_result_part" class="np-section">  
	<%@ include file="/views/pjcommon/code/jsp/code-m1.mobile.jsp"%>
</div>


