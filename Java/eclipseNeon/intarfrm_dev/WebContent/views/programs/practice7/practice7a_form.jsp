<%@ page pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<%@ taglib uri="http://tempuri.org/intarfrm/np/tags" prefix="np" %>

<form action="<q:webRootName/>/practice7/practice7a.action?<q:formBeanKey/>" id="practice7a" method="post" >
    
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
        <div id="practice7a----message_area" class="np-validation-summary-errors" data-layout-item-name="content_body_1"></div>


    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_1">

        <div class="np-section-header" data-layout-item-name="section_header_1">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「Section Header」 %>
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
                   <div class="np-card-label"><q:itemCaption item-id="productid"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「product id」 %>
           <q:input item-id="productid" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="productname"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「product name」 %>
           <q:input item-id="productname" class="np-size-20" /><c:out value='test : ${USER_DATA["jspAttribute"]}'/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="price"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「price」 %>
           <q:input item-id="price" class="np-size-20"/>

                        </div>

                    </div>
                </div>
        <div class="np-card-group" data-layout-item-name="card_group_1">

            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_1">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="drlcode2"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「drlcode2」 %>
           <q:drl item-id="drlcode2" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_2">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="drlcode"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「drlcode」 %>
           <q:drl item-id="drlcode" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="np-card-group" data-layout-item-name="card_group_2">

            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_3">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="drlcond2"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「drlcond2」 %>
           <q:drl item-id="drlcond2" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_4">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="drlcond"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「drlcond」 %>
           <q:drl item-id="drlcond" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="np-card-group" data-layout-item-name="card_group_3">

            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_5">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="drldynamic2"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「drldynamic2」 %>
           <q:drl item-id="drldynamic2" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_6">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="drldynamic"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「drldynamic」 %>
           <q:drl item-id="drldynamic" class="np-size-20"/>

                        </div>

                    </div>
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

            </ul>
        </div>
    </div>
        <%// コンテンツフッター %>
        <div class="np-content-footer" data-layout-item-name="content_footer_1">

            <ul class="np-control-group np-left" data-layout-item-name="left_4">

                <li>
                   <% // 「btncancel」 %>
           <q:button item-id="btncancel" class="np-size-20"/>

                </li>

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_4">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_4">

                <li>
                   <% // 「btnregister」 %>
           <q:button item-id="btnregister" class="np-size-20"/>

                </li>

                <li>
                   <% // 「btnupdate」 %>
           <q:button item-id="btnupd" class="np-size-20"/>

                </li>

            </ul>
        </div>
    </div>

</form>