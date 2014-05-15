EmailSender::Application.routes.draw do
  root 'email#about'
  post '/email', to: 'email#email'
end

# root  GET  /                email#about
# email POST /email(.:format) email#email