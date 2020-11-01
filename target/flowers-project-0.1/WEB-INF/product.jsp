<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="UTF-8">
    <title>Product</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://bootstraptema.ru/plugins/2015/bootstrap3/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://bootstraptema.ru/plugins/jquery/jquery-1.11.3.min.js"></script>
    <script src="https://bootstraptema.ru/plugins/2015/b-v3-3-6/bootstrap.min.js"></script>

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

        .panel-default .panel-heading {
            background-color: #fff;
        }

        #real-estates-detail .slides li img {
            height: 450px;
        }
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>

<div class="container mb-5">
    <div id="main">
        <div class="row" id="real-estates-detail">
            <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <header class="panel-title">
                            <div class="text-center">
                                <strong>${bouquet.getName()}</strong>
                            </div>
                        </header>
                    </div>
                    <div class="panel-body">
                        <div class="text-center">
                            <img src="resources/images/bouquets/${bouquet.getId()}.jpg" height="243" width="248" alt="photo"/>
                            <h3>Цена: ${bouquet.getPrice()}</h3>

                            <p>${bouquet.getDescription()}</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8 col-md-8 col-xs-12">
                <div class="panel">
                    <div class="panel-body">
                        <hr>
                        <div id="detail">
                            <h4 class="text-center"><strong>Профиль товара</strong></h4>
                            <br>
                            <table class="table table-th-block">
                                <tbody>
                                <tr>
                                    <td class="active">Тип</td>
                                    <td>${bouquet.getType()}</td>
                                </tr>
                                <tr>
                                    <td class="active">Количество цветов в букете</td>
                                    <td>${bouquet.getNumberOfFlowers()}</td>
                                </tr>
                                <tr>
                                    <td class="active">Количество букетов в наличии</td>
                                    <td>${bouquet.getNumber()}</td>
                                </tr>
                                <tr>
                                    <td class="active">Дата сборки букета</td>
                                    <td>${bouquet.getProductionDate()}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 col-md-12 col-xs-12" id="author">
                    <div class="panel">
                        <div class="panel-heading">
                            Оставьте свой комментарий
                        </div>
                        <div class="panel-body">
                            <form action="/Flowers_project_war/product?id=${bouquet.getId()}" name="comment" method="post">

                                    <select name="stars">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                    <label>Комментарий:</label>
                                    <br/>
                                    <label>
                                        <textarea name="text" cols="30" rows="5"></textarea>
                                    </label>
                                <p>
                                    <input type="submit" value="Отправить"/>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
</body>
</html>
