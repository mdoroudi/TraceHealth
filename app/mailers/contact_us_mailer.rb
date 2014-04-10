class ContactUsMailer < ActionMailer::Base
  default to: '"Home Grown" <TODO@gmail.com>'

  def mail_homegrown(address, subject, details)
    mail(from: address,
         subject: subject,
         body: details,
         content_type: "text/html").deliver
  end

end

