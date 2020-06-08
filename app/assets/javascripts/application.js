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


$(function(){
  $('.menu-icon').click(function(){
    $('.menu-icon').hide()
    $('.close-icon').fadeIn()
    $('.nav-right').addClass('nav-open')
    $('.nav-right').fadeIn('slow');
  })
})
$(function(){
  $('.close-icon').click(function(){
    $('.close-icon').hide()
    $('.menu-icon').fadeIn()
    $('.nav-right').fadeOut('slow');
  })
})

$(function(){
  $('.input-image').hide();
})

$(function(){
  $('.problem-comment-btn').click(function(){
    $('.problem-comment-box').slideDown('slow');
  })
})

$(function(){
  $('.problem_btn').click(function(){
    $('.problem-comment-box').slideUp('slow');
  })
})


