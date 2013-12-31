# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".meal-modal a.list-group-item").click ->
    console.log($(this))
    checkbox = $(this).find('input[type=checkbox]')
    checkbox.prop('checked', !checkbox.prop('checked'))
    return false

  $(".meal-modal .add-meals").click ->
    $(this).parents('.meal-modal').find('form').submit();
    return false
