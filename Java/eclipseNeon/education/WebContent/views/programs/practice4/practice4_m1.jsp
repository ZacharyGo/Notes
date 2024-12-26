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
    <div class="np-list-bar">
        <ul class="np-control-group np-left">
            <li>
                <div class="np-list-info">
                    <% //----- 件数表示部 ----- %>
                    <span id="practice4-m1-page_information"><q:listInfo border="M1"/></span>
                </div>
            </li>
        </ul>
            <% //----- ページャ ----- %>
            <q:pager item-id="practice4----m1"/>
        <ul class="np-control-group np-right">
        </ul>
    </div>

    <div class="np-section-content">
    <% //----- 明細テーブル ----- %>
        <table class="np-list">
            <thead>
                <tr><% //----- 明細ヘッダ ----- %>
                <th>
                    <q:listItemCaption item-id="productid"/>
                </th>
                <th>
                    <q:listItemCaption item-id="productname"/>
                </th>
                <th>
                    <q:listItemCaption item-id="price"/>
                </th>
                </tr>
            </thead>
            <tbody>
                <q:list border="M1">
                <tr><% //----- 明細データ行 ----- %>
                    <td>
                    <% // 「商品ID」ラベル %>
                        <q:label item-id="productid"/>
                    </td>
                    <td>
                    <% // 「商品名」ラベル %>
                        <q:label item-id="productname"/>
                    </td>
                    <td>
                    <% // 「値段」ラベル %>
                        <q:label item-id="price"/>
                    </td>
                </tr>
                </q:list>
            </tbody>
        </table>
    </div>
    <% //----- 明細セクションフッタ ----- %>
	<div class="np-list-bar">
        <ul class="np-control-group np-left">
        </ul>
            <% //----- ページャ ----- %>
            <q:pager item-id="practice4----m1"/>
        <ul class="np-control-group np-right">
        </ul>
    </div>
</q:true>
</q:hasListData>