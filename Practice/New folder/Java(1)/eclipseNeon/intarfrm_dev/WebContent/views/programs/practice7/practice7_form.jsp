<%@ page pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<%@ taglib uri="http://tempuri.org/intarfrm/np/tags" prefix="np" %>
<style type="text/css">
div input {color : red;}
p > input {color : green;}
input {color : blue;}
input[type="button"] {color : yellow;}
</style>

<form action="<q:webRootName/>/practice7/practice7.action?<q:formBeanKey/>" id="practice7" method="post" >
<div>
<p>
<input type="button" value = "button" />
</p>
</div>
<% int num = 5; %>
The value of num is <%= num++ %>
<p>
<p>
<c:forEach var="i" begin="1" end="10" step="2" varStatus="status">  
    ${i}
</c:forEach>    


<%//コンテンツ %>
    <div class="np-content" data-layout-item-name="content_1">

    <%// 共通ヘッダの出力 %>
        <% // 画面タイトル %>
        <div class="np-content-header" data-layout-item-name="content_header_1">
            <span title="<q:getResource targetKey="F-formcaption"/>" class="np-content-title"><q:getResource targetKey="F-formcaption"/></span>

            <ul class="np-control-group np-left" data-layout-item-name="left_1">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_1">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_1">

            </ul>
        </div>
<input name="__RequestVerificationToken" type="hidden" value="<q:verificationKey/>">
<input name="__qi" type="hidden" value="<q:formBeanKey/>">
        <%// メッセージエリア %>
        <div id="practice7----message_area" class="np-validation-summary-errors" data-layout-item-name="content_body_1"></div>


    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_1">

        <div class="np-section-header" data-layout-item-name="section_header_1">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「Search Condition」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_1"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_2">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_2">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_2">

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_1">
            <div class="np-card">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="searchprice"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「search value」 %>
           <q:input item-id="searchprice" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_1">

            <ul class="np-control-group np-left" data-layout-item-name="left_3">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_3">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_3">

                <li>
                   <% // 「button reference」 %>
           <q:button item-id="btnref" class="np-size-20"/>

                </li>

            </ul>
        </div>
    </div>
    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_2">

        <div class="np-section-header" data-layout-item-name="section_header_2">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「Product List」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_2"/></span>
                    </li>
                </ul>
            </div>

            <ul class="np-control-group np-left" data-layout-item-name="left_4">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_4">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_4">

            </ul>
        </div>
        <div class="np-section-content" data-layout-item-name="section_body_2">
            <div class="np-card">

            <%// 明細 M1 %>
            <% // 明細M1のインクルード %>
            <div id="practice7----m1">
                <c:set var="fruit" value="apple" scope="page" />
                <%@ include file="/views/programs/practice7/practice7_m1.jsp" %>

            </div>
            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_2">

            <ul class="np-control-group np-left" data-layout-item-name="left_7">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_7">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_7">

            </ul>
        </div>
    </div>
        <%// コンテンツフッター %>
        <div class="np-content-footer" data-layout-item-name="content_footer_1">

            <ul class="np-control-group np-left" data-layout-item-name="left_8">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_8">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_8">

            </ul>
        </div>
    </div>

</form>