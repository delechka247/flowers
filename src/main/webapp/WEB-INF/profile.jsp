<%--
  Created by IntelliJ IDEA.
  User: Adelya
  Date: 31.10.2020
  Time: 6:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Профиль</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
            crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://bootstraptema.ru/plugins/2015/bootstrap3/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://bootstraptema.ru/plugins/jquery/jquery-1.11.3.min.js"></script>
    <script src="https://bootstraptema.ru/plugins/2015/b-v3-3-6/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark pl-4 pt-3 pb-3 sticky-top"
     style="background-image: url(https://10factov.net/uploads/facts/520-fact-main-840.jpg)">
    <a class="navbar-brand" href="../index.html"
       style="font-size: xx-large; font-family: Pompadur, 'Comic Sans MS', cursive;"><b><i>Flowers</i></b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav justify-content-between" style="width: 100%">
            <li class="nav-item ml-5 mr-5">
                <a class="nav-link active" href="catalog.html"><h3><b>Каталог</b></h3></a>
            </li>
            <li class="nav-item active ml-5 mr-5">
                <a class="nav-link active" href="bouquets.html"><h3><b>Букеты</b></h3></a>
            </li>
            <li class="nav-item ml-5 mr-5">
                <a class="nav-link active" href="flowers.html"><h3><b>Цветы</b></h3></a>
            </li>
            <li class="nav-item ml-5 mr-5">
                <a class="nav-link active" href="pots.html"><h3><b>Горшки</b></h3></a>
            </li>
            <li class="nav-item ml-5 mr-5">
                <a class="nav-link active" href="#"><h3><b>Личный кабинет</b></h3></a>
            </li>
            <!--            <li class="nav-item ml-5 mr-5">-->
            <!--                <a class="nav-link active" href="navbar/profile.html"><b>Вход/Регистрация</b></a>-->
            <!--            </li>-->
        </ul>
    </div>
</nav>


<br><br><br>

<style>


    #main {
        background-color: #f2f2f2;
        padding: 20px;
        -webkit-border-radius: 4px;
        -moz-border-radius: 4px;
        -ms-border-radius: 4px;
        -o-border-radius: 4px;
        border-radius: 4px;
        border-bottom: 4px solid #ddd;
    }

    #real-estates-detail #author img {
        -webkit-border-radius: 100%;
        -moz-border-radius: 100%;
        -ms-border-radius: 100%;
        -o-border-radius: 100%;
        border-radius: 100%;
        border: 5px solid #ecf0f1;
        margin-bottom: 10px;
    }

    #real-estates-detail .sosmed-author i.fa {
        width: 30px;
        height: 30px;
        border: 2px solid #bdc3c7;
        color: #bdc3c7;
        padding-top: 6px;
        margin-top: 10px;
    }

    .panel-default .panel-heading {
        background-color: #fff;
    }

    #real-estates-detail .slides li img {
        height: 450px;
    }
</style>

<div class="container mb-5">
    <div id="main">


        <div class="row" id="real-estates-detail">
            <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <header class="panel-title">
                            <div class="text-center">
                                <strong>Пользователь сайта</strong>
                            </div>
                        </header>
                    </div>
                    <div class="panel-body">
                        <div class="text-center" id="author">
                            <img src="https://sun9-33.userapi.com/nV356FyoOQ0S8ExA0RhNwqLjzCbRaHqOwmF36g/yVqigC76wAA.jpg">

                            <h3>${name}</h3>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8 col-md-8 col-xs-12">
                <div class="panel">
                    <div>
                        <ul>
                            <a href="/Flowers_project_war/profile" class="btn btn-primary btn-lg active" role="button"
                               aria-pressed="true">О пользователе</a>
                            <a href="/Flowers_project_war/applications" class="btn btn-secondary btn-lg active"
                               role="button" aria-pressed="true">История заявок</a>
                            <a href="/Flowers_project_war/settings" class="btn btn-secondary btn-lg active"
                               role="button" aria-pressed="true">Редактировать</a>
                        </ul>
                        <div>
                            <hr>
                            <div>
                                <h4 class="text-center"><strong>Профиль</strong></h4>
                                <br>
                                <table class="table table-th-block">
                                    <tbody>

                                    <tr>
                                        <td class="active">email:</td>
                                        <td>${email}</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Номер телефона:</td>
                                        <td>${number}</td>
                                    </tr>
                                    <tr>
                                        <td class="active">День рождения:</td>
                                        <td>${birthday}</td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div><!-- /.main -->
</div><!-- /.container -->


</body>
</html>