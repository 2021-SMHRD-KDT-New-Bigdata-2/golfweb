<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link href="style.css" rel="stylesheet" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다
        -->
    <title>메인</title>

    <!-- 부트스트랩 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]> <script
        src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> <script
        src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> <![endif]-->

    <style>
        #carousel-golf-generic {
            height: 600px;
            width: 600px;
        }

        #carousel-golf-generic {
            top: 50%;
            left: 50%;
            transform: translate(-50%, -10%);
            overflow: hidden;
        }

        input[type="checkbox"] {
            width: 30px;
            /*Desired width*/
            height: 30px;
            /*Desired height*/
            cursor: pointer;
        }

        p {
            animation-duration: 3s;
            animation-name: slidein;
            animation-iteration-count: infinite;
        }

        .text_box {
            font-size: 3rem;
            text-align: center;
        }

        .blink {
            animation: blink 1s infinite;
            font-size: 3.5rem;
        }

        @keyframes blink {
            to {
                opacity: 0;
            }
        }

        body,
        html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            background-color: white;
        }

        #menu {
            height: 100%;
            position: fixed;
            background-color: #4f5f6f;
            width: 300px;
            transition: 1000ms all cubic-bezier(0.19, 1, 0.22, 1);
            transform: translateX(-100%);
            left: 60px;
        }

        #menu.expanded {
            transform: translateX(0%);
            left: 0px;
        }

        .menu-inner {
            width: 100%;
            height: 100%;
            position: relative;
        }

        #blob {
            top: 0;
            z-index: -1;
            right: 60px;
            transform: translateX(100%);
            height: 100%;
            position: absolute;
        }

        #blob-path {
            height: 100%;
            fill: #4f5f6f;
        }

        .hamburger {
            right: 20px;
            position: absolute;
            width: 20px;
            height: 20px;
            margin-top: -10px;
        }

        .hamburger .line {
            width: 100%;
            height: 4px;
            background-color: #fff;
            position: absolute;
        }

        .hamburger .line:nth-child(2) {
            top: 50%;
            margin-top: -2px;
        }

        .hamburger .line:nth-child(3) {
            bottom: 0;
        }

        h1 {
            position: fixed;
            right: 0;
            margin: 0;
        }

        ul {
            padding: 0;
            list-style: none;
            width: 80%;
            margin-left: 10%;
            position: absolute;
            top: 10px;
        }

        ul li {
            color: #fff;
            font-family: sans-serif;
            padding: 20px 0;
        }

        h2 {
            position: absolute;
            left: 50%;
            color: #fff;
            margin: 0;
            font-size: 16px;
            font-family: sans-serif;
            font-weight: 100;
        }
    </style>


</head>

<body>
    <div id="menu">
        <div class="hamburger">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
        </div>
        <div class="menu-inner">

            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li style="font-size: 20px;"><a href="" style="color:white">Menu Item</a></li>
                <li style="font-size: 20px;"><a href="" style="color:white">Menu Item</a></li>
                <li style="font-size: 20px;"><a href="" style="color:white">Menu Item</a></li>
                <li style="font-size: 20px;"><a href="" style="color:white">Menu Item</a></li>
                <li style="font-size: 20px;"><a href="" style="color:white">Menu Item</a></li>
                <li style="font-size: 20px;"><a href="" style="color:white">Menu Item</a></li>
            </ul>
        </div>



        <svg version="1.1" id="blob" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <path id="blob-path" d="M60,500H0V0h60c0,0,20,172,20,250S60,900,60,500z" />
        </svg>
    </div>


    <h2></h2>
    <header>
        <hgroup>
            <nav class="navbar navbar-default">
                <div class="container-fluid" style="height: 90px; background-color:#d7dde4;">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">

                        <a class="navbar-brand" href="mainpage.html" src="" alt="브랜드 마크"
                            style="font-size: 20px; padding:30px 15px">브랜드 마크</a>

                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <form class="navbar-form navbar-right" role="search" style="margin-top:25px;">
                            <div class="form-group" style="height:12px;">
                                <a href="#" style="color:#4f5f6f">로그인</a>
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="form-group" style="height:12px;">
                                <a href="#" style="color:#4f5f6f">회원가입</a>
                            </div>

                        </form>
                        <form class="navbar-form navbar-right" role="search" style="margin-top:12px;">
                            <div class="form-group" style="height:0px;">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <div class="form-group" style="height:0px;">
                                <button type="submit" class="btn btn-default">검색</button>
                            </div>

                        </form>


                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>
        </hgroup>
    </header>
    <nav>
        <ul>

        </ul>
    </nav>
    <section>
        <article>
            <header>
                <br><br><br>
            </header>
            <section>
                <div class="text_box">
                    <span class="text"></span><span class="blink">|</span>
                </div>


                <br><br><br><br><br>
                <!-- main-container -->
                <div class="container main-container">
                    <div class="center-block">
                        <div id="carousel-golf-generic" class="carousel slide" data-ride="carousel"
                            style="width: 1200px; height: 700px;">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-golf-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-golf-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-golf-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-golf-generic" data-slide-to="3"></li>
                                <li data-target="#carousel-golf-generic" data-slide-to="4"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox" style="width: 1200px; height: 700px;">
                                <div class="item active">
                                    <center><img src="resources/images/1.jpg" alt="..." data-pause=""></center>
                                    <div class="carousel-caption" style="color: black"></div>

                                </div>
                                <div class="item">
                                    <center><img src="resources/images/1.jpg" alt="..." data-pause=""></center>
                                    <div class="carousel-caption"></div>
                                </div>
                                <div class="item">
                                    <center><img src="static/images/1.jpg" alt="..." data-pause=""></center>
                                    <div class="carousel-caption"></div>
                                </div>
                                <div class="item">
                                    <center><img src="static/images/1.jpg" alt="..." data-pause=""></center>
                                    <div class="carousel-caption"></div>
                                </div>
                                <div class="item">
                                    <center><img src="static/images/1.jpg" alt="..." data-pause=""></center>
                                    <div class="carousel-caption"></div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-golf-generic" role="button"
                                data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-golf-generic" role="button"
                                data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <p>
                <center>
                    <h3>가장 혁신적인 AI 골프 분석 서비스 OOO</h3>
                </center>
            </p>
        </article>
        <article>
            <header>
                <center><img src="/resources/static/images/1.jpg" alt="..." class="img-rounded"></center>
            </header>
            <section>
                <p>
                    <center>
                        <br><br><br><br>
                        <h3>나의 자세와 궤적을 한번에! 한눈에! 빠르게!</h3>
                    </center>
                </p>
            </section>
        </article>

        <article>
            <header>
                <center><img src="static/images/1.jpg" alt="..." class="img-rounded"></center>
            </header>
            <section>
                <p>
                    <center>
                        <h3>각 구분 동작에 따라 코칭을 한눈에!</h3>
                    </center>
                </p>
                <p>
                    <center>
                        <h3>자세를 클릭하면 구분동작까지!</h3>
                    </center>
                </p>
            </section>
        </article>

        <article>
            <header>
                <center><img src="static/images/1.jpg" alt="..." class="img-rounded"></center>
            </header>
            <section>
                <p>
                    <center>
                        <h3>백스윙 자세에서 오른팔이 너무 많이 굽혀져 있습니다. </h3>
                    </center>
                </p>
                <p>
                    <center>
                        <h3>오른팔을 멀리 가져가면서 백스윙을 해보세요!</h3>
                    </center>
                </p>
                <p>
                    <center>
                        <h3> 어드레스를 클릭해보세요!</h3>
                    </center>
                </p>
            </section>
        </article>

        <article>
            <header>
                <center><img src="static/images/1.jpg" alt="..." class="img-rounded"></center>
            </header>
            <section>
                <p>
                    <center>
                        <h3>어드레스자세에서 머리가 너무 많이 움직입니다. 의식하고 고정해주세요.</h3>
                    </center>
                </p>
                <p>
                    <center>
                        <h3>임팩트 자세에서 머리가 공을 향하지 않습니다.</h3>
                    </center>
                </p>
            </section>
        </article>


    </section>


    <!-- 사이드 툴바-->
    <aside class="sidebar">

    </aside>
    <footer>Footer Information</footer>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script>
        /* ---------------------------------------------------------*/
        const content = "내 이름은  앙징,         천재입니다";
        const text = document.querySelector(".text");
        let i = 0;

        function typing() {
            if (i < content.length) {
                let txt = content.charAt(i);
                text.innerHTML += txt;
                i++;
            }
        }
        setInterval(typing, 200)


        $(window).load(function () {
            var height = window.innerHeight,
                x = 0, y = height / 2,
                curveX = 10,
                curveY = 0,
                targetX = 0,
                xitteration = 0,
                yitteration = 0,
                menuExpanded = false;

            blob = $('#blob'),
                blobPath = $('#blob-path'),

                hamburger = $('.hamburger');

            $(this).on('mousemove', function (e) {
                x = e.pageX;

                y = e.pageY;
            });

            $('.hamburger, .menu-inner').on('mouseenter', function () {
                $(this).parent().addClass('expanded');
                menuExpanded = true;
            });

            $('.menu-inner').on('mouseleave', function () {
                menuExpanded = false;
                $(this).parent().removeClass('expanded');
            });

            function easeOutExpo(currentIteration, startValue, changeInValue, totalIterations) {
                return changeInValue * (-Math.pow(2, -10 * currentIteration / totalIterations) + 1) + startValue;
            }

            var hoverZone = 150;
            var expandAmount = 20;

            function svgCurve() {
                if ((curveX > x - 1) && (curveX < x + 1)) {
                    xitteration = 0;
                } else {
                    if (menuExpanded) {
                        targetX = 0;
                    } else {
                        xitteration = 0;
                        if (x > hoverZone) {
                            targetX = 0;
                        } else {
                            targetX = -(((60 + expandAmount) / 100) * (x - hoverZone));
                        }
                    }
                    xitteration++;
                }

                if ((curveY > y - 1) && (curveY < y + 1)) {
                    yitteration = 0;
                } else {
                    yitteration = 0;
                    yitteration++;
                }

                curveX = easeOutExpo(xitteration, curveX, targetX - curveX, 100);
                curveY = easeOutExpo(yitteration, curveY, y - curveY, 100);

                var anchorDistance = 200;
                var curviness = anchorDistance - 40;

                var newCurve2 = "M60," + height + "H0V0h60v" + (curveY - anchorDistance) + "c0," + curviness + "," + curveX + "," + curviness + "," + curveX + "," + anchorDistance + "S60," + (curveY) + ",60," + (curveY + (anchorDistance * 2)) + "V" + height + "z";

                blobPath.attr('d', newCurve2);

                blob.width(curveX + 60);

                hamburger.css('transform', 'translate(' + curveX + 'px, ' + curveY + 'px)');

                $('h2').css('transform', 'translateY(' + curveY + 'px)');
                window.requestAnimationFrame(svgCurve);
            }

            window.requestAnimationFrame(svgCurve);

        });
    </script>
</body>

</html>