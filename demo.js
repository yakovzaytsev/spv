$(document).ready(function() {
  var source   = document.getElementById("assert-template").innerHTML;
  var template = Handlebars.compile(source);
  var context = {x: "7", n: "3", m: "13", a: "5"};
  $(template(context)).appendTo('body');
});

/* Local Variables:      */
/* mode: JavaScript      */
/* tab-width: 8          */
/* indent-tabs-mode: nil */
/* js-indent-level: 2    */
/* comment-column: 0     */
/* End:                  */
