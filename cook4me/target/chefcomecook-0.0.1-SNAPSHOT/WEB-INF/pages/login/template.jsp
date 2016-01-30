<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta http-equiv="CONTENT-TYPE" content="text/html; charset=UTF-8"/>
	<meta http-equiv="PRAGMA" content="NO-CACHE"/>
	<meta http-equiv="CACHE-CONTROL" content="NO-CACHE"/>
	<meta http-equiv="EXPIRES" content="0"/>
	<link rel="SHORTCUT ICON" href="<c:url value='/ui/images/favicon.ico'/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value='/ui/css/application-stylesheet.css'/>"/>
	<script type="text/javascript" src="<c:url value='/ui/js/jquery-2.1.1.min.js'/>"></script>
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<link rel="stylesheet" href="<c:url value='/ui/css/normalize.css'/>" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:500|Dancing+Script:700|Roboto' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="<c:url value='/ui/css/welcome_screen.css'/>" />
	<link rel="shortcut icon" href="<c:url value='/ui/images/favicon.ico'/>" type="image/x-icon" />
	<script type="text/javascript" src="<c:url value='/ui/js/jquery-1.11.2.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/ui/js/cycle2.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/ui/js/jquery.leanModal.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/ui/js/jquery.scrollTo.min.js'/>"></script>
	<title><tiles:getAsString name="title" /></title>
</head>
<body>
<div id="page-layout">
	<div id="header-panel">
		<tiles:insertAttribute name="header"/>
	</div>
	<div id="body-panel">
		<tiles:insertAttribute name="body"/>
	</div>
	<div id="footer-panel">
		<tiles:insertAttribute name="footer"/>
	</div>	
</div>
</body>
</html>