<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Applications</title>

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
<%@ include file="navbar.jsp" %>

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
                            <a href="/Flowers_project_war/profile" class="btn btn-secondary btn-lg active" role="button"
                               aria-pressed="true">О пользователе</a>
                            <a href="/Flowers_project_war/applications" class="btn btn-primary btn-lg active"
                               role="button" aria-pressed="true">История заявок</a>
                            <a href="/Flowers_project_war/settings" class="btn btn-secondary btn-lg active"
                               role="button" aria-pressed="true">Редактировать</a>
                        </ul>
                        <div>

                            <div>
                                <h4 class="text-center"><strong>История заявок</strong></h4>
                                <br>
                                <table class="table table-th-block">
                                    <tbody>
                                    <tr>
                                        <td class="active">Номер заявки:</td>
                                        <td>12345678</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Товар:</td> <!-- выводится имя товара по id -->
                                        <td>Черные розы</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Кол-во:</td>
                                        <td>99</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Стоимость:</td>
                                        <td>10000 р</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Дата создания заявки:</td>
                                        <td>03.10.2020 03:30</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Тип:</td>
                                        <td>Доставка</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Адрес:</td>
                                        <td>Побежимова 17</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Время доставки:</td>
                                        <td>16:00</td>
                                    </tr>

                                    </tbody>
                                </table>
                                <br><br>
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

