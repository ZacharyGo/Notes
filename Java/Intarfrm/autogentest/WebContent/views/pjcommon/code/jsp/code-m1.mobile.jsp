<%@ page pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<q:hasListData border="M1">
<q:true>
    <div class="np-section-content">
        <div class="np-section-header">
            <span class="np-section-title"><q:getCodeCommonResource targetKey="codeSearchResultTitle"/></span>
        </div>
        <div class="np-list np-list-bar">
            <% // ページャ %>
            <q:codepager item-id="codepager" border="M1" />
            <div class="np-list-info">
                <% // 明細件数の表示 %>
                <q:codeRowCount />
            </div>
        </div>
        <ul class="np-list" data-role="listview" data-icon="false" data-inset="true">
            <q:codeResultRow>
                <li>
                    <div class="np-list-value">
                        <a href="javascript:void(0)" data-action-type="transfer" data-action-row="<%=index%>">
                            <q:codeResultItem>
                                <span id="@id" class="ifm-mode-enable">@data</span>
                            </q:codeResultItem>
                        </a>
                    </div>
                </li>
            </q:codeResultRow>
        </ul>
        <div class="np-list np-list-bar">
            <% // ページャ %>
            <q:codepager item-id="codepager" border="M1" />
        </div>
    </div>
</q:true>
</q:hasListData>