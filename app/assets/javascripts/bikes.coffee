# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> $('.datetimepicker').datetimepicker({format: 'MMMM Do YYYY, h:mm'})


$ -> $('#information').markdown savable:true , onPreview:(e) ->
   
  $.post "./preview",
    {body: $('div#content > textarea').val()},
    (data) ->
      $("#preview").html(data)
      true
  false
