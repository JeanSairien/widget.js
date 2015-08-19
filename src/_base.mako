<%!
    title = ""
    description = ""
    sideContent = False
%>
<!DOCTYPE html>

<html class="progdesign">
<head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <title>${self.attr.title}</title>
    <meta name="description" content="${self.attr.title}">
    <meta name="author" content="Nicolas Vanhoren">

    <%block name="favicons">
    <link rel="shortcut icon" href="/common/static/img/icon.ico">
    </%block>
    <link rel="stylesheet" type="text/css" href="/static/style.css" />
    <%block name="head">
    </%block>
</head>
<body>

    <%block name="beforeContent">
    </%block>

    <div class="wrap">

        <div class="container ${'' if self.attr.sideContent else 'noMenu'}">

            <div class="row">
                % if self.attr.sideContent:
                <div class="leftAreaCell col-md-3">
                    <%block name="sideContent">
                    </%block>
                </div>
                %endif
                <div class="rightAreaCell ${'col-md-9' if self.attr.sideContent else 'col-md-12'}">
                    <%block name="headerMainContent">
                    </%block>
                    <%block name="mainContent">
                    </%block>
                </div>
            </div>

        </div>

    </div>

    <footer class="footerRow container">
        <div class="row">
            <div class="col-md-12 text-center">
                Copyright © 2013 <a href="https://github.com/nicolas-van">Nicolas Vanhoren</a><br />
                All Rights Reserved
            </div>
        </div>
    </footer>

    <%block name="afterContent">
    </%block>

    <!--[if lt IE 8]>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/chrome-frame/1/CFInstall.min.js"></script>
    <script>
        // You may want to place these lines inside an onload handler
        CFInstall.check({
        mode: "overlay"
        });
    </script>
    <![endif]-->
</body>
</html>
