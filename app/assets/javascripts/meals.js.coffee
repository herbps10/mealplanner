# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#recipe-search").keyup ->
    value = $(this).val().toLowerCase()

    $(".recipes .title").each ->
      if(value == '')
        $(this).parent().show()
        return

      if($(this).text().toLowerCase().indexOf(value) == -1)
        $(this).parent().hide()
      else
        $(this).parent().show()
