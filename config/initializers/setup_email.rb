ActionMailer::Base.smtp_settings = {
  :address              => "smtp.yandex.ru",                     
  :port                 => 587,
  :user_name            => ENV["MAIL_USERNAME"],
  :password             => ENV["MAIL_PASS"],
  :authentication       => "login",
  :enable_starttls_auto => true
}
