var dismissAlert = function() {
  setTimeout(function() {
    $('.alert').alert('close');
  }, 3000);
}

$(document).ready(dismissAlert);
