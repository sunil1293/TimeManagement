// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .


function getDaysInMonth(m, y)
{
   // months in JavaScript start at 0 so decrement by 1 e.g. 11 = Dec
   --m;

   // if month is Sept, Apr, Jun, Nov return 30 days
   if( /8|3|5|10/.test( m ) ) return 30;

   // if month is not Feb return 31 days
   if( m != 1 ) return 31;

   // To get this far month must be Feb ( 1 )
   // if the year is a leap year then Feb has 29 days
   if( ( y % 4 == 0 && y % 100 != 0 ) || y % 400 == 0 ) return 29;

   // Not a leap year. Feb has 28 days.
   return 28;
}

function printResult()
{
var dt = new Date();

// Display the month, day, and year. getMonth() returns a 0-based number.
var month = dt.getMonth()+1;
var day = dt.getDate();
var year = dt.getFullYear();
document.write(month + '' + day + '' + year);

document.write(getDaysInMonth(month, year));
}
