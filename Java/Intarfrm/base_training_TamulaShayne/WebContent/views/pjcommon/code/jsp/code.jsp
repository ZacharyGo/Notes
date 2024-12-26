<%@ page pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q"%>
<q:pageSetting />
<q:codeIdReplace>
	<form id="code--@codeId">
		<input name="__RequestVerificationToken" type="hidden"
			value="<q:verificationKey/>"> <input name="__qi"
			type="hidden" value="<q:formBeanKey/>">
		<jsp:include page="${_codeJspUrl}" flush="true" />
	</form>
	<script type="text/javascript"
		src="../views/codes/@codeId/intarfrm-code-@codeId.js"></script>
</q:codeIdReplace>