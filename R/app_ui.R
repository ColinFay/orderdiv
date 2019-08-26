#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    fluidPage(
      h1("orderdiv"), 
      mod_reorder_module_ui("reorder_module_ui_1")
    )
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'orderdiv')
  )
 
  tags$head(
    golem::activate_js(),
    golem::favicon(),
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    tags$script(src = "www/html5sortable/jquery.sortable.min.js"), 
    tags$script(src="www/sortable.js"),
    tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
  )
}
