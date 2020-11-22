ActionMailer::Base.smtp_settings = {
  address: "smtp.mail.ru",                     
  port: 465,
  domain: "mail.ru",
  user_name: ENV["MAIL_USERNAME"],
  password: ENV["MAIL_PASS"],
  authentication: "plain",
  enable_starttls_auto: true,
  tls: true
}