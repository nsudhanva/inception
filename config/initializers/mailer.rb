ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "gmail.com",
   :authentication => 'plain',
   :user_name => "nsudhanva@gmail.com",
   :password => "Sudhanva@sud*9",
   :enable_starttls_auto => true
}