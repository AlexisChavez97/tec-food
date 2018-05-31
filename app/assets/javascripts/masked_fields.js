$(document).ready(function(){
  $('.mask-money').maskMoney({
    thousands: ',',
    decimal: '.',
    allowZero: true,
    prefix: '$',
    affixesStay: false,
    allowNegative: false,
  });

});