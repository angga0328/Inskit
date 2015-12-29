jQuery ->
  $('.pagination').length
  $(window).scroll ->
    url = $('.pagination .next_page').attr('href')
    if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
      $('.pagination').text("Fetching more reviews...")
      $.getScript(url)
  $(window).scroll

#jQuery ->
#  $(window).scroll ->
#    if $(window).scrollTop() > $(document).height() - $(window).height() - 50
#      alert "lontong"
