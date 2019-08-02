<%--
    Document   : host
    Created on : Jul 13, 2019, 5:32:23 PM
    Author     : DaL
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html amp>
    <head>
        <!-- Site made with 8b Website Builder v0.0.0.0, https://8b.com -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="8b v0.0.0.0, 8b.com">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
        <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
        <meta name="description" content="">
        <title>Host</title>

        <link rel="canonical" href="host.html">
        <style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style>
        <noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
        <link href="https://fonts.googleapis.com/css?family=Gilda+Display:400" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

        <style amp-custom>div,span,h1,h2,h3,h4,p,a,ul,li{font: inherit;}*{box-sizing: border-box;outline: none;}*:focus{outline: none;}body{position: relative;font-style: normal;line-height: 1.5;color: #000000;}section{background-color: #ffffff;background-position: 50% 50%;background-repeat: no-repeat;background-size: cover;overflow: hidden;padding: 30px 0;}section,.container{position: relative;word-wrap: break-word;}h1,h2,h3,h4{margin: 0;padding: 0;}p,li{letter-spacing: 0.5px;line-height: 1.7;}ul,p{margin-bottom: 0;margin-top: 0;}a{cursor: pointer;}a,a:hover{text-decoration: none;}h1,h2,h3,h4,.display-1,.display-2,.display-4,.display-5,.display-7{word-break: break-word;word-wrap: break-word;}strong{font-weight: bold;}body{height: auto;min-height: 100vh;}.mbr-section-title{margin: 0;padding: 0;font-style: normal;line-height: 1.2;width: 100%;}.mbr-section-subtitle{line-height: 1.3;width: 100%;}.mbr-text{font-style: normal;line-height: 1.6;width: 100%;}.btn{text-align: center;position: relative;margin: .4rem .8rem;font-weight: 700;border-width: 2px;border-style: solid;font-style: normal;white-space: normal;transition: all .2s ease-in-out,box-shadow 2s ease-in-out;display: inline-flex;align-items: center;justify-content: center;word-break: break-word;line-height: 1.5;letter-spacing: 1px;}.gallery-img-wrap amp-img{height: 100%;}.icons-list a{margin-right: 1rem;}.icons-list a:last-child{margin-right: 0;}amp-image-lightbox a.control{position: absolute;width: 32px;height: 32px;right: 48px;top: 32px;z-index: 1000;}amp-image-lightbox a.control .close{position: relative;}amp-image-lightbox a.control .close:before,amp-image-lightbox a.control .close:after{position: absolute;left: 15px;content: ' ';height: 33px;width: 2px;background-color: #fff;}amp-image-lightbox a.control .close:before{transform: rotate(45deg);}amp-image-lightbox a.control .close:after{transform: rotate(-45deg);}.mbr-white{color: #ffffff;}.align-center{text-align: center;}@media (max-width: 767px){.align-center{text-align: center;}}.mbr-bold{font-weight: 700;}.mbr-section-btn{margin-left: -.8rem;margin-right: -.8rem;font-size: 0;}nav .mbr-section-btn{margin-left: 0rem;margin-right: 0rem;}.btn .mbr-iconfont,.btn.btn-sm .mbr-iconfont{cursor: pointer;margin-right: 0.5rem;}.mbr-overlay{bottom: 0;left: 0;position: absolute;right: 0;top: 0;z-index: 0;}section.menu{min-height: 70px;}.menu-container{display: flex;justify-content: space-between;align-items: center;min-height: 70px;}@media (max-width: 991px){.menu-container{max-width: 100%;padding: 0 2rem;}}@media (max-width: 767px){.menu-container{padding: 0 1rem;}}.navbar{z-index: 100;width: 100%;}.navbar-fixed-top{position: fixed;top: 0;}.navbar-brand{display: flex;align-items: center;word-break: break-word;z-index: 1;}@media (max-width: 767px){.navbar-logo amp-img{max-height: 55px;max-width: 55px;}}.navbar-caption-wrap{display: flex;}.navbar .navbar-collapse{display: flex;flex-basis: auto;align-items: center;justify-content: flex-end;}@media (max-width: 991px){.navbar .navbar-collapse{display: none;position: absolute;top: 0;right: 0;min-height: 100vh;padding: 70px 2rem 1rem;z-index: 1;}}.navbar-nav{list-style-type: none;display: flex;flex-wrap: wrap;padding-left: 0;min-width: 10rem;}@media (max-width: 991px){.navbar-nav{flex-direction: column;}}.nav-item{word-break: break-all;}.nav-link{display: flex;align-items: center;justify-content: center;}.nav-link,.navbar-caption{transition: all 0.2s;letter-spacing: 1px;}.navbar-buttons{display: flex;flex-wrap: wrap;align-items: center;justify-content: center;}@media (max-width: 991px){.navbar-buttons{flex-direction: column;}}.hamburger span{position: absolute;right: 0;width: 30px;height: 2px;border-right: 5px;}.hamburger span:nth-child(1){top: 0;transition: all .2s;}.hamburger span:nth-child(2){top: 8px;transition: all .15s;}.hamburger span:nth-child(3){top: 8px;transition: all .15s;}.hamburger span:nth-child(4){top: 16px;transition: all .2s;}.ampstart-btn.hamburger{position: absolute;top: 25px;right: 15px;margin-left: auto;width: 30px;height: 20px;background: none;border: none;cursor: pointer;z-index: 1000;}@media (min-width: 992px){.ampstart-btn,amp-sidebar{display: none;}}.close-sidebar{width: 30px;height: 30px;position: relative;cursor: pointer;background-color: transparent;border: none;}.close-sidebar span{position: absolute;left: 0;width: 30px;height: 2px;border-right: 5px;}.close-sidebar span:nth-child(1){transform: rotate(45deg);}.close-sidebar span:nth-child(2){transform: rotate(-45deg);}.builder-sidebar{position: relative;min-height: 100vh;z-index: 1030;padding: 1rem 2rem;max-width: 20rem;}.google-map{position: relative;width: 100%;}@media (max-width: 992px){.google-map{padding: 0;margin: 0;}}amp-img{width: 100%;}amp-img img{max-height: 100%;max-width: 100%;}.is-builder amp-img > a + img[async],.is-builder amp-img > a + img[decoding="async"]{display: none;}html:not(.is-builder) amp-img > a{position: absolute;top: 0;bottom: 0;left: 0;right: 0;z-index: 1;}.is-builder .temp-amp-sizer{position: absolute;}.is-builder amp-youtube .temp-amp-sizer,.is-builder amp-vimeo .temp-amp-sizer{position: static;}.is-builder section.horizontal-menu .ampstart-btn{display: none;}div.placeholder{z-index: 4;background: rgba(255,255,255,0.5);}div.placeholder svg{position: absolute;top: 50%;left: 50%;transform: translate(-50%,-50%);width: 20%;height: auto;}div.placeholder svg circle.big{animation: big-anim 3s linear infinite;}div.placeholder svg circle.small{animation: small-anim 1.5s linear infinite;}@keyframes big-anim{from{stroke-dashoffset: 900;}to{stroke-dashoffset: 0;}}@keyframes small-anim{from{stroke-dashoffset: 850;}to{stroke-dashoffset: 0;}}.placeholder-loader .amp-active > div{display: none;}.container{padding-right: 1rem;padding-left: 1rem;width: 100%;margin-right: auto;margin-left: auto;}@media (max-width: 767px){.container{max-width: 540px;}}@media (min-width: 768px){.container{max-width: 720px;}}@media (min-width: 992px){.container{max-width: 960px;}}@media (min-width: 1200px){.container{max-width: 1140px;}}.mbr-flex{display: flex;}.mbr-jc-c{justify-content: center;}.mbr-row{display: -webkit-box;display: -webkit-flex;display: -ms-flexbox;display: flex;-webkit-flex-wrap: wrap;-ms-flex-wrap: wrap;flex-wrap: wrap;margin-right: -1rem;margin-left: -1rem;}.mbr-row-reverse{flex-direction: row-reverse;}.mbr-column{flex-direction: column;}@media (max-width: 767px){.mbr-col-sm-12{-ms-flex: 0 0 100%;flex: 0 0 100%;max-width: 100%;padding-right: 1rem;padding-left: 1rem;}}@media (min-width: 768px){.mbr-col-md-12{-ms-flex: 0 0 100%;flex: 0 0 100%;max-width: 100%;padding-right: 1rem;padding-left: 1rem;}}@media (min-width: 992px){.mbr-col-lg-6{-ms-flex: 0 0 50%;flex: 0 0 50%;max-width: 50%;padding-right: 1rem;padding-left: 1rem;}.mbr-col-lg-12{-ms-flex: 0 0 100%;flex: 0 0 100%;max-width: 100%;padding-right: 1rem;padding-left: 1rem;}}.mbr-pt-2{padding-top: 1rem;}.mbr-pt-3{padding-top: 1.5rem;}.mbr-pt-4{padding-top: 2rem;}.mbr-pb-2{padding-bottom: 1rem;}.mbr-pb-4{padding-bottom: 2rem;}.mbr-px-1{padding-left: .5rem;padding-right: .5rem;}.mbr-px-2{padding-left: 1rem;padding-right: 1rem;}.mbr-m-auto{margin: auto;}amp-img{height: 100%;width: 100%;}amp-sidebar{background: transparent;}.amp-carousel-button{outline: none;border-radius: 50%;border: 10px transparent solid;transform: scale(1.5) translateY(-50%);height: 45px;width: 45px;transition: 0.4s;cursor: pointer;}.amp-carousel-button:hover{opacity: 1;}.amp-carousel-button-next{background-position: 75% 50%;}.amp-carousel-button-prev{background-position: 25% 50%;}.iconfont-wrapper{display: inline-block;width: 1.5rem;height: 1.5rem;}.amp-iconfont{vertical-align: middle;width: 1.5rem;height: 100%;font-size: 1.5rem;}body{font-family: Didact Gothic;}.display-1{font-family: 'Gilda Display',serif;font-size: 4.5rem;line-height: 1.2;}.display-2{font-family: 'Gilda Display',serif;font-size: 3.5rem;line-height: 1.2;}.display-4{font-family: 'Roboto',sans-serif;font-size: 1rem;line-height: 1.4;}.display-5{font-family: 'Gilda Display',serif;font-size: 1.9rem;line-height: 1.2;}.display-7{font-family: 'Roboto',sans-serif;font-size: 1rem;line-height: 1.6;}@media (max-width: 768px){.display-1{font-size: 3.6rem;font-size: calc( 2.225rem + (4.5 - 2.225) * ((100vw - 20rem) / (48 - 20)));line-height: calc( 1.4 * (2.225rem + (4.5 - 2.225) * ((100vw - 20rem) / (48 - 20))));}.display-2{font-size: 2.8rem;font-size: calc( 1.875rem + (3.5 - 1.875) * ((100vw - 20rem) / (48 - 20)));line-height: calc( 1.4 * (1.875rem + (3.5 - 1.875) * ((100vw - 20rem) / (48 - 20))));}.display-4{font-size: 0.8rem;font-size: calc( 1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20)));line-height: calc( 1.4 * (1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20))));}.display-5{font-size: 1.52rem;font-size: calc( 1.315rem + (1.9 - 1.315) * ((100vw - 20rem) / (48 - 20)));line-height: calc( 1.4 * (1.315rem + (1.9 - 1.315) * ((100vw - 20rem) / (48 - 20))));}.display-7{font-size: 0.8rem;font-size: calc( 1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20)));line-height: calc( 1.4 * (1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20))));}}.display-4 .mbr-iconfont-btn{font-size: 1rem;width: 1rem;}.btn{padding: 10px 30px;border-radius: 0px;}.btn-sm{padding: 10px 30px;border-radius: 0px;}.btn-white,.btn-white:active{background-color: #fcfcfc;border-color: #fcfcfc;color: #7d7d7d;}.btn-white svg,.btn-white:active svg{fill: #7d7d7d;}.btn-white:hover,.btn-white:focus{background-color: #c9c9c9;border-color: #c9c9c9;color: #7d7d7d;}.btn-white:hover svg,.btn-white:focus svg{fill: #7d7d7d;}.btn-white:disabled{color: #7d7d7d;background-color: #c9c9c9;border-color: #c9c9c9;}.btn-white:disabled svg{fill: #7d7d7d;}.amp-iconfont,.mbr-iconfont{transition: 0.2s ease-in-out;}.amp-iconfont svg,.mbr-iconfont svg{transition: fill 0.2s ease-in-out;}.amp-iconfont{color: #878787;}amp-carousel{overflow: hidden;}.mbr-section-subtitle,.btn{letter-spacing: 2px;}.mbr-section-title,.mbr-text{letter-spacing: 1px;}.line:after{content: "";display: block;margin: 1rem 0;height: 1px;width: 2rem;border-bottom: 1px solid currentColor;}.align-center .line:after{margin: 1rem auto;}.cid-rxkzcCL1o2{padding: 0;background-color: #333333;overflow: visible;}.cid-rxkzcCL1o2 .navbar{background: #333333;display: flex;}.cid-rxkzcCL1o2 .navbar-caption{line-height: inherit;}@media (max-width: 991px){.cid-rxkzcCL1o2 .navbar .navbar-collapse{background: #333333;}}.cid-rxkzcCL1o2 .nav-link{margin: .667em 1em;padding: 0;}.cid-rxkzcCL1o2 .link{color: #ffffff;}.cid-rxkzcCL1o2 .hamburger span{background-color: #efefef;}.cid-rxkzcCL1o2 .builder-sidebar{background-color: #333333;}.cid-rxkzcCL1o2 .close-sidebar:focus{outline: 2px auto #878787;}.cid-rxkzcCL1o2 .close-sidebar span{background-color: #efefef;}.cid-rxkzcCL1o2 .btn{padding: 4px 18px;}.cid-rxkzcDmVXX{padding-top: 13rem;padding-bottom: 13rem;background-image: url("${pageContext.request.contextPath}/public/nikita-tikhomirov-TdNMf8iQioQ-h_jyerpuib-1946x2315.jpg");align-items: center;display: flex;}.cid-rxkzcDmVXX .mbr-overlay{background: #232323;opacity: 0.5;}.cid-rxkzcHA7ht{padding-top: 5rem;padding-bottom: 5rem;background-color: #ffffff;}.cid-rxkzcHA7ht .contacts-block{width: 100%;}@media (max-width: 992px){.cid-rxkzcHA7ht .contacts-block{text-align: center;}}.cid-rxkzcHA7ht .icons-list .iconfont-wrapper{display: inline-block;width: 2rem;height: 2rem;}.cid-rxkzcHA7ht .icons-list .amp-iconfont{font-size: 2rem;width: 2rem;}@media (max-width: 992px){.cid-rxkzcHA7ht .first-element{padding-bottom: 2rem;}}.cid-rxkzcHA7ht .map-block{width: 100%;}@media (max-width: 992px){.cid-rxkzcHA7ht .map-block{margin-bottom: 2rem;}}.cid-rxkzcHA7ht .map-block .google-map,.cid-rxkzcHA7ht .map-block amp-iframe{min-height: 400px;width: 100%;}@media (min-width: 992px){.cid-rxkzcHA7ht .mbr-row{margin-left: -2rem;margin-right: -2rem;}.cid-rxkzcHA7ht .mbr-row > *{padding-left: 2rem;padding-right: 2rem;}}.cid-rxkzcIptDY{padding-top: 2rem;padding-bottom: 2rem;background-color: #333333;}.cid-rxkzcIptDY .link-items .fLink{width: auto;line-height: 2;}.cid-rxkzcIptDY .mbr-row{margin: 0;}.cid-rxkzcIptDY .mbr-row:nth-child(1){margin-bottom: 1rem;}[class*="-iconfont"]{display: inline-flex;}</style>

        <script async  src="https://cdn.ampproject.org/v0.js"></script>
        <script async custom-template="amp-mustache" src="https://cdn.ampproject.org/v0/amp-mustache-0.2.js"></script>
        <script async custom-element="amp-analytics" src="https://cdn.ampproject.org/v0/amp-analytics-0.1.js"></script>
        <script async custom-element="amp-sidebar" src="https://cdn.ampproject.org/v0/amp-sidebar-0.1.js"></script>
        <script async custom-element="amp-iframe" src="https://cdn.ampproject.org/v0/amp-iframe-0.1.js"></script>


    </head>
    <body><amp-sidebar id="sidebar" class="cid-rxkzcCL1o2" layout="nodisplay" side="right">
        <div class="builder-sidebar" id="builder-sidebar">
            <button on="tap:sidebar.close" class="close-sidebar">
                <span></span>
                <span></span>
            </button>


            <!-- NAVBAR ITEMS -->
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
               
                <li class="nav-item">
                    <a class="nav-link mbr-bold link display-7" href="${pageContext.request.contextPath}/host/createStorage">Create Warehouse</a>
                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link mbr-bold link display-7" href="index.html#header2-h">About Us</a>
                </li> -->
            </ul>
            <!-- NAVBAR ITEMS END -->
            <!-- SOCIAL ICON -->

            <!-- SOCIAL ICON END -->
            <!-- SHOW BUTTON -->
            <div class="navbar-buttons mbr-section-btn">
                <a class="btn btn-sm mbr-bold btn-white display-4" onclick="document.getElementById('logout').submit();">
                <span class="mbri-desktop mbr-iconfont mbr-iconfont-btn">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 32 32" fill="currentColor">

                        <path d="M16 22c0 0.368-0.298 0.667-0.667 0.667s-0.667-0.298-0.667-0.667c0-0.368 0.298-0.667 0.667-0.667s0.667 0.298 0.667 0.667zM3.333 18.667h24c0.369 0 0.667 0.297 0.667 0.667s-0.297 0.667-0.667 0.667h-24c-0.369 0-0.667-0.297-0.667-0.667s0.297-0.667 0.667-0.667zM2 2.667c-1.096 0-2 0.904-2 2v18.667c0 1.096 0.904 2 2 2h10v2.667h-2c-0.369 0-0.667 0.297-0.667 0.667s0.297 0.667 0.667 0.667h10.667c0.369 0 0.667-0.297 0.667-0.667s-0.297-0.667-0.667-0.667h-2v-2.667h10c1.096 0 2-0.904 2-2v-18.667c0-1.096-0.904-2-2-2h-26.667zM2 4h26.667c0.381 0 0.667 0.286 0.667 0.667v18.667c0 0.381-0.286 0.667-0.667 0.667h-26.667c-0.381 0-0.667-0.286-0.667-0.667v-18.667c0-0.381 0.286-0.667 0.667-0.667zM13.333 25.333h4v2.667h-4v-2.667z"></path>
                        </svg></span>Log Out</a></div>
            <!-- SHOW BUTTON END -->
        </div>
    </amp-sidebar>
    <section class="menu1 menu horizontal-menu cid-rxkzcCL1o2" id="menu1-18">

        <!-- <div class="menu-wrapper"> -->
        <nav class="navbar navbar-dropdown navbar-expand-lg navbar-fixed-top">
            <div class="menu-container container">
                <!-- SHOW LOGO -->
                <div class="navbar-brand">

                    <span class="navbar-caption-wrap">
                        <a class="navbar-caption mbr-bold link display-7" href="#top">SuitCase-${username}</a>
                    </span>
                </div>
                <!-- SHOW LOGO END -->
                <!-- COLLAPSED MENU -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <!-- NAVBAR ITEMS -->
                    <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                       
                        <li class="nav-item">
                            <a class="nav-link mbr-bold link display-7" href="${pageContext.request.contextPath}/host/createStorage"> Add Warehouse</a>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link mbr-bold link display-7" href="index.html#header2-h">About Us</a>
                        </li> -->
                    </ul>
                    <!-- NAVBAR ITEMS END -->
                    <!-- SOCIAL ICON -->

                    <!-- SOCIAL ICON END -->
                    <!-- SHOW BUTTON -->
                    <div class="navbar-buttons mbr-section-btn">
                        <a class="btn btn-sm mbr-bold btn-white display-4" onclick="document.getElementById('logout').submit();">
                            <span class="mbri-desktop mbr-iconfont mbr-iconfont-btn">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 32 32" fill="currentColor">

                                <path d="M16 22c0 0.368-0.298 0.667-0.667 0.667s-0.667-0.298-0.667-0.667c0-0.368 0.298-0.667 0.667-0.667s0.667 0.298 0.667 0.667zM3.333 18.667h24c0.369 0 0.667 0.297 0.667 0.667s-0.297 0.667-0.667 0.667h-24c-0.369 0-0.667-0.297-0.667-0.667s0.297-0.667 0.667-0.667zM2 2.667c-1.096 0-2 0.904-2 2v18.667c0 1.096 0.904 2 2 2h10v2.667h-2c-0.369 0-0.667 0.297-0.667 0.667s0.297 0.667 0.667 0.667h10.667c0.369 0 0.667-0.297 0.667-0.667s-0.297-0.667-0.667-0.667h-2v-2.667h10c1.096 0 2-0.904 2-2v-18.667c0-1.096-0.904-2-2-2h-26.667zM2 4h26.667c0.381 0 0.667 0.286 0.667 0.667v18.667c0 0.381-0.286 0.667-0.667 0.667h-26.667c-0.381 0-0.667-0.286-0.667-0.667v-18.667c0-0.381 0.286-0.667 0.667-0.667zM13.333 25.333h4v2.667h-4v-2.667z"></path>
                                </svg></span>Log Out</a></div>
                    <!-- SHOW BUTTON END -->
                </div>
                <!-- COLLAPSED MENU END -->

                <button on="tap:sidebar.toggle" class="ampstart-btn hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
        </nav>
        <!-- AMP plug -->

        <!-- </div> -->
    </section>

    <section class="header1 cid-rxkzcDmVXX" id="header1-19">

        <div class="mbr-overlay"></div>
        <div class="container">
            <div class="mbr-row align-center">
                <div class="title-block mbr-col-sm-12 mbr-col-md-12 mbr-col-lg-12">
                    <h2 class="mbr-section-subtitle mbr-fonts-style mbr-white line mbr-pt-3 display-4">WELCOME TO</h2>

                    <h1 class="mbr-section-title mbr-fonts-style mbr-white display-1">SuitCase<br><br></h1>


                    <div class="mbr-section-btn mbr-pt-4">
                        <a class="btn btn-white display-4" href="${pageContext.request.contextPath}/host/viewMyStorages"> My-Warehouses</a></div>
                </div>
            </div>
        </div>
    </section>

    <section class="contacts3 map cid-rxkzcHA7ht" id="contacts3-1e">

        <!-- Block parameters controls (Blue "Gear" panel) -->

        <div class="container">
            <div class="title mbr-pb-4 align-center">
                <h4 class="mbr-section-subtitle mbr-lighter mbr-pt-2 mbr-fonts-style line display-4">SuitCase</h4>

                <h3 class="mbr-section-title mbr-fonts-style display-2">Contact Us</h3>
            </div>
            <div class="mbr-row main-row mbr-jc-c mbr-row-reverse">
                <div class="first-element mbr-col-md-12 mbr-col-sm-12 mbr-flex mbr-col-lg-6">
                    <div class="contacts-block mbr-flex mbr-jc-c mbr-column">
                        <h4 class="contacts-title mbr-bold mbr-fonts-style display-5"><span style="font-weight: normal;">Athens</span></h4>
                        <div class="contacts-box mbr-pt-3">
                            <p class="mbr-text contacts-text mbr-fonts-style display-7"><strong>Address:</strong> <span>105 64, Omonia 39, Αθήνα 105 64</span></p>
                            <p class="mbr-text contacts-text mbr-fonts-style mbr-pt-2 display-7"><strong>Phone:</strong> <span>211 11 11 111</span></p>
                            <p class="mbr-text contacts-text mbr-fonts-style mbr-pt-2 mbr-pb-2 display-7"><strong>E-mail:</strong> <span>bot4dal@gmail.com</span></p>
                            <div class="icons-list social mbr-pt-4">




                                <a href="https://www.youtube.com/channel/UCIl8JHjLsqZNOdgBOYC_MRQ" target="_blank">
                                    <div class="iconfont-wrapper">
                                        <span class="amp-iconfont animation-normal fa-youtube-square fa"><svg width="100%" height="100%" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg" fill="currentColor"><path d="M1047 1303v-157q0-50-29-50-17 0-33 16v224q16 16 33 16 29 0 29-49zm184-122h66v-34q0-51-33-51t-33 51v34zm-571-266v70h-80v423h-74v-423h-78v-70h232zm201 126v367h-67v-40q-39 45-76 45-33 0-42-28-6-17-6-54v-290h66v270q0 24 1 26 1 15 15 15 20 0 42-31v-280h67zm252 111v146q0 52-7 73-12 42-53 42-35 0-68-41v36h-67v-493h67v161q32-40 68-40 41 0 53 42 7 21 7 74zm251 129v9q0 29-2 43-3 22-15 40-27 40-80 40-52 0-81-38-21-27-21-86v-129q0-59 20-86 29-38 80-38t78 38q21 29 21 86v76h-133v65q0 51 34 51 24 0 30-26 0-1 .5-7t.5-16.5v-21.5h68zm-451-824v156q0 51-32 51t-32-51v-156q0-52 32-52t32 52zm533 713q0-177-19-260-10-44-43-73.5t-76-34.5q-136-15-412-15-275 0-411 15-44 5-76.5 34.5t-42.5 73.5q-20 87-20 260 0 176 20 260 10 43 42.5 73t75.5 35q137 15 412 15t412-15q43-5 75.5-35t42.5-73q20-84 20-260zm-755-651l90-296h-75l-51 195-53-195h-78q7 23 23 69l24 69q35 103 46 158v201h74v-201zm289 81v-130q0-58-21-87-29-38-78-38-51 0-78 38-21 29-21 87v130q0 58 21 87 27 38 78 38 49 0 78-38 21-27 21-87zm181 120h67v-370h-67v283q-22 31-42 31-15 0-16-16-1-2-1-26v-272h-67v293q0 37 6 55 11 27 43 27 36 0 77-45v40zm503-304v960q0 119-84.5 203.5t-203.5 84.5h-960q-119 0-203.5-84.5t-84.5-203.5v-960q0-119 84.5-203.5t203.5-84.5h960q119 0 203.5 84.5t84.5 203.5z"></path></svg></span>
                                    </div>
                                </a><a href="https://www.facebook.com/8bsite/" target="_blank">
                                    <div class="iconfont-wrapper">
                                        <span class="amp-iconfont animation-normal fa-facebook-square fa"><svg width="100%" height="100%" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg" fill="currentColor"><path d="M1376 128q119 0 203.5 84.5t84.5 203.5v960q0 119-84.5 203.5t-203.5 84.5h-188v-595h199l30-232h-229v-148q0-56 23.5-84t91.5-28l122-1v-207q-63-9-178-9-136 0-217.5 80t-81.5 226v171h-200v232h200v595h-532q-119 0-203.5-84.5t-84.5-203.5v-960q0-119 84.5-203.5t203.5-84.5h960z"></path></svg></span>
                                    </div>
                                </a><a href="https://www.linkedin.com/company/8b" target="_blank">
                                    <div class="iconfont-wrapper">
                                        <span class="amp-iconfont animation-normal fa-linkedin-square fa"><svg width="100%" height="100%" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg" fill="currentColor"><path d="M365 1414h231v-694h-231v694zm246-908q-1-52-36-86t-93-34-94.5 34-36.5 86q0 51 35.5 85.5t92.5 34.5h1q59 0 95-34.5t36-85.5zm585 908h231v-398q0-154-73-233t-193-79q-136 0-209 117h2v-101h-231q3 66 0 694h231v-388q0-38 7-56 15-35 45-59.5t74-24.5q116 0 116 157v371zm468-998v960q0 119-84.5 203.5t-203.5 84.5h-960q-119 0-203.5-84.5t-84.5-203.5v-960q0-119 84.5-203.5t203.5-84.5h960q119 0 203.5 84.5t84.5 203.5z"></path></svg></span>
                                    </div>
                                </a><a href="https://twitter.com/8bsite" target="_blank">
                                    <div class="iconfont-wrapper">
                                        <span class="amp-iconfont animation-normal fa-twitter-square fa"><svg width="100%" height="100%" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg" fill="currentColor"><path d="M1408 610q-56 25-121 34 68-40 93-117-65 38-134 51-61-66-153-66-87 0-148.5 61.5t-61.5 148.5q0 29 5 48-129-7-242-65t-192-155q-29 50-29 106 0 114 91 175-47-1-100-26v2q0 75 50 133.5t123 72.5q-29 8-51 8-13 0-39-4 21 63 74.5 104t121.5 42q-116 90-261 90-26 0-50-3 148 94 322 94 112 0 210-35.5t168-95 120.5-137 75-162 24.5-168.5q0-18-1-27 63-45 105-109zm256-194v960q0 119-84.5 203.5t-203.5 84.5h-960q-119 0-203.5-84.5t-84.5-203.5v-960q0-119 84.5-203.5t203.5-84.5h960q119 0 203.5 84.5t84.5 203.5z"></path></svg></span>
                                    </div>
                                </a></div>
                        </div>
                    </div>
                </div>
                <div class="map-block mbr-col-md-12 mbr-col-sm-12 mbr-jc-c mbr-flex mbr-m-auto mbr-column mbr-col-lg-6">
                    <div class="google-map"><amp-iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDlqUgrubRDixmu6OnRsHrqa1XpJBGnlKQ&amp;q=place_id:ChIJJxUbNzq9oRQRZBed8So2FMg" height="400" layout="fill" sandbox="allow-scripts allow-same-origin                                 allow-popups" frameborder="0" class="placeholder-loader">
                            <div placeholder="" class="placeholder">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 300">
                                <circle class="big" fill="none" stroke="#c2e0e0" stroke-width="3" stroke-dasharray="230" stroke-dashoffset="230" cx="150" cy="150" r="145"></circle>
                                <circle class="small" fill="none" stroke="#c2e0e0" stroke-width="3" stroke-dasharray="212" cx="150" cy="150" r="135"></circle>
                                </svg></div>
                        </amp-iframe></div>

                </div>
            </div>
        </div>
    </section>

    <section class="footer1 cid-rxkzcIptDY" id="footer1-1f">


        <div class="footer-container container mbr-row-reverse">
            <div class="mbr-row link-items mbr-jc-c mbr-fonts-style display-7">


                <p class="mbr-text fLink mbr-px-1"></p><p class="mbr-text fLink mbr-px-1"></p><p class="mbr-text fLink mbr-px-1"></p></div>
            <div class="copyright mbr-px-2 mbr-flex mbr-jc-c">
                <p class="mbr-text mbr-fonts-style mbr-white align-center display-7">© <span>2019</span> <span>SuitCase</span></p>
            </div>
        </div>
    </section>
   
    <c:url var="logoutUrl" value="/j_spring_security_logout" />
<form action="${logoutUrl}" id="logout" method="post">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
</form>



</body>
</html>








<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello ${id}!</h1>
        <a href="${pageContext.request.contextPath}/host/insertCity">Insert City</a>
        <a href="${pageContext.request.contextPath}/host/createStorage">Create Storage</a>
        <a href="${pageContext.request.contextPath}/host/viewCities">View Cities</a><br>
        <a href="${pageContext.request.contextPath}/host/viewMyStorages">View My Storages</a><br>
<c:url var="logoutUrl" value="/j_spring_security_logout" />
<form action="${logoutUrl}" id="logout" method="post">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
</form>
<a href="#" onclick="document.getElementById('logout').submit();">Logout</a>

</body>
</html>-->
