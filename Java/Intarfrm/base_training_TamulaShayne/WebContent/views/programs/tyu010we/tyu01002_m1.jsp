<%@ page pageEncoding="UTF-8"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q"%>
<%
//------------------------------------------------------------------
// 明細部(M1)
//------------------------------------------------------------------
%>
<q:hasListData border="M1">
	<q:false>
		<% //----- 表示するレコードがない場合 ----- %>
		<div class="np-message-warning">
			<span> <q:listInfo border="M1" />
			</span>
		</div>
	</q:false>
	<q:true>
		<% //----- 明細セクションヘッダ ----- %>
		<div class="np-list-bar" data-layout-item-name="list_header_2">
			<ul class="np-control-group np-left">
				<li>
					<div class="np-list-info">
						<% //----- 件数表示部 ----- %>
						<span id="tyu01002-m1-page_information"><q:listInfo
								border="M1" /></span>
					</div>
				</li>
			</ul>

			<ul class="np-control-group np-left" data-layout-item-name="left_17">

			</ul>
			<ul class="np-control-group np-center">
				<li>
					<% //----- ページャ ----- %> <q:pager item-id="tyu01002----m1" />
				</li>
			</ul>

			<ul class="np-control-group np-center"
				data-layout-item-name="center_17">

			</ul>
			<ul class="np-control-group np-right"
				data-layout-item-name="right_17">

			</ul>
		</div>

		<div class="np-section-content">
			<% //----- 明細テーブル ----- %>
			<style type="text/css">
.ifm-m1_item_1 {
	flex: 14 14 0rem !important;
}

.ifm-m1_item_2 {
	flex: 14 14 0rem !important;
}

.ifm-m1_item_3 {
	flex: 14 14 0rem !important;
}

.ifm-m1_item_4 {
	flex: 14 14 0rem !important;
}

.ifm-m1_item_5 {
	flex: 14 14 0rem !important;
}

.ifm-m1_item_6 {
	flex: 14 14 0rem !important;
}

.ifm-m1_item_7 {
	flex: 14 14 0rem !important;
}
</style>
			<div class="np-list">
				<div class="np-header">
					<% //明細ヘッダ%>

					<div class="np-row">

						<div class="np-group ifm-m1_item_1">
							<div class="np-row">
								<div class="np-col">
									<q:listItemCaption item-id="meino" />
								</div>
							</div>

						</div>

						<div class="np-group ifm-m1_item_2">
							<div class="np-row">
								<div class="np-col">
									<q:listItemCaption item-id="cusid" />
								</div>
							</div>

						</div>

						<div class="np-group ifm-m1_item_3">
							<div class="np-row">
								<div class="np-col">
									<q:listItemCaption item-id="cusname" />
								</div>
							</div>

						</div>

						<div class="np-group ifm-m1_item_4">
							<div class="np-row">
								<div class="np-col">
									<q:listItemCaption item-id="email" />
								</div>
							</div>

						</div>

						<div class="np-group ifm-m1_item_5">
							<div class="np-row">
								<div class="np-col">
									<q:listItemCaption item-id="telno" />
								</div>
							</div>

						</div>

						<div class="np-group ifm-m1_item_6">
							<div class="np-row">
								<div class="np-col"></div>
							</div>

						</div>

						<div class="np-group ifm-m1_item_7">
							<div class="np-row">
								<div class="np-col"></div>
							</div>

						</div>
					</div>

				</div>
				<div class="np-body">
					<q:list border="M1">
						<% //明細データ行%>

						<div class="np-row">

							<div class="np-group ifm-m1_item_1">
								<div class="np-row">
									<div class="np-col">
										<% // 「listno.」 %>
										<q:label item-id="meino" class="np-size-20" />

									</div>
								</div>

							</div>

							<div class="np-group ifm-m1_item_2">
								<div class="np-row">
									<div class="np-col">
										<% // 「customerid」 %>
										<q:label item-id="cusid" class="np-size-20" />

									</div>
								</div>

							</div>

							<div class="np-group ifm-m1_item_3">
								<div class="np-row">
									<div class="np-col">
										<% // 「customername」 %>
										<q:label item-id="cusname" class="np-size-20" />

									</div>
								</div>

							</div>

							<div class="np-group ifm-m1_item_4">
								<div class="np-row">
									<div class="np-col">
										<% // 「email address」 %>
										<q:label item-id="email" class="np-size-20" />

									</div>
								</div>

							</div>

							<div class="np-group ifm-m1_item_5">
								<div class="np-row">
									<div class="np-col">
										<% // 「telephoneno.」 %>
										<q:label item-id="telno" class="np-size-20" />

									</div>
								</div>

							</div>

							<div class="np-group ifm-m1_item_6">
								<div class="np-row">
									<div class="np-col">
										<% // 「ボタン変更」 %>
										<q:button item-id="btnupd" class="update np-size-20"/>

									</div>
								</div>

							</div>

							<div class="np-group ifm-m1_item_7">
								<div class="np-row">
									<div class="np-col">
										<% // 「ボタン削除」 %>
										<q:button item-id="btndel" class="delete np-size-20"/>

									</div>
								</div>

							</div>
						</div>

					</q:list>
				</div>
			</div>
		</div>
		<% //----- 明細セクションフッタ ----- %>
		<div class="np-list-bar" data-layout-item-name="list_footer_2">

			<ul class="np-control-group np-left" data-layout-item-name="left_18">

			</ul>
			<ul class="np-control-group np-center">
				<li>
					<% //----- ページャ ----- %> <q:pager item-id="tyu01002----m1" />
				</li>
			</ul>

			<ul class="np-control-group np-center"
				data-layout-item-name="center_18">

			</ul>
			<ul class="np-control-group np-right"
				data-layout-item-name="right_18">

			</ul>
		</div>

	</q:true>
</q:hasListData>