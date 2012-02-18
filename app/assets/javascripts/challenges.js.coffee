# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery(document).ready () ->
  $('.challenge_row .more_link').bind "click", () ->
    console.log $(this).parent().children(".more_description")[0]
    more_div = $(this).parent().children(".more_description")[0]
    console.log $(more_div)
    jQuery.facebox( $(more_div).html())
    
  $('.approve').click ->
      id = $(this).parent().attr("alt")
      $.post '/take_challenge',
    		id: id,
        error: (jqXHR, textStatus, errorThrown) ->
          alert("AJAX Error: #{textStatus}")
    		
    		(data) -> 
    		  $('body').append "Successfully posted to the page."
    		  alert(data)