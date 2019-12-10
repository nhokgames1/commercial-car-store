<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
<head>
    [@cms.page /]
      
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${content.description!content.abstract!}">
    <meta name="keywords" content="${content.keywords!}">
    <meta name="author" content="">
    <title>${content.windowTitle!content.navigationTitle!content.title!content.@name}</title>
  
    ${resfn.css("/my-own-modules.*css")}
</head>
  

<body>
  [@cms.area name="navigation"/]

    <div>
               
        [#-- ****** page content ****** --]
        
          
        <!-- Main Area -->
        [@cms.area name="main" /]
        [@cms.area name="slider" /]

        <!-- End: Main Area-->
        [@cms.area name="aboutUs" /]
        [@cms.area name="features" /]

    </div>
      
    ${resfn.cachedJs(["/my-own-modules.*jquery.*js", "/my-own-modules.*bootstrap.*js","/my-own-modules.slick.*js"]) }
             <script src="${ctx.contextPath}/.resources/my-own-modules/webresources/slick.js"></script>
             <script src="${ctx.contextPath}/.resources/my-own-modules/webresources/custom.js"></script>


</body>
<footer>
[@cms.area name="footer"/]

</footer>
<!-- Footer -->
<!-- End: Footer -->
</html>