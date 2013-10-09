
ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",
  :port                 => 25,
  :domain               => 'google.com',
  :user_name            => 'bg.sunilkumar1@gmail.com',
  :password             => '8688680356',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}



#ActionMailer::Base.default_url_options[:host] = "localhost:3000"

#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?