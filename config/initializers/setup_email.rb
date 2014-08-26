ActionMailer::Base.smtp_settings = {
  :address              => "smtp.yandex.ru",                     
  :port                 => 587,
  :user_name            => "mail@digitalsunrise.ru",
  :password             => "0987654321!",
  :authentication       => "login",
  :enable_starttls_auto => true
}
