# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

  $('.edit-profile').on('click', '.edit-icon-link', ->
    unless $('.edit-field-container').is(':visible')
      $('.to-hide.' + $(@).data('field')).hide()
      $('.edit-field-container.' + $(@).data('field')).show()
      $('.fa.fa-pencil').css('color', '#DCD7D7')
    return false
   )

  $('.edit-profile').on('click', '.profile-edit.cancel', ->
    edit_container = $(@).closest('.edit-field-container')
    $(edit_container).hide()
    $('.to-hide.' + $(edit_container).data('field')).show()
    $('.fa.fa-pencil').css('color', '#428bca')
    return false
   )

$(document).ready(ready)
$(document).on('page:load', ready)
