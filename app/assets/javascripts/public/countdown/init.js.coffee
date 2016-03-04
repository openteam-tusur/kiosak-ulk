@init_countdown = ->

  return if window.location.pathname == '/'

  delay = 1000 * 60 * 10 # 10 minutes

  reset_timer = ->
    timer = window.setTimeout ->
      window.location = '/'
    , delay

    timer

  timer = reset_timer()

  $(window).mousemove ->
    clearTimeout(timer)
    timer = reset_timer()
    return

  $(window).scroll ->
    clearTimeout(timer)
    timer = reset_timer()
    return

  return
