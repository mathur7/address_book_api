class SiteMailer < ActionMailer::Base
  default from: ENV['EMAIL_FROM_ADDRESS']

  def status_email(email, subject, body)
    @email = email
    @subject = subject
    @body = body 
    mail(to: email, subject: subject, body: body)
  end

end
