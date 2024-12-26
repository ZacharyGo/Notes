<%@ page pageEncoding="utf-8"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0" />
<title><q:getResource targetKey="F-formcaption" /></title>
<link href="<q:webRootName/>/views/np/pc/style/np/reset.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<q:webRootName/>/views/np/pc/style/jquery-ui/jquery-ui.min.css" />
<link rel="stylesheet"
	href="<q:webRootName/>/views/np/pc/style/jquery-ui/jquery-ui.diff.css" />
<link rel="stylesheet"
	href="<q:webRootName/>/views/np/pc/style/np/np.css" type="text/css">
<link rel="stylesheet"
	href="<q:webRootName/>/views/np/pc/style/ifm-np.css" type="text/css" />
<script src="<q:webRootName/>/views/pjcommon/js/jquery-1.11.2.min.js"></script>
<script
	src="<q:webRootName/>/views/pjcommon/js/jquery-ui-1.11.2/jquery-ui.min.js"></script>
<script src="<q:webRootName/>/views/pjcommon/js/globalize.min.js"></script>
<script src="<q:webRootName/>/views/np/pc/js/jquery-ui-extend.js"></script>
<script src="<q:webRootName/>/views/pjcommon/js/<q:getJsHelperName/>"></script>
<script src="<q:webRootName/>/views/pjcommon/js/intarfrm-skeleton.js"></script>
<script src="<q:webRootName/>/views/np/common/js/np.js"></script>
</head>
<q:pageSetting />
<body>
	<noscript>
		<style>
#form--content {
	display: none;
}

#form--dialog {
	display: none;
}

#codereference--dialog {
	display: none;
}

#load--dialog {
	display: none;
}
</style>
		<div style="margin: 15px; font-size: medium">
			<q:getProgramCommonResource targetKey="javaScriptRequired" />
		</div>
	</noscript>
	<% //----- タイトル表示 ----- %>
	<div id="form--content" class="np-main">
		<jsp:include page="${jspUrl}" flush="true" />
	</div>
	<div id="form--dialog"></div>
	<div id="codereference--dialog"></div>
	<div id="load--dialog"></div>
	<q:loadFormInfo />
	<q:formJs />
	<q:controlInfo />
</body>
</html>

