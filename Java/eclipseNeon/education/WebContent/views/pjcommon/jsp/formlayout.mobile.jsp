<%@ page pageEncoding="utf-8" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=320; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0;" />
        <title><q:getResource targetKey="F-formcaption"/></title>
        <link href="<q:webRootName/>/views/np/mobile/style/np/reset.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="<q:webRootName/>/views/np/mobile/style/jquery-mobile/jquery-mobile.theme.min.css" type="text/css" />
        <link rel="stylesheet" href="<q:webRootName/>/views/np/mobile/style/jquery-mobile/jquery.mobile.structure-1.4.5.min.css" type="text/css" />
        <link rel="stylesheet" href="<q:webRootName/>/views/np/mobile/style/jquery-mobile/jquery-mobile.diff.min.css" type="text/css" />
        <link rel="stylesheet" href="<q:webRootName/>/views/np/mobile/style/np/np.mobile.css" type="text/css" />
        <link rel="stylesheet" href="<q:webRootName/>/views/np/mobile/style/ifm-np-mobile.css" type="text/css" />
		
        <script src="<q:webRootName/>/views/pjcommon/js/jquery-1.11.2.min.js"></script>
		<script src="<q:webRootName/>/views/pjcommon/style/jquery.mobile-1.4.5/jquery.mobile-1.4.5.min.js"></script>
        <script src="<q:webRootName/>/views/pjcommon/js/globalize.min.js"></script>
        <script src="<q:webRootName/>/views/np/mobile/js/jquery-mobile-extend.js"></script>
        <script src="<q:webRootName/>/views/pjcommon/js/<q:getJsHelperName/>"></script>
        <script src="<q:webRootName/>/views/pjcommon/js/intarfrm-skeleton.js"></script>
        <script src="<q:webRootName/>/views/np/common/js/np.js"></script>
</head>
<q:pageSetting/>
<body>
<noscript>
    <style>
        #form--content { display: none; }
        #form--dialog { display: none; }
        #codereference--dialog { display: none; }
    </style>
    <div style="margin: 15px; font-size: medium">
        <q:getProgramCommonResource targetKey="javaScriptRequired"/>
    </div>
</noscript>
<% //----- タイトル表示 ----- %>
<div data-role="page" id="form--content" class="np-main">
	<jsp:include page="${jspUrl}" flush="true"/>
</div>
<div data-role="page" id="form--dialog"></div>
<div data-role="page" id="codereference--dialog" class="np-main"></div>
<div class="ifm-loader-background"></div>
<q:loadFormInfo/>
<q:formJs/>
<q:controlInfo/>
</body>
</html>

