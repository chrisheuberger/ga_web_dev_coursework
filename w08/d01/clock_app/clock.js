$(document).ready(function() {

  setInterval(function(){
    var dt = new Date();
    // alert(time);

    var sec_deg = dt.getSeconds() * 6;
    var min_deg = dt.getMinutes() * 6;
    var hr_deg = dt.getHours() * 30;

    $('#second-hand').css({'-webkit-transform':'rotate(' + sec_deg + 'deg)', '-moz-transform':'rotate(' + sec_deg + 'deg)', '-o-transform':'rotate(' + sec_deg + 'deg)', '-ms-transform':'rotate(' + sec_deg + 'deg)', 'transform':'rotate(' + sec_deg + 'deg)'});
    $('#minute-hand').css({'-webkit-transform':'rotate(' + min_deg + 'deg)', '-moz-transform':'rotate(' + min_deg + 'deg)', '-o-transform':'rotate(' + min_deg + 'deg)', '-ms-transform':'rotate(' + min_deg + 'deg)', 'transform':'rotate(' + min_deg + 'deg)'});
    $('#hour-hand').css({'-webkit-transform':'rotate(' + hr_deg + 'deg)', '-moz-transform':'rotate(' + hr_deg + 'deg)', '-o-transform':'rotate(' + hr_deg + 'deg)', '-ms-transform':'rotate(' + hr_deg + 'deg)', 'transform':'rotate(' + hr_deg + 'deg)'});

  }, 1000);

});
