$(document).ready(function () {
    //banner anim
    $(".dildo-link").hover(
        function() {
            console.log('mouseenter');
            $( this ).addClass('shake');
        }, function() {
            console.log('mouseleave');
            $( this ).removeClass('shake');
        }
    );
});
