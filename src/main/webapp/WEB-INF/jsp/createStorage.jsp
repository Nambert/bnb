<%--
    Document   : createStorage
    Created on : Jul 14, 2019, 11:52:17 AM
    Author     : DaL
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


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
        <title>Storage</title>

        <link rel="canonical" href="createStorage.html">
        <style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style>
        <noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
        <link href="https://fonts.googleapis.com/css?family=Gilda+Display:400" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

        <style amp-custom>div,span,h1,h2,p,a,ul,li,input{font: inherit;}*{box-sizing: border-box;outline: none;}*:focus{outline: none;}body{position: relative;font-style: normal;line-height: 1.5;color: #000000;}section{background-color: #ffffff;background-position: 50% 50%;background-repeat: no-repeat;background-size: cover;overflow: hidden;padding: 30px 0;}section,.container{position: relative;word-wrap: break-word;}h1,h2{margin: 0;padding: 0;}p,li{letter-spacing: 0.5px;line-height: 1.7;}ul,p{margin-bottom: 0;margin-top: 0;}a{cursor: pointer;}a,a:hover{text-decoration: none;}h1,h2,.display-2,.display-4,.display-5,.display-7{word-break: break-word;word-wrap: break-word;}strong{font-weight: bold;}input:-webkit-autofill,input:-webkit-autofill:hover,input:-webkit-autofill:focus,input:-webkit-autofill:active{transition-delay: 9999s;transition-property: background-color,color;}body{height: auto;min-height: 100vh;}.mbr-section-title{margin: 0;padding: 0;font-style: normal;line-height: 1.2;width: 100%;}.mbr-section-subtitle{line-height: 1.3;width: 100%;}.mbr-text{font-style: normal;line-height: 1.6;width: 100%;}.btn{text-align: center;position: relative;margin: .4rem .8rem;font-weight: 700;border-width: 2px;border-style: solid;font-style: normal;white-space: normal;transition: all .2s ease-in-out,box-shadow 2s ease-in-out;display: inline-flex;align-items: center;justify-content: center;word-break: break-word;line-height: 1.5;letter-spacing: 1px;}.btn-form{padding: 1rem 2rem;}.btn-form:hover{cursor: pointer;}.gallery-img-wrap amp-img{height: 100%;}amp-image-lightbox a.control{position: absolute;width: 32px;height: 32px;right: 48px;top: 32px;z-index: 1000;}amp-image-lightbox a.control .close{position: relative;}amp-image-lightbox a.control .close:before,amp-image-lightbox a.control .close:after{position: absolute;left: 15px;content: ' ';height: 33px;width: 2px;background-color: #fff;}amp-image-lightbox a.control .close:before{transform: rotate(45deg);}amp-image-lightbox a.control .close:after{transform: rotate(-45deg);}.mbr-white{color: #ffffff;}.align-center{text-align: center;}@media (max-width: 767px){.align-center{text-align: center;}}.mbr-light{font-weight: 300;}.mbr-bold{font-weight: 700;}.mbr-section-btn{margin-left: -.8rem;margin-right: -.8rem;font-size: 0;}nav .mbr-section-btn{margin-left: 0rem;margin-right: 0rem;}.btn .mbr-iconfont,.btn.btn-sm .mbr-iconfont{cursor: pointer;margin-right: 0.5rem;}section.menu{min-height: 70px;}.menu-container{display: flex;justify-content: space-between;align-items: center;min-height: 70px;}@media (max-width: 991px){.menu-container{max-width: 100%;padding: 0 2rem;}}@media (max-width: 767px){.menu-container{padding: 0 1rem;}}.navbar{z-index: 100;width: 100%;}.navbar-fixed-top{position: fixed;top: 0;}.navbar-brand{display: flex;align-items: center;word-break: break-word;z-index: 1;}@media (max-width: 767px){.navbar-logo amp-img{max-height: 55px;max-width: 55px;}}.navbar-caption-wrap{display: flex;}.navbar .navbar-collapse{display: flex;flex-basis: auto;align-items: center;justify-content: flex-end;}@media (max-width: 991px){.navbar .navbar-collapse{display: none;position: absolute;top: 0;right: 0;min-height: 100vh;padding: 70px 2rem 1rem;z-index: 1;}}.navbar-nav{list-style-type: none;display: flex;flex-wrap: wrap;padding-left: 0;min-width: 10rem;}@media (max-width: 991px){.navbar-nav{flex-direction: column;}}.nav-item{word-break: break-all;}.nav-link{display: flex;align-items: center;justify-content: center;}.nav-link,.navbar-caption{transition: all 0.2s;letter-spacing: 1px;}.navbar-buttons{display: flex;flex-wrap: wrap;align-items: center;justify-content: center;}@media (max-width: 991px){.navbar-buttons{flex-direction: column;}}.hamburger span{position: absolute;right: 0;width: 30px;height: 2px;border-right: 5px;}.hamburger span:nth-child(1){top: 0;transition: all .2s;}.hamburger span:nth-child(2){top: 8px;transition: all .15s;}.hamburger span:nth-child(3){top: 8px;transition: all .15s;}.hamburger span:nth-child(4){top: 16px;transition: all .2s;}.ampstart-btn.hamburger{position: absolute;top: 25px;right: 15px;margin-left: auto;width: 30px;height: 20px;background: none;border: none;cursor: pointer;z-index: 1000;}@media (min-width: 992px){.ampstart-btn,amp-sidebar{display: none;}}.close-sidebar{width: 30px;height: 30px;position: relative;cursor: pointer;background-color: transparent;border: none;}.close-sidebar span{position: absolute;left: 0;width: 30px;height: 2px;border-right: 5px;}.close-sidebar span:nth-child(1){transform: rotate(45deg);}.close-sidebar span:nth-child(2){transform: rotate(-45deg);}.builder-sidebar{position: relative;min-height: 100vh;z-index: 1030;padding: 1rem 2rem;max-width: 20rem;}div[submit-success]{padding: 1rem;margin-bottom: 1rem;}div[submit-error]{padding: 1rem;margin-bottom: 1rem;}amp-img{width: 100%;}amp-img img{max-height: 100%;max-width: 100%;}.is-builder amp-img > a + img[async],.is-builder amp-img > a + img[decoding="async"]{display: none;}html:not(.is-builder) amp-img > a{position: absolute;top: 0;bottom: 0;left: 0;right: 0;z-index: 1;}.is-builder .temp-amp-sizer{position: absolute;}.is-builder amp-youtube .temp-amp-sizer,.is-builder amp-vimeo .temp-amp-sizer{position: static;}.is-builder section.horizontal-menu .ampstart-btn{display: none;}.placeholder-loader .amp-active > div{display: none;}.container{padding-right: 1rem;padding-left: 1rem;width: 100%;margin-right: auto;margin-left: auto;}@media (max-width: 767px){.container{max-width: 540px;}}@media (min-width: 768px){.container{max-width: 720px;}}@media (min-width: 992px){.container{max-width: 960px;}}@media (min-width: 1200px){.container{max-width: 1140px;}}.mbr-flex{display: flex;}.mbr-jc-c{justify-content: center;}.mbr-row{display: -webkit-box;display: -webkit-flex;display: -ms-flexbox;display: flex;-webkit-flex-wrap: wrap;-ms-flex-wrap: wrap;flex-wrap: wrap;margin-right: -1rem;margin-left: -1rem;}.mbr-row-reverse{flex-direction: row-reverse;}@media (min-width: 992px){.mbr-col-lg-7{-ms-flex: 0 0 58.333333%;flex: 0 0 58.333333%;max-width: 58.333333%;padding-right: 1rem;padding-left: 1rem;}}.mbr-px-1{padding-left: .5rem;padding-right: .5rem;}.mbr-px-2{padding-left: 1rem;padding-right: 1rem;}form .fieldset{display: flex;justify-content: center;flex-wrap: wrap;align-items: center;}.field{flex-basis: auto;flex-grow: 1;flex-shrink: 1;padding: 0.5rem;}@media (max-width: 768px){.field{flex-basis: 100%;}}amp-img{height: 100%;width: 100%;}amp-sidebar{background: transparent;}.amp-carousel-button{outline: none;border-radius: 50%;border: 10px transparent solid;transform: scale(1.5) translateY(-50%);height: 45px;width: 45px;transition: 0.4s;cursor: pointer;}.amp-carousel-button:hover{opacity: 1;}.amp-carousel-button-next{background-position: 75% 50%;}.amp-carousel-button-prev{background-position: 25% 50%;}.amp-iconfont{vertical-align: middle;width: 1.5rem;height: 100%;font-size: 1.5rem;}body{font-family: Didact Gothic;}div[submit-success]{background: #365c9a;}div[submit-error]{background: #b2ccd2;}.display-2{font-family: 'Gilda Display',serif;font-size: 3.5rem;line-height: 1.2;}.display-4{font-family: 'Roboto',sans-serif;font-size: 1rem;line-height: 1.4;}.display-5{font-family: 'Gilda Display',serif;font-size: 1.9rem;line-height: 1.2;}.display-7{font-family: 'Roboto',sans-serif;font-size: 1rem;line-height: 1.6;}@media (max-width: 768px){.display-2{font-size: 2.8rem;font-size: calc( 1.875rem + (3.5 - 1.875) * ((100vw - 20rem) / (48 - 20)));line-height: calc( 1.4 * (1.875rem + (3.5 - 1.875) * ((100vw - 20rem) / (48 - 20))));}.display-4{font-size: 0.8rem;font-size: calc( 1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20)));line-height: calc( 1.4 * (1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20))));}.display-5{font-size: 1.52rem;font-size: calc( 1.315rem + (1.9 - 1.315) * ((100vw - 20rem) / (48 - 20)));line-height: calc( 1.4 * (1.315rem + (1.9 - 1.315) * ((100vw - 20rem) / (48 - 20))));}.display-7{font-size: 0.8rem;font-size: calc( 1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20)));line-height: calc( 1.4 * (1rem + (1 - 1) * ((100vw - 20rem) / (48 - 20))));}}.display-4 .mbr-iconfont-btn{font-size: 1rem;width: 1rem;}.btn{padding: 10px 30px;border-radius: 0px;}.btn-sm{padding: 10px 30px;border-radius: 0px;}.btn-primary,.btn-primary:active{background-color: #878787;border-color: #878787;color: #ffffff;}.btn-primary:hover,.btn-primary:focus{background-color: #545454;border-color: #545454;color: #ffffff;}.btn-primary:disabled{color: #ffffff;background-color: #545454;border-color: #545454;}.btn-white,.btn-white:active{background-color: #fcfcfc;border-color: #fcfcfc;color: #7d7d7d;}.btn-white svg,.btn-white:active svg{fill: #7d7d7d;}.btn-white:hover,.btn-white:focus{background-color: #c9c9c9;border-color: #c9c9c9;color: #7d7d7d;}.btn-white:hover svg,.btn-white:focus svg{fill: #7d7d7d;}.btn-white:disabled{color: #7d7d7d;background-color: #c9c9c9;border-color: #c9c9c9;}.btn-white:disabled svg{fill: #7d7d7d;}.amp-iconfont,.mbr-iconfont{transition: 0.2s ease-in-out;}.amp-iconfont svg,.mbr-iconfont svg{transition: fill 0.2s ease-in-out;}.amp-iconfont{color: #878787;}amp-carousel{overflow: hidden;}.mbr-section-subtitle,.btn{letter-spacing: 2px;}.mbr-section-title,.mbr-text{letter-spacing: 1px;}.cid-r6Jkkv9bhz{padding: 0;background-color: #333333;overflow: visible;}.cid-r6Jkkv9bhz .navbar{background: #333333;display: flex;}.cid-r6Jkkv9bhz .navbar-caption{line-height: inherit;}@media (max-width: 991px){.cid-r6Jkkv9bhz .navbar .navbar-collapse{background: #333333;}}.cid-r6Jkkv9bhz .nav-link{margin: .667em 1em;padding: 0;}.cid-r6Jkkv9bhz .link{color: #ffffff;}.cid-r6Jkkv9bhz .hamburger span{background-color: #efefef;}.cid-r6Jkkv9bhz .builder-sidebar{background-color: #333333;}.cid-r6Jkkv9bhz .close-sidebar:focus{outline: 2px auto #878787;}.cid-r6Jkkv9bhz .close-sidebar span{background-color: #efefef;}.cid-r6Jkkv9bhz .btn{padding: 4px 18px;}.cid-rxEXZWtlrw{padding-top: 75px;padding-bottom: 75px;overflow: visible;background-image: url("${pageContext.request.contextPath}/public/57e8d0434b55ac14ea89857dc22e3-h_jyp1pysb-1790x1150.jpg");}.cid-rxEXZWtlrw .mbr-section-subtitle{padding-top: 1rem;}.cid-rxEXZWtlrw .title-wrap{padding-bottom: 3rem;}.cid-rxEXZWtlrw .fieldset > *{width: 100%;margin-bottom: .5rem;}.cid-rxEXZWtlrw .fieldset > *.field{display: flex;padding: 0;}.cid-rxEXZWtlrw .fieldset > *.field input{width: 100%;}.cid-rxEXZWtlrw input{padding: 0.5rem;color: #767676;background: #ffffff;border: 1px solid #cccccc;margin: .5rem;}.cid-rxEXZWtlrw input::-webkit-input-placeholder{color: #767676;}.cid-rxEXZWtlrw input::-moz-placeholder{color: #767676;}.cid-rxEXZWtlrw input:-moz-placeholder{color: #767676;}.cid-rxEXZWtlrw input:-ms-input-placeholder{color: #767676;}.cid-rxEXZWtlrw input::-ms-input-placeholder{color: #767676;}.cid-rxEXZWtlrw input.timepicker::-webkit-inner-spin-button{color: #767676;}@media (max-width: 767px){.cid-rxEXZWtlrw .field{flex-direction: column;margin-bottom: 0;}}.cid-rxEXZWtlrw amp-date-picker{display: flex;}.cid-rxEXZWtlrw .mbr-section-title{color: #000000;}.cid-rxEXZWtlrw .mbr-section-subtitle{color: #000000;}.cid-rxEXZWtlrw .field{flex: 1 1 100%;}.cid-rxEXZWtlrw .date-picker-wrap{width: 100%;}.cid-rxEXZWtlrw .mbr-section-title{color: #000000;}.cid-rxEXZWtlrw .mbr-section-subtitle{color: #000000;}.cid-rxEXZWtlrw .mbr-section-title{color: #fdfdfd;}.cid-r7cc24KT3B{padding-top: 2rem;padding-bottom: 2rem;background-color: #333333;}.cid-r7cc24KT3B .link-items .fLink{width: auto;line-height: 2;}.cid-r7cc24KT3B .mbr-row{margin: 0;}.cid-r7cc24KT3B .mbr-row:nth-child(1){margin-bottom: 1rem;}[class*="-iconfont"]{display: inline-flex;}</style>

        <script async  src="https://cdn.ampproject.org/v0.js"></script>
        <script async custom-template="amp-mustache" src="https://cdn.ampproject.org/v0/amp-mustache-0.2.js"></script>
        <script async custom-element="amp-analytics" src="https://cdn.ampproject.org/v0/amp-analytics-0.1.js"></script>
        <script async custom-element="amp-sidebar" src="https://cdn.ampproject.org/v0/amp-sidebar-0.1.js"></script>
        <script async custom-element="amp-date-picker" src="https://cdn.ampproject.org/v0/amp-date-picker-0.1.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    </head>
    <body><amp-sidebar id="sidebar" class="cid-r6Jkkv9bhz" layout="nodisplay" side="right">
        <div class="builder-sidebar" id="builder-sidebar">
            <button on="tap:sidebar.close" class="close-sidebar">
                <span></span>
                <span></span>
            </button>


            <!-- NAVBAR ITEMS -->
            /
            <!-- NAVBAR ITEMS END -->
            <!-- SOCIAL ICON -->

            <!-- SOCIAL ICON END -->
            <!-- SHOW BUTTON -->
            <div class="navbar-buttons mbr-section-btn"><a class="btn btn-sm mbr-bold btn-white display-4" href="#info3-f"><span class="mbri-desktop mbr-iconfont mbr-iconfont-btn"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 32 32" fill="currentColor">

                        <path d="M16 22c0 0.368-0.298 0.667-0.667 0.667s-0.667-0.298-0.667-0.667c0-0.368 0.298-0.667 0.667-0.667s0.667 0.298 0.667 0.667zM3.333 18.667h24c0.369 0 0.667 0.297 0.667 0.667s-0.297 0.667-0.667 0.667h-24c-0.369 0-0.667-0.297-0.667-0.667s0.297-0.667 0.667-0.667zM2 2.667c-1.096 0-2 0.904-2 2v18.667c0 1.096 0.904 2 2 2h10v2.667h-2c-0.369 0-0.667 0.297-0.667 0.667s0.297 0.667 0.667 0.667h10.667c0.369 0 0.667-0.297 0.667-0.667s-0.297-0.667-0.667-0.667h-2v-2.667h10c1.096 0 2-0.904 2-2v-18.667c0-1.096-0.904-2-2-2h-26.667zM2 4h26.667c0.381 0 0.667 0.286 0.667 0.667v18.667c0 0.381-0.286 0.667-0.667 0.667h-26.667c-0.381 0-0.667-0.286-0.667-0.667v-18.667c0-0.381 0.286-0.667 0.667-0.667zM13.333 25.333h4v2.667h-4v-2.667z"></path>
                        </svg></span>BOOK NOW</a></div>
            <!-- SHOW BUTTON END -->
        </div>
    </amp-sidebar>
    <section class="menu1 menu horizontal-menu cid-r6Jkkv9bhz" id="menu1-1q">

        <!-- <div class="menu-wrapper"> -->
        <nav class="navbar navbar-dropdown navbar-expand-lg navbar-fixed-top">
            <div class="menu-container container">
                <!-- SHOW LOGO -->
                <div class="navbar-brand">

                    <span class="navbar-caption-wrap"><a class="navbar-caption mbr-bold link display-7" href="#top">SuitCase-Host</a></span>
                </div>
                <!-- SHOW LOGO END -->
                <!-- COLLAPSED MENU -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <!-- NAVBAR ITEMS -->
                    <!-- NAVBAR ITEMS END -->
                    <!-- SOCIAL ICON -->

                    <!-- SOCIAL ICON END -->
                    <!-- SHOW BUTTON -->
                    <div class="navbar-buttons mbr-section-btn">
                        <a class="btn btn-sm mbr-bold btn-white display-4" href="#info3-f">
                            <span class="mbri-desktop mbr-iconfont mbr-iconfont-btn">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 32 32" fill="currentColor">

                                <path d="M16 22c0 0.368-0.298 0.667-0.667 0.667s-0.667-0.298-0.667-0.667c0-0.368 0.298-0.667 0.667-0.667s0.667 0.298 0.667 0.667zM3.333 18.667h24c0.369 0 0.667 0.297 0.667 0.667s-0.297 0.667-0.667 0.667h-24c-0.369 0-0.667-0.297-0.667-0.667s0.297-0.667 0.667-0.667zM2 2.667c-1.096 0-2 0.904-2 2v18.667c0 1.096 0.904 2 2 2h10v2.667h-2c-0.369 0-0.667 0.297-0.667 0.667s0.297 0.667 0.667 0.667h10.667c0.369 0 0.667-0.297 0.667-0.667s-0.297-0.667-0.667-0.667h-2v-2.667h10c1.096 0 2-0.904 2-2v-18.667c0-1.096-0.904-2-2-2h-26.667zM2 4h26.667c0.381 0 0.667 0.286 0.667 0.667v18.667c0 0.381-0.286 0.667-0.667 0.667h-26.667c-0.381 0-0.667-0.286-0.667-0.667v-18.667c0-0.381 0.286-0.667 0.667-0.667zM13.333 25.333h4v2.667h-4v-2.667z"></path>
                                </svg>
                            </span>BOOK NOW</a>
                    </div>
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

    <section class="form1 cid-rxEXZWtlrw" id="form1-1s">
        <!--  -->

        <!--  -->
        <!-- Overlay -->

        <!-- Content -->
        <div class="container align-center mbr-white">
            <!-- Title -->
            <div class="title-wrap">
                <h1 class="mbr-section-title mbr-fonts-style display-2">
                    <strong>Create Your Storage</strong>
                </h1>
                <h2 class="mbr-section-subtitle mbr-fonts-style mbr-light display-5">

                </h2>
            </div>
            <!-- Forms -->
            <div class="mbr-row mbr-jc-c">
                <div data-form-type="formoid" class="mbr-col-lg-7">
                    <form:form cssClass="mbr-form" method="post" modelAttribute="storage" action="${pageContext.request.contextPath}/host/doCreateStorage">
                        <form:select cssClass="selectpicker" path="cityId">
                            <form:option value="-1">Select City</form:option>
                            <form:options items="${list}" itemLabel="name" itemValue="id" />
                        </form:select>
                        <!-- Fieldset -->
                        <div class="fieldset">
                            <!-- 1 -->

                            <div class="field" >


                            </div>

                            <!-- 2 -->
                            <div class="field" >
                                Storage Address 
                                <form:input  path="adress" />
                            </div>
                            <!-- 3 -->
                            <div class="field" >
                                POSTAL CODE
                                <form:input placeholder="Postal Code" path="postalCode" />


                            </div>
                            <!-- 4 -->
                            <div class="field" >
                                Space of Storage
                                <form:input placeholder="Space" path="space" />
                                <form:input type="hidden" path="ownerId" value="${id}" />
                            </div>
                            <!-- 5 -->
                            <div class="field" >

                            </div>
                            <!-- 6 -->

                            <!-- Button -->
                            <div class="align-center"><button type="submit" class="btn btn-form btn-primary display-4">
                                    Submit</button></div>

                        </div>
                    </form:form>
                </div>
            </div>
        </div></section>

    <section class="footer1 cid-r7cc24KT3B" id="footer1-1r">


        <div class="footer-container container mbr-row-reverse">
            <div class="mbr-row link-items mbr-jc-c mbr-fonts-style display-7">


                <p class="mbr-text fLink mbr-px-1"></p>
                <p class="mbr-text fLink mbr-px-1"></p>
                <p class="mbr-text fLink mbr-px-1"></p></div>
            <div class="copyright mbr-px-2 mbr-flex mbr-jc-c">
                <p class="mbr-text mbr-fonts-style mbr-white align-center display-7">© <span>2019</span> <span>SuitCase</span></p>
            </div>
        </div>
    </section>

</body>
</html>