<%@ page pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<%@ taglib uri="http://tempuri.org/intarfrm/np/tags" prefix="np" %>

<form action="<q:webRootName/>/tyu010we/tyu01001.action?<q:formBeanKey/>" id="tyu01001" method="post" >

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
        <div id="tyu01001----message_area" class="np-validation-summary-errors" data-layout-item-name="content_body_1"></div>


    <%// セクション %>
    <div class="np-section" data-layout-item-name="section_1">

        <div class="np-section-header" data-layout-item-name="section_header_1">
            <div class="np-section-header-left">
                <ul class="np-control-group">
                    <li>
                    <% // 「Section Header」 %>
                    <span class="np-section-title"><q:getResource targetKey="L-layoutTitle-section_header_1"/></span>
                    </li>
                    <li>
                    <span class="np-require-message">(<span class="np-require-mark">*</span><q:getProgramCommonResource targetKey="RequiredMark"/>)</span>
                    <li>
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
                   <div class="np-card-label"><q:itemCaption item-id="syomodename"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「process mode name」 %>
           <q:label item-id="syomodename" class="np-size-20"/>

                        </div>

                    </div>
                </div>
        <div class="np-card-group" data-layout-item-name="card_group_1">

            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_1">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="logondate"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「logondate」 %>
           <q:label item-id="logondate" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
            <div class="np-card-col" style="flex: 50 50 0rem !important; padding-right: 1rem;" data-layout-item-name="column_2">

                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="logonuser"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「logonuser」 %>
           <q:label item-id="logonuser" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
        </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="cusid"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「customerid」 %>
           <q:input item-id="cusid" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="cusname"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「customername」 %>
           <q:input item-id="cusname" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="area"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「area」 %>
           <q:input item-id="area" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="telno"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「telephonenumber」 %>
           <q:input item-id="telno" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="email"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「email address」 %>
           <q:input item-id="email" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="deliveremail"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「email delivery request」 %>
           <q:checkbox item-id="deliveremail" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="sex"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「gender」 %>
           <q:radio item-id="sex" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="birthymd"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「birthday」 %>
           <q:input item-id="birthymd" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="job"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「job」 %>
           <q:drl item-id="job" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="storeid"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「storeid」 %>
           <q:input item-id="storeid" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="storename"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「storename」 %>
           <q:input item-id="storename" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="point"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「point」 %>
           <q:input item-id="point" class="np-size-20"/>

                        </div>

                    </div>
                </div>
                <div class="np-card-group">
                   <div class="np-card-label"><q:itemCaption item-id="pointrate"/></div>
                   <div class="np-card-value">
                        <div>
                   <% // 「pointrate」 %>
           <q:input item-id="pointrate" class="np-size-20"/>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <%// セクションフッター %>
        <div class="np-section-footer" data-layout-item-name="section_footer_1">

            <ul class="np-control-group np-left" data-layout-item-name="left_3">

                <li>
                   <% // 「button back」 %>
           <q:button item-id="btnback" class="np-size-20"/>

                </li>

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_3">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_3">

                <li>
                   <% // 「button enter」 %>
           <q:button item-id="btnenter" class="np-size-20"/>

                </li>

            </ul>
        </div>
    </div>
        <%// コンテンツフッター %>
        <div class="np-content-footer" data-layout-item-name="content_footer_1">

            <ul class="np-control-group np-left" data-layout-item-name="left_4">

            </ul>
            <ul class="np-control-group np-center" data-layout-item-name="center_4">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_4">

            </ul>
        </div>
    </div>

</form>