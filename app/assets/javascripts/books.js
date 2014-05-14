# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
(function() {
  var configureIsotope = function() {
    $('#books-container').isotope({
      itemSelector: '.book',
      layoutMode: 'masonry',
      masonry: {
        gutter: 20
      }
    });
  };
  document.addEventListener("DOMContentLoaded", configureIsotope);
  // window.addEventListener("load", configureIsotope);
})();