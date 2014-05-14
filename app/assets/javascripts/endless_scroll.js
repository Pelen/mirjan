var currentPage = 1;
var intervalID = -1000;
 
function checkScroll() {
  var currentPageUrl = "";
currentPageUrl = document.location.toString().toLowerCase();
  if (nearBottomOfPage() && (currentPageUrl=="http://localhost:3000/" || currentPageUrl=="http://localhost:3000/books" || currentPageUrl=="http://pelen.herokuapp.com/"  || currentPageUrl=="http://pelen.herokuapp.com/books" ) ) {
    currentPage++;
  console.log("endless request "+ currentPage);
    jQuery.ajax('?page=' + currentPage, {asynchronous:true, evalScripts:true, method:'get', success: function(data, textStatus, jqXHR) {
    $('.books').append(jQuery(data).find('.books').html());
    if(typeof jQuery(data).find('.books').html() == 'undefined' || jQuery(data).find('.books').html().trim().length == 0){
      clearInterval(intervalID);
    }
  },});
  }
}
 
function nearBottomOfPage() {
  return scrollDistanceFromBottom() < 50;
}
 
function scrollDistanceFromBottom(argument) {
  return pageHeight() - (window.pageYOffset + self.innerHeight);
}
 
function pageHeight() {
  return Math.max(document.body.scrollHeight, document.body.offsetHeight);
}
 
$('document').ready(function(){
  intervalID = setInterval(checkScroll, 250);
})