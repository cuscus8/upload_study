/*header*/
    /*main menu nav*/ 
    $(function () {
        $(".menu-content").hide();
    
        $(".nav").hover(
          function () {
            $(this).find(".menu-content").stop(true, true).slideDown(300);
          },
          function () {
            $(this).find(".menu-content").stop(true, true).slideUp(300);
          }
        );
      });
    
      var mybutton = document.getElementById("myButton");
    
        window.onscroll = function() {scrollFunction()};
    
        function scrollFunction() {
            mybutton.style.display = "block";
        }
    
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    
        
        
/*contnent*/   
    /*nav*/


$(function () {
  $(".nav-content").hide();
  
  $("#nadeuliNav > li").click(function(event) { // event 매개변수 추가
    $(this).children(".nav-content").slideToggle(300);
    event.stopPropagation();
  });
  $(".nav-content").click(function(event) {
    event.stopPropagation();
  });
});

    /*page content*/
    

/*footer*/
    /*site map*/

    /*main footer*/
    