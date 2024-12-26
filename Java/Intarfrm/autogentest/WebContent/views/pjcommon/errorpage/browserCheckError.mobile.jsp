<%@ page pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tempuri.org/intarfrm/tags" prefix="q" %>

<html>
	<head>
		<title><q:getProgramCommonResource targetKey="errorBrowserCheck"/></title>
		<meta name="viewport" content="width=320; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0;" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<link href="<q:webRootName/>/views/np/mobile/style/np/reset.css" rel="stylesheet" type="text/css" />
		<link href="<q:webRootName/>/views/np/mobile/style/np/np.mobile.css" rel="stylesheet" type="text/css" />
        <link href="<q:webRootName/>/views/np/mobile/style/np-systemerror-mobile.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div data-role="page" class="np-main">
			<div class="np-system-content">
				<div data-role="header" class="np-header">
                </div>
                <div role="main" class="ui-content np-system-content">
					<div class="np-content-header np-system-error">
						<span class="np-content-title"><q:getProgramCommonResource targetKey="errorBrowserCheck"/></span>
        			</div>
					<div class="np-content-body np-system-error">
						<span><q:getProgramCommonResource targetKey="errorBrowserCheckDesc"/></span>
        			</div>
				</div>
			</div>
		</div>
	</body>
</html>
