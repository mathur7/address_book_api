class EmailsWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  
  def perform(e,s,b)
    SiteMailer.status_email(e,s,b).deliver   
  end
end