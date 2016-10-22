// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require video.min
//= require RecordRTC
//= require wavesurfer.min
//= require wavesurfer.microphone.min
//= require videojs.wavesurfer.min
//= require videojs.record
//= require jquery.ui.widget
//= require jquery.iframe-transport
//= require jquery.fileupload
//= require_tree .
//

$(document).ready(function () {
    console.log('ready');

    $(".callboy-box").hover(
        function() {
            console.log('mouseenter');
            $( '.dildo-link', this ).addClass('shake');
        }, function() {
            console.log('mouseleave');
            $( '.dildo-link', this ).removeClass('shake');
        }
    );

    $("#jquery_jplayer_1").jPlayer({
        ready: function () {
            $(this).jPlayer("setMedia", {
                title: "Bubble",
                m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
                oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
            });
        },
        cssSelectorAncestor: "#jp_container_1",
        swfPath: "/js",
        supplied: "m4a, oga",
        useStateClassSkin: true,
        autoBlur: false,
        smoothPlayBar: true,
        keyEnabled: true,
        remainingDuration: true,
        toggleDuration: true
    });
});
