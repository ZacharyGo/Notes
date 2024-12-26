<%@ page pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<%
//------------------------------------------------------------------
// 明細部(M1)
//------------------------------------------------------------------
%>
<jsp:useBean id="fruit" class="java.lang.String" scope="page" />
Value of fruit is <%=fruit %>
<q:hasListData border="M1">
<q:false>
    <% //----- 表示するレコードがない場合 ----- %>
    <div class="np-message-warning">
        <span>
            <q:listInfo border="M1"/>
        </span>
    </div>
</q:false>
<q:true>
    <% //----- 明細セクションヘッダ ----- %>
    <div class="np-list-bar" data-layout-item-name="list_header_1">
        <ul class="np-control-group np-left">
            <li>
                <div class="np-list-info">
	       <% //----- 件数表示部 ----- %>
                    <span id="practice7-m1-page_information"><q:listInfo border="M1"/></span>
                </div>
            </li>
        </ul>

            <ul class="np-control-group np-left" data-layout-item-name="left_5">

            </ul>
            <ul class="np-control-group np-center">
                <li>
        <% //----- ページャ ----- %>        <q:pager item-id="practice7----m1"/>
                </li>
            </ul>

            <ul class="np-control-group np-center" data-layout-item-name="center_5">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_5">

                <li>
                   <% // 「btnadd」 %>
           <q:button item-id="btnadd" class="np-size-20"/>

                </li>

            </ul>
    </div>

    <div class="np-section-content">
    <% //----- 明細テーブル ----- %>
        <style type="text/css">
    
        .ifm-m1_item_1 {
            flex: 16 16 0rem !important;
        }

        .ifm-m1_item_2 {
            flex: 16 16 0rem !important;
        }

        .ifm-m1_item_3 {
            flex: 5 16 0rem !important;
        }

        .ifm-m1_item_4 {
            flex: 4 16 0rem !important;
        }

        .ifm-m1_item_5 {
            flex: 4 16 0rem !important;
        }

        .ifm-m1_item_6 {
            flex: 4 16 0rem !important;
        }


        </style>
        <div class="np-list">
            <div class="np-header">
                <% //明細ヘッダ%>
    
    <div class="np-row">

                            <div class="np-group ifm-m1_item_1">
                                <div class="np-row">
                                    <div class="np-col"><q:listItemCaption item-id="productid"/></div>
                                </div>

                            </div>

                            <div class="np-group ifm-m1_item_2">
                                <div class="np-row">
                                    <div class="np-col"><q:listItemCaption item-id="productname"/></div>
                                </div>

                            </div>

                            <div class="np-group ifm-m1_item_3">
                                <div class="np-row">
                                    <div class="np-col"><q:listItemCaption item-id="price"/></div>
                                </div>

                            </div>

                            <div class="np-group ifm-m1_item_4">
                                <div class="np-row">
                                    <div class="np-col"></div>
                                </div>

                            </div>

                            <div class="np-group ifm-m1_item_5">
                                <div class="np-row">
                                    <div class="np-col"></div>
                                </div>

                            </div>

                            <div class="np-group ifm-m1_item_6">
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
                   <% // 「product id」 %>
           <q:label item-id="productid" class="np-size-20"/>

                </div>
            </div>

        </div>

        <div class="np-group ifm-m1_item_2">
            <div class="np-row">
                <div class="np-col">
                   <% // 「product name」 %>
           <q:label item-id="productname" class="np-size-20"/>

                </div>
            </div>

        </div>

        <div class="np-group ifm-m1_item_3">
            <div class="np-row">
                <div class="np-col">
                   <% // 「price」 %>
           <q:label item-id="price" class="np-size-20"/>

                </div>
            </div>

        </div>

        <div class="np-group ifm-m1_item_4">
            <div class="np-row">
                <div class="np-col">
                   <% // 「btndetails」 %>
           <q:button item-id="btndetails" class="np-size-5 np-flatbtn np-smallbtn np-icon-button np-icon-reference"/>

                </div>
            </div>

        </div>

        <div class="np-group ifm-m1_item_5">
            <div class="np-row">
                <div class="np-col">
                   <% // 「btnupdate」 %>
           <q:button item-id="btnupdate" class="np-size-5 np-flatbtn np-smallbtn np-icon-button np-icon-edit"/>

                </div>
            </div>

        </div>

        <div class="np-group ifm-m1_item_6">
            <div class="np-row">
                <div class="np-col">
                   <% // 「btndelete」 %>
           <q:button item-id="btndelete" class="np-size-5 np-flatbtn np-smallbtn np-icon-button np-icon-delete"/>

                </div>
            </div>

        </div>
    </div>

            </q:list>
            </div>
            </div>
        </div>
    <% //----- 明細セクションフッタ ----- %>
    <div class="np-list-bar" data-layout-item-name="list_footer_1">

            <ul class="np-control-group np-left" data-layout-item-name="left_6">

            </ul>
            <ul class="np-control-group np-center">
                <li>
        <% //----- ページャ ----- %>        <q:pager item-id="practice7----m1"/>
                </li>
            </ul>

            <ul class="np-control-group np-center" data-layout-item-name="center_6">

            </ul>
            <ul class="np-control-group np-right" data-layout-item-name="right_6">

            </ul>
    </div>

</q:true>
</q:hasListData>