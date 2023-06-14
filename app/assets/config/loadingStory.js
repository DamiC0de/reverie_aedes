$(document).ready(function() {
    $('form').on('submit', function() {
      $('#loading-screen').show();
      $('body').css('pointer-events', 'none');
    });
  });
  