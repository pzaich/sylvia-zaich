# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# eff = {
#   shiftColor : (element, speed) -> 
# }

$ ->
  $('.brand').hover(
    -> $(this).animate({
      backgroundColor : '#BFFFFF'
      }, 500)
    ,
    -> $(this).animate({
      backgroundColor : "#eee"
      }, 500)
  )

  # $('#new_image').submit(
  #   -> $(this).children('input[type="submit"]').replaceWith('<div id="circleG"><div id="circleG_1" class="circleG"></div><div id="circleG_2" class="circleG"></div><div id="circleG_3" class="circleG"></div></div>')
  # )
