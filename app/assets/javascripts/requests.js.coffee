jQuery ->
  validate_url = '/requests/validate'
  rules = {
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
  }

  $('#submitmore').validate(
    rules: rules
  )

  $('#submitplan').validate(
    rules: rules
  )

  $('#submitgo').validate(
    rules: rules 
  )