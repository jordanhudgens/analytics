
(function() {
     function async_load(){
        var s = document.createElement('script'); s.type = 'text/javascript';

        var c = document.getElementsByTagName('script')[0]; c.parentNode.insertBefore(s, c);
    }
    if(window.attachEvent) { window.attachEvent('onload', async_load); }
    else { window.addEventListener('load', async_load, false); }
})();
