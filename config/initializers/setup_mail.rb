ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address                => 'smtp.sendergrid.net',
  :port                   => '587',
  :authentication         => :plain,
  :user_name              =>'app83639240@heroku.com',
  :password               =>'pl8cmddu4697',
  :domian                 => 'heroku',
  :enable_starttls_auto   => 'true'
}
