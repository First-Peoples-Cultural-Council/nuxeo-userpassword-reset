<html>
<head>
  <title>
     <@block name="title">
     WebEngine Project
     </@block>
  </title>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
  <link rel="stylesheet" href="${skinPath}/css/bootstrap/css/bootstrap.min.css" type="text/css" media="screen" charset="utf-8">
  <!--<link rel="stylesheet" href="${skinPath}/css/site.css" type="text/css" media="screen" charset="utf-8">-->
  <link rel="shortcut icon" href="${skinPath}/image/favicon.gif" />
  <@block name="stylesheets" />
  <@block name="header_scripts" />
</head>

<body style="margin:0px 0px 0px 0px;">

<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12">
			<@block name="content">The Content</@block>
		</div>
	</div>
</div>

</body>
</html>
