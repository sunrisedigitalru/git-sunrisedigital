class RequestNotifier < ActionMailer::Base
  default from: ENV["MAIL_FROM"]

  def received(message)
    @message = message
    mail to: ENV["MAIL_TO"]
  end
  
end