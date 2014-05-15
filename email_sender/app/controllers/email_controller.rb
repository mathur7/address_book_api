class EmailController < ApplicationController

  respond_to :json

  def about
  end

  def email
    subject = params[:email][:subject]
    body = params[:email][:body]
    email = params[:email][:email]
    EmailsWorker.perform_async(email, subject, body)
    redirect_to root_path
  end

  # def email
  #   #email = email_params
  #   # SiteMailer.status_email(email[:email], email[:subject], email[:body]).deliver
  #   EmailsWorker.perform_async(email, subject, body)
  #   render nothing: true, status: 200
  # end



end
