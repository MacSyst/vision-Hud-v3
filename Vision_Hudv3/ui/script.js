// Made By Benni (Vision-Service) with <3 for the Community.

$(function() {

    window.addEventListener('message', function(event) {
        var item = event.data;
            $('.serverid').text('' + item.id + '')
            $('.job').text('' + item.job + '')
            $('.jobrank').text('' + item.rank + '')
            $('.bankslot').text('' + item.accounts['bank'] + '$')
            $('.moneystatus').text('' + item.accounts['money'] + '$ ')
            $('.dirtyslot').text('' + item.accounts['black_money'] + '$ ')
    })
})