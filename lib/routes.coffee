# Iron Router
# -----------

# Specify the url routes
Router.map ->
  @route 'home',
    path: '/'

Router.configure
  layoutTemplate: 'layout',
  notFoundTemplate: 'notFound',
  loadingTemplate: 'loading',
