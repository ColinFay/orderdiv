#' @import shiny
app_server <- function(input, output,session) {
  # List the first level callModules here
  callModule(mod_reorder_module_server, "reorder_module_ui_1")
  
  # observeEvent( input$parent_div_id , {
  #   print(input$parent_div_id)
  # })
  
}
