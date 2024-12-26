<%@ page pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<%@ taglib uri="http://tempuri.org/intarfrm/np/tags" prefix="np" %>

<form action="<q:webRootName/>/tyu010we/tyu01002.action?<q:formBeanKey/>" id="tyu01002" method="post" >

<%//コンテンツ %>
    <div class="np-content" data-layout-item-name="content_3">

    <%// 共通ヘッダの出力 %>
        <% // 画面タイトル %>
        <div class="np-content-header" data-layout-item-name="content_header_3">
            <span title="<q:getResource targetKey="F-formcaption"/>" class="np-content-title"><q:getResource targetKey="F-formcaption"/></span>

            <ul class="np-control-group np-left" data-layout-item-name="left_17">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_17">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_17">

            </ul>
        </div>
<input name="__RequestVerificationToken" type="hidden" value="<q:verificationKey/>">
<input name="__qi" type="hidden" value="<q:formBeanKey/>">
        <%// メッセージエリア %>
        <div id="tyu01002----message_area" class="np-validation-summary-errors" data-layout-item-name="content_body_3"></div>


    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_5">

        <div class="np-section-header" data-layout-item-name="section_header_5">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「 」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_5"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_18">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_18">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_18">

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_5">
            <div class="np-card">

        <div class="np-card-group" data-layout-item-name="card_group_11">

            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_24">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="logondate"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「logon date」 %>
           <q:label item-id="logondate" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_25">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="logonuser"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「logon user」 %>
           <q:label item-id="logonuser" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_5">

            <ul class="np-control-group np-left" data-layout-item-name="left_19">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_19">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_19">

                <li>
                   <% // 「button new」 %>
           <q:button item-id="btnadd" class="np-size-20"/>

                </li>

            </ul>
        </div>
    </div>
    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_6">

        <div class="np-section-header" data-layout-item-name="section_header_6">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「 」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_6"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_20">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_20">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_20">

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_6">
            <div class="np-card">

        <div class="np-card-group" data-layout-item-name="card_group_12">

            <div class="np-card-col" style="flex: 33 33 0rem !important; padding-right: 1rem;" data-layout-item-name="column_26">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="storeid"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「store id」 %>
           <q:input item-id="storeid" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
            <div class="np-card-col" style="flex: 33 33 0rem !important; padding-right: 1rem;" data-layout-item-name="column_27">

                <div class="np-card-group">
                   <div class="np-card-label"></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「button search」 %>
           <q:button item-id="btnsearch"/>

                        </div>

                    </div>
                </div>
            </div>
            <div class="np-card-col" style="flex: 33 33 0rem !important; padding-right: 1rem;" data-layout-item-name="column_28">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="storename"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「store name」 %>
           <q:input item-id="storename" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_6">

            <ul class="np-control-group np-left" data-layout-item-name="left_21">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_21">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_21">

                <li>
                   <% // 「button confirm」 %>
           <q:button item-id="btndef" class="np-size-20"/>

                </li>

            </ul>
        </div>
    </div>
    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_7">

        <div class="np-section-header" data-layout-item-name="section_header_7">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「 」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_7"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_22">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_22">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_22">

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_7">
            <div class="np-card">

            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_7">

            <ul class="np-control-group np-left" data-layout-item-name="left_25">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_25">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_25">

            </ul>
        </div>
    </div>
    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_8">

        <div class="np-section-header" data-layout-item-name="section_header_8">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「 」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_8"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_27">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_27">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_27">

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_8">
            <div class="np-card">

            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_8">

            <ul class="np-control-group np-left" data-layout-item-name="left_28">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_28">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_28">

            </ul>
        </div>
    </div>
    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_9">

        <div class="np-section-header" data-layout-item-name="section_header_9">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「 」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_9"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_29">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_29">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_29">

                <li>
                   <% // 「button cancel」 %>
           <q:button item-id="btncancel" class="np-size-20"/>

                </li>

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_9">
            <div class="np-card">

            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_9">

            <ul class="np-control-group np-left" data-layout-item-name="left_30">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_30">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_30">

            </ul>
        </div>
    </div>
    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_10">

        <div class="np-section-header" data-layout-item-name="section_header_10">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「 」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_10"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_31">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_31">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_31">

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_10">
            <div class="np-card">

            <%// 明細 M1 %>
            <% // 明細M1のインクルード %>
            <div id="tyu01002----m1">
                <%@ include file="/views/programs/tyu010we/tyu01002_m1.jsp" %>

            </div>
            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_10">

            <ul class="np-control-group np-left" data-layout-item-name="left_32">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_32">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_32">

            </ul>
        </div>
    </div>
    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_11">

        <div class="np-section-header" data-layout-item-name="section_header_11">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「Section Header」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_11"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_33">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_33">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_33">

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_11">
            <div class="np-card">

            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_11">

            <ul class="np-control-group np-left" data-layout-item-name="left_34">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_34">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_34">

            </ul>
        </div>
    </div>
    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_12">

        <div class="np-section-header" data-layout-item-name="section_header_12">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「Section Header」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_12"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_35">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_35">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_35">

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_12">
            <div class="np-card">

            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_12">

            <ul class="np-control-group np-left" data-layout-item-name="left_36">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_36">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_36">

            </ul>
        </div>
    </div>
        <%// コンテンツフッター %>
        <div class="np-content-footer" data-layout-item-name="content_footer_3">

            <ul class="np-control-group np-left" data-layout-item-name="left_26">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_26">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_26">

            </ul>
        </div>
    </div>

</form>