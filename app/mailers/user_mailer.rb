class UserMailer < ActionMailer::Base
  default from: '"Home Grown" <home.grown@gmail.com>'

  def welcome_mail(address)
    @url = 'http://homegrown.us/' 
    mail(to: address, subject: 'Welcome to Home Grown!')
  end

end
