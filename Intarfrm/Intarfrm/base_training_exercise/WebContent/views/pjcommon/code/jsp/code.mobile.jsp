<%@ page pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q"%>
<q:pageSetting/>
<q:codeIdReplace>
<div data-role="main" class="ui-content np-content">
    <form id="code--@codeId">
        <div data-role="header" data-position="fixed" data-tap-toggle="false" class="np-header">
            <ul class="np-header-group np-left">
                <li>
                    <a class="np-icon np-icon-close ifm-code-close-button" href="javascript:void(0);"></a>
                </li>
            </ul>
            <span class="np-header-title"><q:codeResource targetKey="F-caption"/></span>
        </div>
        <div data-role="content">
            <input name="__RequestVerificationToken" type="hidden" value="<q:verificationKey/>">
            <input name="__qi" type="hidden" value="<q:formBeanKey/>">
            <jsp:include page="${_codeJspUrl}" flush="true"/>
        </div>
    </form>
    <script type="text/javascript" src="../views/codes/@codeId/intarfrm-code-@codeId.js"></script>
</div>
</q:codeIdReplace>