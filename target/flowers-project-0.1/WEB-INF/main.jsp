<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="ru">
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
<%@ include file="navbar.jsp" %>

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
