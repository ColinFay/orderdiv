$( document ).ready(function() {
  Shiny.addCustomMessageHandler('resortable', function(arg) {

    $('#' + arg).sortable().bind('sortupdate', function(e, ui) {
      debugger;
                var e = $('#' + arg);
                var res = []
                e.children().each(function(){
                  res.push($(this).attr('id'));
                })
                Shiny.setInputValue(arg + "_id", res)
              });
  })
});
