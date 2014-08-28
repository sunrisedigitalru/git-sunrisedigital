# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  validate_url = '/pages/validate'
  $('#new_request').validate(
    rules:
      'request[name]':
        required: true
        remote:
          url: validate_url
          type: 'post'
      'request[phone]':
        required: true
        remote:
          url: validate_url
          type: 'post'
      'request[email]':
        remote:
          url: validate_url
          type: 'post'
  )