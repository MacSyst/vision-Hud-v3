// Made By Benni (Vision-Service) with <3 for the Community.

$(function() {

    window.addEventListener('message', function(event) {
        var item = event.data;
            $('.serverid').text('' + item.id + '')
            $('.hungerbar').text('' + item.hunger + '')
            $('.thirstbar').text('' + item.thirst + '')
            $('.job').text('' + item.job + '')
            $('.jobrank').text('' + item.rank + '')
            $('.blackslot').text('' + item.accounts['bank'] + '$')
            $('.moneystatus').text('' + item.accounts['money'] + '$ ')
    })
})