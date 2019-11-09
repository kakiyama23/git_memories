$(document).ready(function(){
  $("#calendar").fullCalendar({});
  
  $('#welcome-btn').click(function() {
    $('#welcome-btn, #welcome-wrapper').fadeOut(200);
    $('.modal-wrapper').fadeIn(500);
  });
  
  $('#read-more').click(function() {
    $('.important').css('color', 'red');
    $('#more-text').slideDown();
    $('#read-more').hide();
    $('#image-wrapper').slideUp();
  });
  
  $('#start').click(function() {
    $('#description-wrapper').hide();
    $('#start-wrapper').fadeIn(1500);
  });
  
    
$('.faq-list-item').click(function(){
    var $answer = $(this).find('.answer');
    if($answer.hasClass('open')){
      $answer.removeClass('open');
      $answer.slideUp();
      $('.plus').text('＋');
    } else {
      $answer.addClass('open');
      $answer.slideDown();
      $('.plus').text('－');
    }
    });
  
  
  
  });