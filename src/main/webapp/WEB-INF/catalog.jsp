<%@ page import="ru.itis.inf.models.Bouquet" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Adelya
  Date: 01.11.2020
  Time: 7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Flowers</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://bootstraptema.ru/plugins/2015/bootstrap3/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://bootstraptema.ru/plugins/jquery/jquery-1.11.3.min.js"></script>
    <script src="https://bootstraptema.ru/plugins/2015/b-v3-3-6/bootstrap.min.js"></script>

    <style>
        .scroll {
            height: 10vw;
            border-bottom: none;
            width: 100%;
            overflow-y: scroll;
            overflow-x: hidden;
        }

        .card {
            height: 30vw;
        }

        .carousel {
            background-color: white;
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            height: 100px;
            width: 100px;
            outline: black;
            background-size: 100%, 100%;
            border-radius: 50%;
            background-image: none;
        }

        .carousel-control-next-icon:after {
            content: '>';
            font-size: 55px;
            color: black;
        }

        .carousel-control-prev-icon:after {
            content: '<';
            font-size: 55px;
            color: black;
        }

        a.none_link_line,
        a:hover.none_link_line,
        a:visited.none_link_line,
        a:focus.none_link_line {
            text-decoration: none;
            color: white;
        }

        .position-fixed.second_div {
            right: 0;
        }

        legend {
            border-bottom: 1px solid darkgrey;
        }

        .index, .content {
            position: relative;
        }

        .index {
            z-index: 1;
        }

        .content {
            padding-top: 80px;
        }

    </style>


</head>
<body class="bg-dark pb-5">

<div class="index">
    <nav class="navbar navbar-expand-lg navbar-dark position-fixed bg-dark pl-4 pt-3 pb-1 mb-0"
         style="background-image: url(https://10factov.net/uploads/facts/520-fact-main-840.jpg); width: 100%; z-index: initial">
        <a class="navbar-brand" href="../index.html"
           style="font-size: xx-large; font-family: Pompadur, 'Comic Sans MS', cursive;"><b><i>Flowers </i></b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav justify-content-between" style="width: 100%">
                <li class="nav-item ml-5 mr-5">
                    <a class="nav-link active" href="/Flowers_project_war/catalog"><h5><b>Каталог</b></h5></a>
                </li>
                <li class="nav-item active ml-5 mr-5">
                    <a class="nav-link active" href="/Flowers_project_war/bouquets"><h5><b>Букеты</b></h5></a>
                </li>
                <li class="nav-item ml-5 mr-5">
                    <a class="nav-link active" href="/Flowers_project_war/flowers"><h5><b>Цветы</b></h5></a>
                </li>
                <li class="nav-item ml-5 mr-5">
                    <a class="nav-link active" href="/Flowers_project_war/pots"><h5><b>Горшки</b></h5></a>
                </li>
                <li class="nav-item ml-5 mr-5">
                    <a class="nav-link active" href="/Flowers_project_war/profile"><h5><b>Личный кабинет</b></h5></a>
                </li>
                <!--            <li class="nav-item ml-5 mr-5">-->
                <!--                <a class="nav-link active" href="navbar/profile.html"><b>Вход/Регистрация</b></a>-->
                <!--            </li>-->
            </ul>
        </div>
    </nav>
</div>


<div class="content">
    <div class="row-12 ">
        <div class="col-md-9">


            <div class="pb-3">
                <h3 class="text-light text-center" id="for_carouselExampleFade1"><a class="none_link_line"
                                                                                    href="bouquets.html">Букеты</a>
                </h3>
            </div>


            <div id="carouselExampleFade1" class="carousel slide pb-0 pt-0 row"
                 data-ride="carousel">

                <a class="carousel-control-prev col-md-1" href="#carouselExampleFade1" role="button"
                   data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only bg-link-carousel">Previous</span>
                </a>

                <div class="carousel-inner col-md-10">

                    <%
                        List<Bouquet> bouquetsList = (List<Bouquet>) request.getAttribute("bouquetsList");
                        for (int i = 0; i < bouquetsList.size(); i += 3) {
                    %>
                    <% if (i == 0) { %>
                    <div class="carousel-item active">
                        <% } else { %>
                        <div class="carousel-item">
                            <%}%>
                            <div class="container text-center ">
                                <div class="text-center pl-0 pr-0 container d-flex flex-row ">

                                    <!--
                                СДЕЛАТЬ ССЫЛКОЙ
                                <%=bouquetsList.get(i).getId()%>
-->

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="resources/images/bouquets/<%=bouquetsList.get(i).getId()%>.jpg"
                                                 class="card-img-top" alt="<%=bouquetsList.get(i).getName()%>">
                                            <div class="card-body p-0">
                                                <a href="/Flowers_project_war/product?id=<%=bouquetsList.get(i).getId()%>">
                                                    <h5 class="card-title pt-1 mb-1">
                                                        <%=bouquetsList.get(i).getName()%>
                                                    </h5>
                                                </a>
                                                <div class="text-center">
                                                    <small><b>Цена:</b> <%=bouquetsList.get(i).getPrice()%>
                                                    </small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2"><%=bouquetsList.get(i).getDescription()%>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <% if (i + 1 < bouquetsList.size()) { %>

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="resources/images/bouquets/<%=bouquetsList.get(i + 1).getId()%>.jpg"
                                                 class="card-img-top" alt="<%=bouquetsList.get(i + 1).getName()%>">
                                            <div class="card-body p-0">
                                                <a href="/Flowers_project_war/product?id=<%=bouquetsList.get(i + 1).getId()%>">
                                                    <h5 class="card-title pt-1 mb-1">
                                                        <%=bouquetsList.get(i + 1).getName()%>
                                                    </h5>
                                                </a>
                                                <div class="text-center">
                                                    <small><b>Цена:</b> <%=bouquetsList.get(i + 1).getPrice()%>
                                                    </small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2"><%=bouquetsList.get(i + 1).getDescription()%>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%}%>
                                    <% if (i + 2 < bouquetsList.size()) { %>

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="resources/images/bouquets/<%=bouquetsList.get(i + 2).getId()%>.jpg"
                                                 class="card-img-top" alt="<%=bouquetsList.get(i + 2).getName()%>">
                                            <div class="card-body p-0">
                                                <a href="/Flowers_project_war/product?id=<%=bouquetsList.get(i + 2).getId()%>">
                                                    <h5 class="card-title pt-1 mb-1">
                                                        <%=bouquetsList.get(i + 2).getName()%>
                                                    </h5>
                                                </a>
                                                <div class="text-center">
                                                    <small><b>Цена:</b><%=bouquetsList.get(i + 2).getPrice()%>
                                                    </small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2"><%=bouquetsList.get(i + 2).getDescription()%>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%}%>
                                </div>
                            </div>
                        </div>
                        <%}%>

                        <!--

                        <div class="carousel-item">
                            <div class="container text-center">

                                <div class="text-center pl-0 pr-0 container d-flex flex-row ">

                                    <div class="block col-md-6 col-xl-3">
                                        <div class="card shadow" style="width: auto">
                                            <img src="https://sun9-17.userapi.com/14m8QlhZ6YsIziU3VIky3HNdwI8ul5z8VEKlGw/yVqX6qwCJd8.jpg"
                                                 class="card-img-top" alt="Black roses">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">хризантемы</h5>
                                                <div class="text-center">
                                                    <small><b>Цена:</b> 1100р</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Хризантема — цветок радости, символ солнца.
                                                        Ориентируясь на красивый
                                                        романтичный «язык цветов» можно выразить сокровенные чувства и
                                                        отношение. Важно при этом
                                                        проявить фантазию, внимание, свои эмоции и предпочтения того,
                                                        кому
                                                        предназначен букет.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3">
                                        <div class="card shadow" style="width: auto">
                                            <img src="https://sun9-76.userapi.com/9YYn8MAnkxGDGz01Lmb-Szs34f_PsBA7XeUQCg/tfXmK9cWbPk.jpg"
                                                 class="card-img-top" alt="Black roses">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">Тюльпаны</h5>
                                                <div class="text-center">
                                                    <small><b>Цена:</b> 1500р</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Тюльпаны на цветочном языке означает -
                                                        подарить
                                                        пожелания процветания,
                                                        радости и счастья. Букет тюльпанов по праву символизирует
                                                        щедрость
                                                        вашего сердца, и богатство
                                                        души, а благодаря всем своим оттенкам такой букет способен
                                                        выразить
                                                        все
                                                        Ваши эмоции.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        -->

                    </div>
                    <a class="carousel-control-next col-md-1" href="#carouselExampleFade1" role="button"
                       data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>


                <div class="pb-3">
                    <h3 class="text-light text-center" id="for_carouselExampleFade2"><a class="none_link_line"
                                                                                        href="flowers.html">Цветы</a>
                    </h3>
                </div>


                <div id="carouselExampleFade2" class="carousel slide pb-0 pt-0 row"
                     data-ride="carousel">

                    <a class="carousel-control-prev col-md-1" href="#carouselExampleFade2" role="button"
                       data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>

                    <div class="carousel-inner col-md-10">

                        <div class="carousel-item active">
                            <div class="container text-center ">


                                <div class="text-center pl-0 pr-0 container d-flex flex-row ">


                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="https://sun9-27.userapi.com/pmJtNFhMWpyQPqgzxOnb4el1FwgKkr_thn_Clg/VCO4M19YC7s.jpg"
                                                 class="card-img-top" alt="Red roses">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">Красные розы</h5>
                                                <div class="text-center">
                                                    <small><b>Длина стебля:</b> 60см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Роза 60 см имеет длину стебля от 50 до 60
                                                        см.
                                                        Красные
                                                        розы
                                                        –
                                                        воплощение любви и душевного притяжения, подаренные
                                                        любимому
                                                        человеку, розы найдут путь в его сердце и поселят там счастье и
                                                        радость</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="https://sun9-73.userapi.com/Uqr3kz04xgcTV1RyFlZRTfFW_IVxgC9kJR8V3g/zSrapdYEcf4.jpg"
                                                 class="card-img-top" alt="Red roses">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">Красные розы</h5>
                                                <div class="text-center">
                                                    <small><b>Длина стебля:</b> 70см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Роза 70 см имеет длину стебля от 60 до 70
                                                        см.
                                                        Красные
                                                        розы
                                                        –
                                                        воплощение любви и душевного притяжения, подаренные
                                                        любимому
                                                        человеку, розы найдут путь в его сердце и поселят там счастье и
                                                        радость</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="https://sun9-3.userapi.com/-0haqms3i_sMnzg2QTlHh4u7AEIIrfaqrYddHw/knsaZsXH6S4.jpg"
                                                 class="card-img-top" alt="Red roses">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">Красные розы</h5>
                                                <div class="text-center">
                                                    <small><b>Длина стебля:</b> 80см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Роза 80 см имеет длину стебля от 70 до 80
                                                        см.
                                                        Красные
                                                        розы
                                                        –
                                                        воплощение любви и душевного притяжения, подаренные
                                                        любимому
                                                        человеку, розы найдут путь в его сердце и поселят там счастье и
                                                        радость</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <div class="container text-center">

                                <div class="text-center pl-0 pr-0 container d-flex flex-row ">

                                    <div class="block col-md-6 col-xl-3">
                                        <div class="card shadow" style="width: auto">
                                            <img src="https://sun9-24.userapi.com/WyCu-pDo5DQ__m9RCd3htb29SRVYYdn-MzcsXA/SHDoGByLsaU.jpg"
                                                 class="card-img-top" alt="Black roses">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">Черные розы</h5>
                                                <div class="text-center">
                                                    <small><b>Длина стебля:</b> 60см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Роза 60 см имеет длину стебля от 50 до 60
                                                        см.
                                                        Черные
                                                        розы -
                                                        брутальные и эпатажные, будто созданы для того, чтобы
                                                        подчеркнуть необычность момента дарения. Этот загадочный цветок
                                                        воспринимается
                                                        по-разному</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3">
                                        <div class="card shadow" style="width: auto">
                                            <img src="https://sun9-63.userapi.com/iI995UnSwRY5eIaRD46dDsF93Pvf9HQ83AYdmg/a2Sm7IknmNQ.jpg"
                                                 class="card-img-top" alt="Black roses">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">Черные розы</h5>
                                                <div class="text-center">
                                                    <small><b>Длина стебля:</b> 70см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Роза 70 см имеет длину стебля от 60 до 70
                                                        см.
                                                        Черные
                                                        розы -
                                                        брутальные и эпатажные, будто созданы для того, чтобы
                                                        подчеркнуть необычность момента дарения. Этот загадочный цветок
                                                        воспринимается
                                                        по-разному</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3">
                                        <div class="card shadow" style="width: auto">
                                            <img src="https://sun9-2.userapi.com/zunN1CEm6tQPQ5d_myIh6MBs62Pe9tTuLU0ZWg/aAAITB0q3Os.jpg"
                                                 class="card-img-top" alt="Black roses">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">Черные розы</h5>
                                                <div class="text-center">
                                                    <small><b>Длина стебля:</b> 80см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Роза 80 см имеет длину стебля от 70 до 80
                                                        см.
                                                        Черные
                                                        розы -
                                                        брутальные и эпатажные, будто созданы для того, чтобы
                                                        подчеркнуть необычность момента дарения. Этот загадочный цветок
                                                        воспринимается
                                                        по-разному</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <a class="carousel-control-next col-md-1" href="#carouselExampleFade2" role="button"
                       data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>


                <div class="pb-3">
                    <h3 class="text-light text-center" id="for_carouselExampleFade3"><a class="none_link_line"
                                                                                        href="pots.html">Горшки</a>
                    </h3>
                </div>


                <div id="carouselExampleFade3" class="carousel mb-5 slide pb-0 pt-0 row"
                     data-ride="carousel">

                    <a class="carousel-control-prev col-md-1" href="#carouselExampleFade3" role="button"
                       data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>

                    <div class="carousel-inner col-md-10">

                        <div class="carousel-item active">
                            <div class="container text-center ">

                                <div class="text-center pl-0 pr-0 container d-flex flex-row ">
                                    <div class="block col-md-6 col-xl-3 text-center ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="https://sun9-2.userapi.com/y6Qf5gWXa9fbhc4ZMFmjlm1pjGrB1fX6tdLBLA/CTVYhkkPKHc.jpg"
                                                 class="card-img-top" alt="pots">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">горшок Стандарт</h5>
                                                <div class="text-center">
                                                    <small><b>Диаметр:</b> 17см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Когда хочется, чтобы горшок был просто
                                                        горшком,
                                                        или
                                                        Вам
                                                        трудно подобрать для любимого цветка нужный по форме вариант -
                                                        терракотовый
                                                        горшок будет очень кстати. Это лучшее решение для того, чтобы
                                                        подчеркнуть
                                                        красоту самого растения, к тому же горшок впишется в любой
                                                        интерьер.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow" style="width: auto">
                                            <img src="https://sun9-64.userapi.com/AalC2h7WEbK5DPiqqswynSQVGGNv3Vw0XTNM9A/gpI5wp4Z7H4.jpg"
                                                 class="card-img-top" alt="pots">
                                            <div class="card-body p-0 row-md-12">
                                                <h5 class="card-title pt-1 mb-1">горшок Бордатто</h5>
                                                <div class="text-center">
                                                    <small><b>Диаметр:</b> 14см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Горшок классической формы с обрамлённым
                                                        небольшим
                                                        округлым
                                                        бортиком краем.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="https://sun9-68.userapi.com/OKq34qprUG-NXHadHpRsOQ59zF0a4HWs8h1mwQ/Sb2I1YXaYcU.jpg"
                                                 class="card-img-top" alt="pots">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">горшок Циотолла</h5>
                                                <div class="text-center">
                                                    <small><b>Диаметр:</b> 15см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Цветочная керамическая чаша терракотового
                                                        цвета
                                                        прекрасно
                                                        подходит для цветов и вьющихся растений. Форма чаши подойдёт для
                                                        создания
                                                        цветочных композиций, в т.ч. и из суккулентов.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <div class="container text-center">

                                <div class="text-center pl-0 pr-0 container d-flex flex-row">

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="https://sun9-68.userapi.com/OKq34qprUG-NXHadHpRsOQ59zF0a4HWs8h1mwQ/Sb2I1YXaYcU.jpg"
                                                 class="card-img-top" alt="pots">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">горшок Циотолла</h5>
                                                <div class="text-center">
                                                    <small><b>Диаметр:</b> 19см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Цветочная керамическая чаша терракотового
                                                        цвета
                                                        прекрасно
                                                        подходит для цветов и вьющихся растений. Форма чаши подойдёт для
                                                        создания
                                                        цветочных композиций, в т.ч. и из суккулентов.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3">
                                        <div class="card shadow " style="width: auto">
                                            <img src="https://sun9-2.userapi.com/y6Qf5gWXa9fbhc4ZMFmjlm1pjGrB1fX6tdLBLA/CTVYhkkPKHc.jpg"
                                                 class="card-img-top" alt="pots">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">горшок Стандарт</h5>
                                                <div class="text-center">
                                                    <small><b>Диаметр:</b> 35см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Когда хочется, чтобы горшок был просто
                                                        горшком,
                                                        или
                                                        Вам
                                                        трудно подобрать для любимого цветка нужный по форме вариант -
                                                        терракотовый
                                                        горшок будет очень кстати. Это лучшее решение для того, чтобы
                                                        подчеркнуть
                                                        красоту самого растения, к тому же горшок впишется в любой
                                                        интерьер.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow" style="width: auto">
                                            <img src="https://sun9-64.userapi.com/AalC2h7WEbK5DPiqqswynSQVGGNv3Vw0XTNM9A/gpI5wp4Z7H4.jpg"
                                                 class="card-img-top" alt="pots">
                                            <div class="card-body p-0 row-md-12">
                                                <h5 class="card-title pt-1 mb-1">горшок Бордатто</h5>
                                                <div class="text-center">
                                                    <small><b>Диаметр:</b> 20см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Горшок классической формы с обрамлённым
                                                        небольшим
                                                        округлым
                                                        бортиком краем.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <div class="container text-center">

                                <div class="text-center pl-0 pr-0 container d-flex flex-row ">

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow" style="width: auto">
                                            <img src="https://sun9-64.userapi.com/AalC2h7WEbK5DPiqqswynSQVGGNv3Vw0XTNM9A/gpI5wp4Z7H4.jpg"
                                                 class="card-img-top" alt="pots">
                                            <div class="card-body p-0 row-md-12">
                                                <h5 class="card-title pt-1 mb-1">горшок Бордатто</h5>
                                                <div class="text-center">
                                                    <small><b>Диаметр:</b> 30см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Горшок классической формы с обрамлённым
                                                        небольшим
                                                        округлым
                                                        бортиком краем.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="https://sun9-68.userapi.com/OKq34qprUG-NXHadHpRsOQ59zF0a4HWs8h1mwQ/Sb2I1YXaYcU.jpg"
                                                 class="card-img-top" alt="pots">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">горшок Циотолла</h5>
                                                <div class="text-center">
                                                    <small><b>Диаметр:</b> 28см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Цветочная керамическая чаша терракотового
                                                        цвета
                                                        прекрасно
                                                        подходит для цветов и вьющихся растений. Форма чаши подойдёт для
                                                        создания
                                                        цветочных композиций, в т.ч. и из суккулентов.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block col-md-6 col-xl-3 ">
                                        <div class="card shadow " style="width: auto">
                                            <img src="https://sun9-2.userapi.com/y6Qf5gWXa9fbhc4ZMFmjlm1pjGrB1fX6tdLBLA/CTVYhkkPKHc.jpg"
                                                 class="card-img-top" alt="pots">
                                            <div class="card-body p-0">
                                                <h5 class="card-title pt-1 mb-1">горшок Стандарт</h5>
                                                <div class="text-center">
                                                    <small><b>Диаметр:</b> 23см</small>
                                                </div>
                                                <div class="scroll">
                                                    <p class="card-text p-2">Когда хочется, чтобы горшок был просто
                                                        горшком,
                                                        или
                                                        Вам
                                                        трудно подобрать для любимого цветка нужный по форме вариант -
                                                        терракотовый
                                                        горшок будет очень кстати. Это лучшее решение для того, чтобы
                                                        подчеркнуть
                                                        красоту самого растения, к тому же горшок впишется в любой
                                                        интерьер.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a class="carousel-control-next col-md-1" href="#carouselExampleFade3" role="button"
                       data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>


            <div class="col-md-3 text-center position-fixed second_div border-left border-dark pad_div2"
                 style="background-color: white; height: 100%">

                <nav id="navbar-example2" class="navbar navbar-dark" style="background-color: white;">

                    <form class="form-inline pt-4">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-primary my-2 my-sm-0" type="submit" style="color: #337ab7">Search
                        </button>
                    </form>
                    <ul class="nav nav-tabs flex-column text-center pt-2">
                        <li class="nav-item">
                            <a class="nav-link" href="#for_carouselExampleFade1">@Букеты</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#for_carouselExampleFade2">@Цветы</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#for_carouselExampleFade3">@Горшки</a>
                        </li>
                    </ul>
                </nav>


                <legend class="mb-0"><b>Фильтр</b></legend>

                <ul class="nav nav-tabs nav-fill" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" id="bouquets" data-toggle="tab" href="#home" role="tab"
                           aria-controls="home" aria-selected="true">Букеты</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="flowers" data-toggle="tab" href="#profile" role="tab"
                           aria-controls="profile" aria-selected="false">Цветы</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="pots" data-toggle="tab" href="#contact" role="tab"
                           aria-controls="contact" aria-selected="false">Горшки</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="bouquets">

                        <form>
                            <div class="scroll pl-0" style="width: 105%; height: 380px">

                                <fieldset class="form-group pt-3">
                                    <div class="row text-left">

                                        <div class="col-form-label col-md-12 pt-0">
                                            <h4 class=" col-md-10 text-center"><b>Кол-во цветов:</b></h4>
                                        </div>

                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="kol-vo_5"
                                                   value="5">
                                            <label class="form-check-label col-md-6" for="kol-vo_5">
                                                5 шт
                                            </label>
                                        </div>
                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="kol-vo_15"
                                                   value="15">
                                            <label class="form-check-label col-md-6" for="kol-vo_15">
                                                15 шт
                                            </label>
                                        </div>
                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="kol-vo_25"
                                                   value="25">
                                            <label class="form-check-label col-md-6" for="kol-vo_25">
                                                25 шт
                                            </label>
                                        </div>
                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="kol-vo_51"
                                                   value="51">
                                            <label class="form-check-label col-md-6" for="kol-vo_51">
                                                51 шт
                                            </label>
                                        </div>
                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="kol-vo_101"
                                                   value="101">
                                            <label class="form-check-label col-md-6" for="kol-vo_101">
                                                101 шт
                                            </label>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="flowers">

                        <form>
                            <div class="scroll pl-0" style="width: 105%; height: 380px">

                                <fieldset class="form-group pt-3">
                                    <div class="row text-left">

                                        <div class="col-form-label col-md-12 pt-0">
                                            <h4 class=" col-md-10 text-center"><b>Длина стебля:</b></h4>
                                        </div>

                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="dl_st_60"
                                                   value="60">
                                            <label class="form-check-label col-md-6" for="dl_st_60">
                                                60 см
                                            </label>
                                        </div>
                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="dl_st_70"
                                                   value="70">
                                            <label class="form-check-label col-md-6" for="dl_st_70">
                                                70 см
                                            </label>
                                        </div>
                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="dl_st_80"
                                                   value="80">
                                            <label class="form-check-label col-md-6" for="dl_st_80">
                                                80 см
                                            </label>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset class="form-group pt-3">
                                    <div class="row text-left">

                                        <div class="col-form-label col-md-12 pt-0">
                                            <h4 class=" col-md-5 text-center"><b>цвет:</b></h4>
                                        </div>

                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="red"
                                                   value="red">
                                            <label class="form-check-label col-md-6" for="red">
                                                Красный
                                            </label>
                                        </div>
                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="black"
                                                   value="black">
                                            <label class="form-check-label col-md-6" for="black">
                                                Черный
                                            </label>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </form>

                    </div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="pots">

                        <form>
                            <div class="scroll pl-0" style="width: 105%; height: 380px">

                                <fieldset class="form-group pt-3">
                                    <div class="row text-left">

                                        <div class="col-form-label col-md-12 pt-0">
                                            <h4 class=" col-md-5 text-center"><b>цвет:</b></h4>
                                        </div>

                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="terracotta"
                                                   value="terracotta">
                                            <label class="form-check-label col-md-6" for="terracotta">
                                                Терракотовый
                                            </label>
                                        </div>

                                    </div>
                                </fieldset>

                                <fieldset class="form-group pt-3">
                                    <div class="row text-left">

                                        <div class="col-form-label col-md-12 pt-0">
                                            <h4 class=" col-md-10 text-center"><b>Материал:</b></h4>
                                        </div>

                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="ceramics"
                                                   value="керимика">
                                            <label class="form-check-label col-md-6" for="ceramics">
                                                Керамика
                                            </label>
                                        </div>
                                        <div class="form-check col-md-12 row">
                                            <input class="form-check-input col-md-6" type="checkbox" name="gridRadios"
                                                   id="clay"
                                                   value="глина">
                                            <label class="form-check-label col-md-6" for="clay">
                                                Глина
                                            </label>
                                        </div>

                                    </div>
                                </fieldset>

                                <fieldset class="form-group pt-3">
                                    <div class="row text-left">

                                        <div class="col-form-label col-md-12 pt-0">
                                            <h4 class=" col-md-10 text-center"><b>диаметр:</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-check col-md-12 row">
                                                <input class="form-check-input col-md-4" type="checkbox"
                                                       name="gridRadios"
                                                       id="dl_14"
                                                       value="14">
                                                <label class="form-check-label col-md-8" for="dl_14">
                                                    14 см
                                                </label>
                                            </div>
                                            <div class="form-check col-md-12 row">
                                                <input class="form-check-input col-md-4" type="checkbox"
                                                       name="gridRadios"
                                                       id="dl_15"
                                                       value="15">
                                                <label class="form-check-label col-md-8" for="dl_15">
                                                    15 см
                                                </label>
                                            </div>
                                            <div class="form-check col-md-12 row">
                                                <input class="form-check-input col-md-4" type="checkbox"
                                                       name="gridRadios"
                                                       id="dl_17"
                                                       value="17">
                                                <label class="form-check-label col-md-8" for="dl_17">
                                                    17 см
                                                </label>
                                            </div>
                                            <div class="form-check col-md-12 row">
                                                <input class="form-check-input col-md-4" type="checkbox"
                                                       name="gridRadios"
                                                       id="dl_19"
                                                       value="19">
                                                <label class="form-check-label col-md-8" for="dl_19">
                                                    19 см
                                                </label>
                                            </div>
                                            <div class="form-check col-md-12 row">
                                                <input class="form-check-input col-md-4" type="checkbox"
                                                       name="gridRadios"
                                                       id="dl_20"
                                                       value="20">
                                                <label class="form-check-label col-md-8" for="dl_20">
                                                    20 см
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-check col-md-12 row">
                                                <input class="form-check-input col-md-4" type="checkbox"
                                                       name="gridRadios"
                                                       id="dl_23"
                                                       value="23">
                                                <label class="form-check-label col-md-8" for="dl_23">
                                                    23 см
                                                </label>
                                            </div>
                                            <div class="form-check col-md-12 row">
                                                <input class="form-check-input col-md-4" type="checkbox"
                                                       name="gridRadios"
                                                       id="dl_28"
                                                       value="28">
                                                <label class="form-check-label col-md-8" for="dl_28">
                                                    28 см
                                                </label>
                                            </div>
                                            <div class="form-check col-md-12 row">
                                                <input class="form-check-input col-md-4" type="checkbox"
                                                       name="gridRadios"
                                                       id="dl_30"
                                                       value="30">
                                                <label class="form-check-label col-md-8" for="dl_30">
                                                    30 см
                                                </label>
                                            </div>
                                            <div class="form-check col-md-12 row">
                                                <input class="form-check-input col-md-4" type="checkbox"
                                                       name="gridRadios"
                                                       id="dl_35"
                                                       value="35">
                                                <label class="form-check-label col-md-8" for="dl_35">
                                                    35 см
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
