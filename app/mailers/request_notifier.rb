class RequestNotifier < ActionMailer::Base
  default from: "mail@digitalsunrise.ru"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(message)
    @message = message
    mail to: 'info@digitalsunrise.ru, ceo@digitalsunrise.ru'
  end
  
end