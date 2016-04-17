<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="CONTENT-TYPE" content="text/html; charset=UTF-8"/>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
    <meta name="description" content="">
    <meta name="author" content="">
    <link id="favicon" rel="shortcut icon" type="image/x-icon" href="<c:url value='/ui/images/favicon.ico'/>" />
    
    <link type="text/css" rel="stylesheet" href="<c:url value='/ui/css/application-stylesheet.css'/>"/>
	
	<link href="<c:url value='/ui/css/bootstrap.min.css'/>" rel="stylesheet">
   
    <link href="<c:url value='/ui/css/owl.carousel.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/ui/css/owl.theme.default.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/ui/css/magnific-popup.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/ui/css/bootstrap-material-design.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/ui/css/ripples.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/ui/css/style.min.css'/>" rel="stylesheet">
	
	<script src="<c:url value='/ui/js/jquery.min.js'/>"></script>
    <script src="<c:url value='/ui/js/modernizr.min.js'/>"></script>
    <script src="<c:url value='/ui/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/ui/js/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='/ui/js/jquery.magnific-popup.min.js'/>"></script>
    <script src="<c:url value='/ui/js/material.min.js'/>"></script>
    <script src="<c:url value='/ui/js/ripples.min.js'/>"></script>
    <script src="<c:url value='/ui/js/isotope.pkgd.min.js'/>"></script>
    <script src="<c:url value='/ui/js/packery-mode.pkgd.js'/>"></script>
    <script src="<c:url value='/ui/js/prefixfree.min.js'/>"></script>
    <script src="<c:url value='/ui/js/script.min.js'/>"></script>
	
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