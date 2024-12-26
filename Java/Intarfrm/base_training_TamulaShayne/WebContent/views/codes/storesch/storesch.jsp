<%@ page pageEncoding="UTF-8"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q"%>
<%@ taglib uri="http://tempuri.org/intarfrm/np/tags" prefix="np"%>

<% // コンテンツ %>
<div class="np-content">
	<% //----- 検索項目セクション ----- %>
	<div class="np-section">
		<div class="np-section-header">
			<div class="np-section-header-left">
				<span class="np-section-title"><q:getCodeCommonResource
						targetKey="codeSearchTitle" /></span>
				<np:hasRequiredItem group="1">
					<q:true>
						<span class="np-require-message">（<span
							class="np-require-mark">*</span>
						<q:getProgramCommonResource targetKey="RequiredMark" />）
						</span>
					</q:true>
				</np:hasRequiredItem>
			</div>
			<div class="np-section-header-right"></div>
		</div>
		<div class="np-section-content">
			<% //----- 検索項目テーブル ----- %>
			<table class="np-card">
				<tbody>
					<tr>
						<th class="np-card-label"><q:itemCaption
								item-id="storename-search" /></th>
						<td class="np-card-value"><q:input item-id="storename-search" />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<% // セクションフッター %>
		<div class="np-section-footer">
			<ul class="np-control-group">
			</ul>
			<ul class="np-control-group np-right">
				<li>
					<% //----- 検索ボタン ----- %>
					<button type="submit" id="code--storesch----search_btn"
						name="code--storesch----search_btn"
						data-action-id="_code_reference"
						data-action-target="code--storesch----search_result_part"
						data-action-get-args="__item=<%=(String)request.getAttribute("clickedItem") %>&actionType=search">
						<q:getCodeCommonResource targetKey="codeSearchBtn" />
					</button>
				</li>
			</ul>
		</div>
	</div>
	<% //----- メッセージエリア ----- %>
	<div id="code--storesch----message_area"
		class="np-validation-summary-errors"></div>
	<% //----- 検索結果明細セクション ----- %>
	<div id="code--storesch----search_result_part" class="np-section">
		<%@ include file="/views/pjcommon/code/jsp/code-m1.jsp"%>
	</div>
</div>
