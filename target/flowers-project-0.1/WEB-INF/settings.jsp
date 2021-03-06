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
                            <img src="resources/images/avatar.png">

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
                            <a href="/Flowers_project_war/applications" class="btn btn-secondary btn-lg active"
                               role="button" aria-pressed="true">История заявок</a>
                            <a href="/Flowers_project_war/settings" class="btn btn-primary btn-lg active" role="button"
                               aria-pressed="true">Редактировать</a>
                        </ul>
                        <div id="myTabContent">
                            <hr>
                            <h4 class="text-center"><strong>Редактирование</strong></h4>
                            <br>

                            <form>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label" for="exampleFormControlFile1">
                                        Avatar</label>
                                    <div class="col-sm-10">
                                        <input type="file" class="form-control-file " id="exampleFormControlFile1"
                                               value="Выбрать файл">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="phone_number" class="col-sm-2 col-form-label">Phone</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="phone_number"
                                               placeholder="89190000000">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputPassword" class="col-sm-2 col-form-label">Пароль</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="inputPassword">
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-outline-primary shadow p-2 rounded">Сохранить
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- /.main -->
</div><!-- /.container -->


</body>
</html>
