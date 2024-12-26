<%@ page pageEncoding="UTF-8"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q"%>
<%@ taglib uri="http://tempuri.org/intarfrm/np/tags" prefix="np"%>

<form
	action="<q:webRootName/>/tyu010we/tyu01002.action?<q:formBeanKey/>"
	id="tyu01002" method="post">

	<%//コンテンツ %>
	<div class="np-content" data-layout-item-name="content_2">

		<%// 共通ヘッダの出力 %>
		<% // 画面タイトル %>
		<div class="np-content-header"
			data-layout-item-name="content_header_2">
			<span title="<q:getResource targetKey="F-formcaption"/>"
				class="np-content-title"><q:getResource
					targetKey="F-formcaption" /></span>

			<ul class="np-control-group np-left" data-layout-item-name="left_11">

			</ul>
			<ul class="np-control-group np-center"
				data-layout-item-name="center_11">

			</ul>
			<ul class="np-control-group np-right"
				data-layout-item-name="right_11">

			</ul>
		</div>
		<input name="__RequestVerificationToken" type="hidden"
			value="<q:verificationKey/>"> <input name="__qi"
			type="hidden" value="<q:formBeanKey/>">
		<%// メッセージエリア %>
		<div id="tyu01002----message_area"
			class="np-validation-summary-errors"
			data-layout-item-name="content_body_2"></div>


		<%// セクション %>
		<div class="np-section" data-layout-item-name="section_4">

			<div class="np-section-header"
				data-layout-item-name="section_header_4">
				<div class="np-section-header-left">
					<ul class="np-control-group">
						<li>
							<% // 「  Customer Master List」 %> <span class="np-section-title"><q:getResource
									targetKey="L-layoutTitle-section_header_4" /></span>
						</li>
					</ul>
				</div>

				<ul class="np-control-group np-left" data-layout-item-name="left_12">

				</ul>
				<ul class="np-control-group np-center"
					data-layout-item-name="center_12">

				</ul>
				<ul class="np-control-group np-right"
					data-layout-item-name="right_12">

				</ul>
			</div>
			<div class="np-section-content"
				data-layout-item-name="section_body_4">
				<div class="np-card">

					<div class="np-card-group" data-layout-item-name="card_group_3">

						<div class="np-card-col"
							style="flex: 50 50 0rem !important; padding-right: 1rem;"
							data-layout-item-name="column_5">

							<div class="np-card-group">
								<div class="np-card-label">
									<q:itemCaption item-id="logondate" />
								</div>
								<div class="np-card-value">
									<div>
										<% // 「logondate」 %>
										<q:label item-id="logondate" class="np-size-20" />

									</div>

								</div>
							</div>
						</div>
						<div class="np-card-col"
							style="flex: 50 50 0rem !important; padding-right: 1rem;"
							data-layout-item-name="column_6">

							<div class="np-card-group">
								<div class="np-card-label">
									<q:itemCaption item-id="logonuser" />
								</div>
								<div class="np-card-value">
									<div>
										<% // 「logonuser」 %>
										<q:label item-id="logonuser" class="np-size-20" />

									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%// セクションフッター %>
			<div class="np-section-footer"
				data-layout-item-name="section_footer_4">

				<ul class="np-control-group np-left" data-layout-item-name="left_13">
						
				</ul>
				<ul class="np-control-group np-center"
					data-layout-item-name="center_13">

				</ul>
				<ul class="np-control-group np-right"
					data-layout-item-name="right_13">

					<li>
						<% // 「button new」 %> <q:button item-id="btnadd" class="np-size-20" />

					</li>

				</ul>
			</div>
		</div>
		<%// セクション %>
		<div class="np-section" data-layout-item-name="section_5">

			<div class="np-section-header"
				data-layout-item-name="section_header_5">
				<div class="np-section-header-left">
					<ul class="np-control-group">
						<li>
							<% // 「  」 %> <span class="np-section-title"><q:getResource
									targetKey="L-layoutTitle-section_header_5" /></span>
						</li>
					</ul>
				</div>

				<ul class="np-control-group np-left" data-layout-item-name="left_14">

				</ul>
				<ul class="np-control-group np-center"
					data-layout-item-name="center_14">

				</ul>
				<ul class="np-control-group np-right"
					data-layout-item-name="right_14">

				</ul>
			</div>
			<div class="np-section-content"
				data-layout-item-name="section_body_5">
				<div class="np-card">

					<div class="np-card-group" data-layout-item-name="card_group_4">

						<div class="np-card-col"
							style="flex: 50 50 0rem !important; padding-right: 1rem;"
							data-layout-item-name="column_7">

							<div class="np-card-group" data-layout-item-name="case_2">
								<div class="np-card-label">
									<span class="np-require"><q:getResource
											targetKey="L-layoutTitle-case_2" /></span>
								</div>
								<div class="np-card-value">
									<% // 「Store ID」 %>

									<div>
										<% // 「storeid」 %>
										<q:input item-id="storeid" class="np-size-20" />

									</div>

									<div>
										<% // 「searchbutton」 %>
										<q:button item-id="searchbtn" />

									</div>

								</div>
							</div>
						</div>
						<div class="np-card-col"
							style="flex: 50 50 0rem !important; padding-right: 1rem;"
							data-layout-item-name="column_8">

							<div class="np-card-group">
								<div class="np-card-label">
									<q:itemCaption item-id="storename" />
								</div>
								<div class="np-card-value">
									<div>
										<% // 「storename」 %>
										<q:input item-id="storename" class="np-size-20" />

									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%// セクションフッター %>
			<div class="np-section-footer"
				data-layout-item-name="section_footer_5">

				<ul class="np-control-group np-left" data-layout-item-name="left_15">

				</ul>
				<ul class="np-control-group np-center"
					data-layout-item-name="center_15">

				</ul>
				<ul class="np-control-group np-right"
					data-layout-item-name="right_15">

					<li>
						<% // 「confirm button」 %> <q:button item-id="btndef"
							class="np-size-20" />

					</li>

				</ul>
			</div>
		</div>
		<%// セクション %>
		<div class="np-section" data-layout-item-name="section_6">

			<div class="np-section-header"
				data-layout-item-name="section_header_6">
				<div class="np-section-header-left">
					<ul class="np-control-group">
						<li>
							<% // 「Section Header」 %> <span class="np-section-title"><q:getResource
									targetKey="L-layoutTitle-section_header_6" /></span>
						</li>
					</ul>
				</div>

				<ul class="np-control-group np-left" data-layout-item-name="left_16">

				</ul>
				<ul class="np-control-group np-center"
					data-layout-item-name="center_16">

				</ul>
				<ul class="np-control-group np-right"
					data-layout-item-name="right_16">

					<li>
						<% // 「cancelbutton」 %> <q:button item-id="cancelbtn"
							class="np-size-20" />

					</li>

				</ul>
			</div>
			<div class="np-section-content"
				data-layout-item-name="section_body_6">
				<div class="np-card">

					<%// 明細 M1 %>
					<% // 明細M1のインクルード %>
					<div id="tyu01002----m1">
						<%@ include file="/views/programs/tyu010we/tyu01002_m1.jsp"%>

					</div>
				</div>
			</div>
			<%// セクションフッター %>
			<div class="np-section-footer"
				data-layout-item-name="section_footer_6">

				<ul class="np-control-group np-left" data-layout-item-name="left_19">

				</ul>
				<ul class="np-control-group np-center"
					data-layout-item-name="center_19">

				</ul>
				<ul class="np-control-group np-right"
					data-layout-item-name="right_19">

				</ul>
			</div>
		</div>
		<%// コンテンツフッター %>
		<div class="np-content-footer"
			data-layout-item-name="content_footer_2">

			<ul class="np-control-group np-left" data-layout-item-name="left_20">

			</ul>
			<ul class="np-control-group np-center"
				data-layout-item-name="center_20">

			</ul>
			<ul class="np-control-group np-right"
				data-layout-item-name="right_20">

			</ul>
		</div>
	</div>

	<div id="dialog-confirm" style="visibility: hidden" title="Delete Record">
  		<p>Are you sure you want to delete this permanently?</p>
	</div>
</form>

