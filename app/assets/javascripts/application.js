// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//


//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require activestorage
//= require_tree .
// require turbolinks

$(function(){
    $('.excretion1').on('click', function(){
      console.log("aa")
        $(this).addClass('green')
        $('.excretion2').removeClass('green')
        $('.excretion3').removeClass('green')
        $(this).next("input[type=radio]").attr("checked", true)
    });

    $('.excretion2').on('click', function(){
      console.log("aa")
        $(this).addClass('green')
        $('.excretion1').removeClass('green')
        $('.excretion3').removeClass('green')
        $(this).next("input[type=radio]").attr("checked", true)
    });

    $('.excretion3').on('click', function(){
  console.log("aa")
    $(this).addClass('green')
    $('.excretion1').removeClass('green')
    $('.excretion2').removeClass('green')
    $(this).next("input[type=radio]").attr("checked", true)
    });
});

$(function() {
  $('.jscroll').jscroll({
    contentSelector: '.problem-list',
    nextSelector: 'span.next:last a'
  });
});
$(window).on('scroll', function() {

    scrollHeight = $(document).height();
    scrollPosition = $(window).height() + $(window).scrollTop();
    if ( (scrollHeight - scrollPosition) / scrollHeight <= 0.05) {
           console.log("!!!")
          $('.jscroll').jscroll({
            contentSelector: '.problem-list',
            nextSelector: 'span.next:last a'
          });
    }
});

