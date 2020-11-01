<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Flowers</title>

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
     style="background-image: url(https://10factov.net/uploads/facts/520-fact-main-840.jpg);">
    <a class="navbar-brand" href="index.html"
       style="font-size: xx-large; font-family: Pompadur, 'Comic Sans MS', cursive;"><b><i>Flowers</i></b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav justify-content-between" style="width: 100%">
            <li class="nav-item ml-5 mr-5">
                <a class="nav-link active" href="navbar/catalog.html"><h5><b>Каталог</b></h5></a>
            </li>
            <li class="nav-item active ml-5 mr-5">
                <a class="nav-link active" href="navbar/bouquets.html"><h5><b>Букеты</b></h5></a>
            </li>
            <li class="nav-item ml-5 mr-5">
                <a class="nav-link active" href="navbar/flowers.html"><h5><b>Цветы</b></h5></a>
            </li>
            <li class="nav-item ml-5 mr-5">
                <a class="nav-link active" href="navbar/pots.html"><h5><b>Горшки</b></h5></a>
            </li>
            <li class="nav-item ml-5 mr-5">
                <a class="nav-link active" href="navbar/profile.html"><h5><b>Личный кабинет</b></h5></a>
            </li>
            <!--            <li class="nav-item ml-5 mr-5">-->
            <!--                <a class="nav-link active" href="navbar/profile.html"><b>Вход/Регистрация</b></a>-->
            <!--            </li>-->
        </ul>
    </div>
</nav>


<div class="text-center mt-5 pl-0 pr-0 container d-flex flex-row justify-content-between ">

    <div class="block col-md-6 col-xl-3">
        <div class="card shadow" style="width: auto">
            <img src="resources/images/quality.jpg" class="card-img-top" alt="Quality">
            <div class="card-body">
                <h4 class="card-title"><b>Качество</b></h4>
                <p class="card-text">Ежедневные поставки обеспечивают восхитительное качество и свежесть цветов</p>
            </div>
        </div>
    </div>

    <div class="block col-md-6 col-xl-3">
        <div class="card shadow" style="width: auto">
            <img src="resources/images/price.jpg" class="card-img-top" alt="Price">
            <div class="card-body">
                <h4 class="card-title"><b>Цена</b></h4>
                <p class="card-text">Шикарные букеты по доступной цене с превосходным качеством каждого цветка</p>
            </div>
        </div>
    </div>

    <div class="block col-md-6 col-xl-3">
        <div class="card shadow" style="width: auto">
            <img src="resources/images/delivery.jpg" class="card-img-top" alt="Delivery">
            <div class="card-body">
                <h4 class="card-title"><b>Доставка</b></h4>
                <p class="card-text">У нас собственная курьерская служба - привозим букеты по Казани точно в срок</p>
            </div>
        </div>
    </div>

    <div class="block col-md-6 col-xl-3">
        <div class="card shadow" style="width: auto">
            <img src="resources/images/availability.jpg" class="card-img-top" alt="Availbility">
            <div class="card-body">
                <h4 class="card-title"><b>Наличие</b></h4>
                <p class="card-text">Огромный ассортимент - более 10000 роз разнообразных сортов и оттенков в
                    наличии</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
