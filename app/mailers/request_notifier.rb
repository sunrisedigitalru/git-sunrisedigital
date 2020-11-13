class RequestNotifier < ActionMailer::Base
  default from: ENV["MAIL_FROM"]

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(message)
    @message = message
    mail to: ENV["MAIL_TO"]
  end
  
end