# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("input.day, input.meal").click ->
    value = $(this).prop('checked')
    $(this).parents('div:first').find('input').prop('checked', value)
