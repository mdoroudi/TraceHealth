class MailerController < ActionController::Base
  def deliver_contact_form
    address = params["contact_email"]
    details = params["contact_detail"]
    subject = params["subject"] || ""
    ContactUsMailer.mail_homegrown(address, subject, details).deliver
    redirect_to contact_us_url, notice: "Watch it, mister!"
  end
end
