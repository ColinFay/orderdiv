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
        id = ns("parent_div")
      )
    ),
    actionButton(ns("add_div"), "add div")
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
  
  r <- reactiveValues(n = 1)
  
  observeEvent( input$add_div , {
    insertUI(
      immediate = TRUE,
      selector = sprintf("#%s", ns("parent_div")), 
      ui = div_with_id( letters[r$n], tags$ul(tags$li(letters[r$n]))) 
      )
    r$n <- r$n + 1
    golem::invoke_js("resortable", ns("parent_div"))
  })
  
  
}

