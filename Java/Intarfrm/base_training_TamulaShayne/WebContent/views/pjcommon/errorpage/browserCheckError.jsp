<%@ page pageEncoding="UTF-8"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q"%>

<html>
<head>
<title><q:getProgramCommonResource targetKey="errorBrowserCheck" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="<q:webRootName/>/views/np/pc/style/np/reset.css"
	rel="stylesheet" type="text/css" />
<link href="<q:webRootName/>/views/np/pc/style/np/np.css"
	rel="stylesheet" type="text/css" />
<link href="<q:webRootName/>/views/np/pc/style/np-systemerror.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="np-main">
		<div class="np-system-content">
			<div class="np-system-conten">
				<div class="np-content-header np-system-error">
					<span class="np-content-title"><q:getProgramCommonResource
							targetKey="errorBrowserCheck" /></span>
				</div>
				<div class="np-content-boby">
					<span><q:getProgramCommonResource
							targetKey="errorBrowserCheckDesc" /></span>
				</div>
				<div class="np-content-footer"></div>
			</div>
		</div>
	</div>
</body>
</html>