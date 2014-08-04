Template.navbar.events
  # handle the active class when navbar links are clicked
  "click .nav.navbar-nav li a": (event) ->
    a = $(event.target)
    li = a.parent()
    li.parent("ul").children("li").not(li).removeClass "active"
    li.addClass "active"

  "click a.navbar-brand": (event) ->
    $("ul.nav.navbar-nav").children("li").removeClass "active"

  "click .navbar-collapse.in", (event) ->
    @collapse "hide" if event.target.is "a"
