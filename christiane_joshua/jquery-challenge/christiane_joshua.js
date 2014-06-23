$("h1").text("We changed the title")
[
<h1 style=​"text-align:​center">​We changed the title​</h1>​
]


$('.hero-unit').css("background-color", "red");
[
<div class=​"hero-unit" style=​"color:​ red;​">​…​</div>​
]


$('h1').css("color", "white");
[
<h1 style=​"text-align:​center">​We changed the title​</h1>​
]

$('.pull-right').click(function() {$('a').css("color", "white");});
[
<div class=​"pull-right">​…​</div>​
]


$('.centered_logo').find('img')
[
<img alt=​"Socrates_on_white" src=​"/​assets/​socrates_on_white.gif">​
]


$('img').attr('src','http://www.wunderground.com/data/wximagenew/a/actual/924.jpg');


$('.container').css('background-image','url(http://www.eatdrinkchic.com/assets/content/freebies/stripes_1920x1200.jpg)');


$("h3").parents("#feed");

$("#feed").find("h3");\



$('h3').animate({'color':'red'},'slow');

$('h3').animate({'color':'red'},'fast');

$('h3').animate({'color':'orange'},'200');



$("#footer-wrapper").on( "click", function() { $("#footer-wrapper").css("background-color", "orange")} );

$(".navbar-inner .container").on("mouseover", function() {$(".navbar-inner .container").css("background-color","pink") });


var x = ("#footer-wrapper").children();

$(x).on("hover", function () {$(x).css("background-color", "green"); $(x).css("background-color", "black")})
