class RequestNotifier < ActionMailer::Base
  default from: "mail@digitalsunrise.ru"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(request,file,path)
    @message = request
    if file
    	attachments["#{file}"] = File.read(path)
    end
    mail to: 'info@digitalsunrise.ru', subject: "Заявка с сайта DigitalSunrise"
  end
  
end