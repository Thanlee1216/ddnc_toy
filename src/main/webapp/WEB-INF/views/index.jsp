<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src="http://stephenpontes.com/misc/permanent/jquery.flexslider-min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.flexslider.js"></script>

<div id="wrap">

    <div id="main-slider" class="flexslider">
<%--        <div class="flex-viewport" style="overflow: hidden; position: relative;">--%>
            <ul class="slides" style="width: 1000%; transition-duration: 0s; transform: translate3d(-990px, 0px, 0px);">
                <li style='background-position: center center; background-size: cover; background-image: url("/resources/img/test/test1.jpg"); width: 990px; margin-right: 0px; float: left; display: block;'
                    class="sect3 clone" aria-hidden="true">
                    <a href="#" class="slide-img backl3"></a>
                </li>
                <li style='background-position: center center; background-size: cover; background-image: url("/resources/img/test/test2.jpg"); width: 990px; margin-right: 0px; float: left; display: block;'
                    class="sect1 flex-active-slide" data-thumb-alt="">
                    <a href="#" class="slide-img backl1"></a>
                    <a href="#section1" class="scroll show">
                        Go Best Product view
                    </a>
                </li>
                <li style='background-position: center center; background-size: cover; background-image: url("/resources/img/test/test3.jpg"); width: 990px; margin-right: 0px; float: left; display: block;'
                    class="sect2" data-thumb-alt="">
                    <a href="#" class="slide-img backl2"></a>
                    <a href="#section2" class="scroll show">
                        Go New Product view
                    </a>
            </ul>
<%--        </div>--%>
        <ol class="flex-control-nav flex-control-paging">
            <li><a href="#" class="flex-active">1</a></li>
<%--            <li><a href="#">2</a></li>--%>
<%--            <li><a href="#">3</a></li>--%>
        </ol>
        <ul class="flex-direction-nav">
            <li class="flex-nav-prev"><a class="flex-prev" href="#">Previous</a></li>
            <li class="flex-nav-next"><a class="flex-next" href="#">Next</a></li>
        </ul>
    </div>
    <div class="test2">
        <div id="contents">
            <%--            큰 foreach--%>

            <div id="section1"
                 class="xans-element- xans-product xans-product-listmain-1 xans-product-listmain xans-product-1 ec-base-product"><!--
        $count = 20
            ※ 상품진열갯수를 설정하는 변수입니다. 설정하지 않을 경우, 최대 200개의 상품이 진열 됩니다.
            ※ 진열된 상품이 많으면, 쇼핑몰에 부하가 발생할 수 있습니다.
        $basket_result = /product/add_basket.html
        $basket_option = /product/basket_option.html
    -->
                <div class="title main_list_title">
                    <h2>
                        <span>BEST PRODUCT</span>
                        <span style="display: none;"><img src="" alt="BEST PRODUCT"></span>
                    </h2>
                </div>
                <ul class="prdList grid5">
                    <%--                    작은 foreach--%>
                    <li id="anchorBoxId_5068" class="xans-record-">
                        <div class="thumbnail">
                            <div class="prdImg">
                                <a href=""
                                   name="anchorBoxName_5068"><img
                                        src="//basebabi.com/web/product/medium/202201/d9455b0d3e558d1116376d2359f86300.jpg"
                                        onmouseover="this.src='//basebabi.com/web/product/big/202201/503d80cce9a952c4aa9a8ee2f85be068.jpg'"
                                        onmouseout="this.src='//basebabi.com/web/product/medium/202201/d9455b0d3e558d1116376d2359f86300.jpg'"
                                        id="eListPrdImage5068_2" alt="SENTI ROUND BLOAFER"></a>

                            </div>
                            <div class="icon">
                                <div class="promotion"></div>

                            </div>
                        </div>
                        <div class="description">
                            <span class="chk"><input type="checkbox"
                                                     class="ProductCompareClass xECPCNO_5068 displaynone"></span>
                            <strong class="name"><a href="/product/senti-round-bloafer/5068/category/1/display/2/"
                                                    class=""><span class="title displaynone"><span
                                    style="font-size:13px;color:#222222;">상품명</span> :</span> <span
                                    style="font-size:13px;color:#222222;">SENTI ROUND BLOAFER</span></a></strong>
                            <ul class="xans-element- xans-product xans-product-listitem-1 xans-product-listitem xans-product-1 spec">
                                <li class=" xans-record-">
                                    <strong class="title displaynone"><span
                                            style="font-size:12px;color:#555555;">판매가</span> :</strong> <span
                                        style="font-size:12px;color:#555555;">KRW 44,500</span><span
                                        id="span_product_tax_type_text" style=""> </span></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>


        </div>

        <div id="footer" style="margin:0px auto 0;">
            <div class="footer_inner">


                <div class="xans-element- xans-layout xans-layout-footer">
                    <div class="cust03">
                        <ul class="leftmenu">
                            <li class="left"><a href="/index.html">HOME</a></li>

                            <li class="left"><a href="/member/agreement.html">AGREEMENT</a></li>
                            <li class="left"><a href="/shopinfo/guide.html">GUIDE</a></li>
                            <li class="left"><a href="/member/privacy.html">PRIVACY POLICY </a></li>


                        </ul>
                        <div class="utilMenu_sns snscate">
                            <ul>
                                <li><a href="//instagram.com/basebabi_official/" class="snsl1 show" target="_blank"><i
                                        class="xi-instagram"></i></a></li> <!--왼쪽 소스에서 a href="여기에 변경될 링크주소를 기입해주세요"-->
                                <li><a href="#" class="snsl2" target="_blank"><i class="xi-facebook"></i></a></li>
                                <!--왼쪽 소스에서 a href="여기에 변경될 링크주소를 기입해주세요"-->
                                <li><a href="#" class="snsl3" target="_blank"><i class="xi-naver"></i></a></li>
                                <!--왼쪽 소스에서 a href="여기에 변경될 링크주소를 기입해주세요"-->
                                <li><a href="#" class="snsl4" target="_blank"><i class="xi-kakaotalk"></i></a></li>
                                <!--왼쪽 소스에서 a href="여기에 변경될 링크주소를 기입해주세요"-->
                                <li><a href="#" class="snsl5" target="_blank"><i class="xi-youtube-play"></i></a></li>
                                <!--왼쪽 소스에서 a href="여기에 변경될 링크주소를 기입해주세요"-->
                            </ul>
                        </div>
                    </div>
                </div>


            </div>
        </div>


    </div>
</div>

<script>
    $('#main-slider').flexslider({
        animation: "slide",
    });

    $('#reviews-slider').flexslider({
        animation: "slide",
        itemWidth: 200,
        itemMargin: 1,
        minItems: 3,
        maxItems: 9,
        move: 0,
    });
</script>

<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top - 150}, 500);
        });
    });
</script>

