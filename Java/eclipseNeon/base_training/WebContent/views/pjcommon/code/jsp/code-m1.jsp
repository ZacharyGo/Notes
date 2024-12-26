<%@ page pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q"%>
<%@ taglib uri="http://tempuri.org/intarfrm/np/tags" prefix="np"%>
<div class="np-section-content">
    <div class="np-section-header">
        <div class="np-section-header-left">
            <span class="np-section-title"><q:getCodeCommonResource targetKey="codeSearchResultTitle" /></span>
        </div>
        <div class="np-section-header-right"></div>
    </div>
		<q:hasListData border="M1">
			<q:true>
				<div class="np-list-bar">
					<ul class="np-control-group np-left">
						<li>
							<div class="np-list-info">
								<q:codeIdReplace>
									<span id="code--@codeId----search_result" class="ifm-list-info"><q:codeRowCount /></span>
								</q:codeIdReplace>
						</div>
		            </li>
	            </ul>
				<ul class="np-control-group np-center">
					<li>
				<q:codepager item-id="codepager" border="M1" />
					</li>
				</ul>
				<ul class="np-control-group np-right">
				</ul>
			</div>
			<div class="np-section-content">
				<table class="np-list">
					<thead>
						<tr>
							<q:codeResultHeader itemId="itemId">
								<q:codeListItemCaption item-id="${itemId}" />
							</q:codeResultHeader>
						</tr>
					</thead>
					<tbody>
						<q:codeResultRow>
							<tr>
								<q:codeResultItem>
									<td style="@width"><a href="javascript:void(0)"
										data-action-type="transfer" data-action-row="@index"> <span
										id="@id" class="@class">@data</span>
									</a></td>
								</q:codeResultItem>
						</tr>
						</q:codeResultRow>
					</tbody>
				</table>
			</div>
			<div class="np-list-bar">
				<ul class="np-control-group np-left">
				</ul>
				<ul class="np-control-group np-center">
					<li>
				<q:codepager item-id="codepager" border="M1" />
					</li>
				</ul>
				<ul class="np-control-group np-right">
				</ul>
			</div>
		</q:true>
		<q:false>
		<q:isActionTypeInvoke>
			<q:true>
				<div class="np-message-warning">
					<span>
						<q:getCodeCommonResource targetKey="codeRequireSearch" />
					</span>
				</div>
			</q:true>
			<q:false>
				<div class="np-message-warning">
					<span>
						<q:getCodeCommonResource targetKey="listNoRecord" />
					</span>
				</div>
			</q:false>
		</q:isActionTypeInvoke>
		</q:false>
	</q:hasListData>
</div>
