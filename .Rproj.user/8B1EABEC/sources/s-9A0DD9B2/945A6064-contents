# Module UI
  
#' @title   mod_reorder_module_ui and mod_reorder_module_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_reorder_module
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
mod_reorder_module_ui <- function(id){
  ns <- NS(id)
  tagList(
    tags$div(
      tags$ul(
        id = ns("parent_div"),
        li_with_id( "a" ),
        li_with_id( "b" ),
        li_with_id( "c" )
      )
    ),
    # Make the div sortable
    tags$script(
      sprintf("$('#%s').sortable();",  ns("parent_div"))
    ),
    # Send the div order to Shiny
    tags$script(
      sprintf("$('#%s').sortable().bind('sortupdate', function(e, ui) {
                var e = $('#%s');
                var res = []
                e.children().each(function(){
                  res.push($(this).attr('id'));
                })
                Shiny.setInputValue('%s', res)
              });",  
              ns("parent_div"),
              ns("parent_div"), 
              ns("parent_div_id")
              )
    )
  )
}
    
# Module Server
    
#' @rdname mod_reorder_module
#' @export
#' @keywords internal
    
mod_reorder_module_server <- function(input, output, session){
  ns <- session$ns
  observeEvent( input$parent_div_id , {
    print(input$parent_div_id)
  })
  
}

