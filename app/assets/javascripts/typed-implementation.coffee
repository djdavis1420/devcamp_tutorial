ready = ->
  Typed.new '.element',
    strings: [
      'This devcamp tutorial website was created as the main project of the<br>Dissecting Ruby on Rails 5 course by Jordan Hudgens on Udemy.',
      'Learn more about this course at<br>https://www.udemy.com/professional-rails-5-development-course/'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
