<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<title>ALong Vision</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/responsive.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/touchTouch.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/kwicks-slider.css" type="text/css" media="screen">
<script src="js/jquery.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script src="js/jquery.kwicks-1.5.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/touchTouch.jquery.js"></script>
<script>
if ($(window).width() > 1024) {
    document.write("<" + "script src='js/jquery.preloader.js'></" + "script>");
}
</script>
<script>
jQuery(window).load(function () {
    $x = $(window).width();
    if ($x > 1024) {
        jQuery("#content .row").preloader();
    }
    jQuery('.magnifier').touchTouch();
    jQuery('.spinner').animate({
        'opacity': 0
    }, 1000, 'easeOutCubic', function () {
        jQuery(this).css('display', 'none')
    });
});
</script>
<!--[if lt IE 8]>
<div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/img/upgrade.jpg"border="0"alt=""/></a></div>  
<![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<!--<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" href="css/docs.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">

<![endif]-->
</head>
<body>
<div class="spinner"></div>
<!-- header start -->
<s:include value="common/header.jsp"></s:include>
<%--<header>--%>
  <%--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/icon.png">--%>
  <%--<link rel="shortcut icon" href="img/icon.png">--%>
  <%--<div class="container clearfix">--%>
    <%--<div class="row">--%>
      <%--<div class="span12">--%>
        <%--<div class="navbar navbar_">--%>
          <%--<div class="container">--%>
            <%--<h1 class="brand brand_"><a href="index.html"><img alt="" src="img/logo.png"> </a></h1>--%>
            <%--<a class="btn btn-navbar btn-navbar_" data-toggle="collapse" data-target=".nav-collapse_">Menu <span class="icon-bar"></span> </a>--%>
            <%--<div class="nav-collapse nav-collapse_  collapse">--%>
              <%--<ul class="nav sf-menu">--%>
                <%--<li class="active"><a href="index.html">Home</a></li>--%>
                <%--<li><a href="work.html">Work</a></li>--%>
                <%--<li><a href="blog.html">MicroBlog</a></li>--%>
                <%--<li class="sub-menu"><a href="process.html">Process</a>--%>
                  <%--<ul>--%>
                    <%--<li><a href="javascript:;">Process 01</a></li>--%>
                    <%--<li><a href="javascript:;">Process 02</a></li>--%>
                    <%--<li><a href="javascript:;">Process 03</a></li>--%>
                  <%--</ul>--%>
                <%--</li>--%>
                <%--<li><a href="contact.html">Contact</a></li>--%>
              <%--</ul>--%>
            <%--</div>--%>
          <%--</div>--%>
        <%--</div>--%>
      <%--</div>--%>
    <%--</div>--%>
  <%--</div>--%>
<%--</header>--%>
<div class="bg-content">
  <div class="container">
    <div class="row">
      <div class="span12">
        <!-- slider -->
        <div class="flexslider">
          <ul class="slides">
            <li> <img src="img/l1.jpg" alt=""> </li>
            <li> <img src="img/l2.jpg" alt=""> </li>
            <li> <img src="img/l3.jpg" alt=""> </li>
            <li> <img src="img/l4.jpg" alt=""> </li>
            <li> <img src="img/l5.jpg" alt=""> </li>
          </ul>
        </div>
        <span id="responsiveFlag"></span>
        <div class="block-slogan">
          <h2>ALong Vision!</h2>
          <div>
            <p>Dream what you want to dream; go where you want to go; be what you want to be, because you have only one life and one chance to do all the things you want to do.</p>
            <p style="text-align:center; padding-top:20px;"><a href="javascript:;" class="btn btn-1">ALong Vision!</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- content -->
  <div id="content" class="content-extra">
    <div class="ic"></div>
    <div class="row-1">
      <div class="container">
        <div class="row">
          <article class="span12">
            <h4>Our Works</h4>
          </article>
          <div class="clear"></div>
          <ul class="portfolio clearfix">
            <li class="box"><a href="img/work/wd1.jpg" class="magnifier" ><img alt="" src="img/work/ws1.jpg"></a></li>
            <li class="box"><a href="img/work/2.jpg" class="magnifier" ><img alt="" src="img/work/2.jpg"></a></li>
            <li class="box"><a href="img/work/3.jpg" class="magnifier" ><img alt="" src="img/work/3.jpg"></a></li>
            <li class="box"><a href="img/work/4.jpg" class="magnifier" ><img alt="" src="img/work/4.jpg"></a></li>
            <li class="box"><a href="img/work/5.jpg" class="magnifier" ><img alt="" src="img/work/5.jpg"></a></li>
            <li class="box"><a href="img/work/6.jpg" class="magnifier" ><img alt="" src="img/work/6.jpg"></a></li>
            <li class="box"><a href="img/work/7.jpg" class="magnifier" ><img alt="" src="img/work/7.jpg"></a></li>
            <li class="box"><a href="img/work/8.jpg" class="magnifier" ><img alt="" src="img/work/8.jpg"></a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="row-2">
      <div class="container">
        <h3> A man is not old as long as he is seeking something.</h3>
        <h3>A man is not old until regrets take the place of dreams.</h3>
        <p>You have to believe in yourself . That's the secret of success.</p>
        <a href="javascript:;" class="btn btn-1">ALong Vision!</a> </div>
    </div>
    <div class="row-1">
      <div class="container">
        <div class="row">
          <article class="span12">
            <h4>Micro Blog</h4>
          </article>
          <ul class="thumbnails thumbnails-1">
            <li class="span3">
              <div class="thumbnail thumbnail-1">
                <h3>Web Design</h3>
                <img  src="img/blog-featured-01.jpg" alt="">
                <section> <a href="javascript:;">
                  <h3>At vero eos et accusamus et iusto </h3>
                  </a>
                  <div class="meta">
                    <time datetime="2012-11-09" class="date-1"><i class="icon-calendar"></i> 9.11.2012</time>
                    <div class="name-author"><i class="icon-user"></i> <a href="javascript:;">Admin</a></div>
                    <a href="javascript:;" class="comments"><i class="icon-comment"></i> 7 comments</a> </div>
                  <div class="clear"></div>
                  <p>Vivamus sollicitudin libero auctor arcu pulvinar commodo.</p>
                  <a href="javascript:;" class="btn btn-1">Read More</a> </section>
              </div>
            </li>
            <li class="span3">
              <div class="thumbnail thumbnail-1">
                <h3>Graphics</h3>
                <img  src="img/blog-featured-02.jpg" alt="">
                <section> <a href="javascript:;">
                  <h3>Deleniti atque corrupti quos</h3>
                  </a>
                  <div class="meta">
                    <time datetime="2012-11-09" class="date-1"><i class="icon-calendar"></i> 9.11.2012</time>
                    <div class="name-author"><i class="icon-user"></i> <a href="javascript:;">Admin</a></div>
                    <a href="javascript:;" class="comments"><i class="icon-comment"></i> 4 comments</a> </div>
                  <div class="clear"></div>
                  <p>Vestibulum volutpat urna sed sapien vehicula varius.</p>
                  <a href="javascript:;" class="btn btn-1">Read More</a> </section>
              </div>
            </li>
            <li class="span3">
              <div class="thumbnail thumbnail-1">
                <h3>Social Media</h3>
                <img  src="img/blog-featured-03.jpg" alt="">
                <section> <a href="javascript:;">
                  <h3>Similique sunt in culpa qui officia</h3>
                  </a>
                  <div class="meta">
                    <time datetime="2012-11-09" class="date-1"><i class="icon-calendar"></i> 9.11.2012</time>
                    <div class="name-author"><i class="icon-user"></i> <a href="javascript:;">Admin</a></div>
                    <a href="javascript:;" class="comments"><i class="icon-comment"></i> 9 comments</a> </div>
                  <div class="clear"></div>
                  <p>Pellentesque mi justo, laoreet non bibendum non, auctor imperdiet eros.</p>
                  <a href="javascript:;" class="btn btn-1">Read More</a> </section>
              </div>
            </li>
            <li class="span3">
              <div class="thumbnail thumbnail-1">
                <h3 class="title-1 extra">Photography</h3>
                <img  src="img/blog-featured-04.jpg" alt="">
                <section> <a href="javascript:;">
                  <h3>Similique sunt in culpa qui officia</h3>
                  </a>
                  <div class="meta">
                    <time datetime="2012-11-09" class="date-1"><i class="icon-calendar"></i> 9.11.2012</time>
                    <div class="name-author"><i class="icon-user"></i> <a href="javascript:;">Admin</a></div>
                    <a href="javascript:;" class="comments"><i class="icon-comment"></i> 1 comment</a> </div>
                  <div class="clear"></div>
                  <p>Vestibulum volutpat urna sed sapien vehicula varius.</p>
                  <a href="javascript:;" class="btn btn-1">Read More</a> </section>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <article class="span6">
          <h3>Shortly about us</h3>
          <div class="wrapper">
            <figure class="img-indent"><img src="img/about.jpg " alt=""></figure>
            <div class="inner-1 overflow extra">
              <div class="txt-1">Mauris scelerisque odio quis leo viverra ac porttitor sem blandit. Sed tincidunt mattis varius. Nunc sodales ipsum nisl, eget lacinia nibh.</div>
              Cras lacus tortor, tempus vitae porta nec, hendrerit id dolor. Nam volutpat gravida porta. Suspendisse turpis nibh, volutpat. </div>
          </div>
        </article>
        <article class="span6">
          <h3>Some quick links</h3>
          <div class="wrapper">
            <ul class="list list-pad">
              <li><a href="http://photo.poco.cn/">POCO社区</a></li>
              <li><a href="http://www.nphoto.net/">新摄影</a></li>
              <li><a href="http://www.fengniao.com/">蜂鸟网</a></li>
              <li><a href="http://dp.pconline.com.cn/">太平洋摄影部落</a></li>

            </ul>
            <ul class="list list-pad">
              <li><a href="http://www.cphoto.net/">中国摄影在线</a></li>
              <li><a href="http://www.pop-photo.com.cn/">大众摄影网</a></li>
              <li><a href="http://www.peoplephoto.com/">人民摄影</a></li>
              <li><a href="http://www.dili360.com/">中国国家地理</a></li>

            </ul>
            <ul class="list list-pad">
              <li><a href="http://www.unpcn.com/">国家摄影</a></li>
              <li><a href="http://www.ccsph.com/">现代摄影网</a></li>
              <li><a href="http://www.chinesefolklore.com/">中国民俗网</a></li>
              <li><a href="http://www.china-fpa.org/">中国民俗摄影协会</a></li>
            </ul>
            <ul class="list">
              <li><a href="http://www.rologo.com/">标志共和国</a></li>
              <li><a href="http://www.namoc.org/">中国美术馆</a></li>
              <li><a href="http://shijue.me">视觉中国</a></li>
              <li><a href="http://www.cpanet.org.cn/">中国摄影家协会</a></li>

            </ul>
          </div>
        </article>
      </div>
    </div>
  </div>
</div>
<!-- footer -->
<footer>
  <div class="container clearfix">
    <ul class="list-social pull-right">
      <li><a class="icon-1" href="javascript:;"></a></li>
      <li><a class="icon-2" href="javascript:;"></a></li>
      <li><a class="icon-3" href="javascript:;"></a></li>
      <li><a class="icon-4" href="javascript:;"></a></li>
    </ul>
    <div class="privacy pull-left">&copy; 2014 | <a href="http://www.alongvision.com">ALong Vision</a> | website by <a href="mailto:tianshengwocaibiyouyong.qianjinsanjinhuanfulai@hotmail.com">MaQiang</a></div>
  </div>
</footer>
<script src="js/bootstrap.js"></script>
</body>
</html>