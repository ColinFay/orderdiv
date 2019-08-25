li_with_id <- function(content){
  tags$li(
    id = sprintf("li-%s",content), 
    content
  )
}