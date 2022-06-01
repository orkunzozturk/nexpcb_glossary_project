Please get in touch with me for Google Service Account API key (it should be saved as an ENV variable)
Save client_secret.json as env var and then,  
Run:
bundle install  
rails db:new  
rails db:migrate  
rails db:seed  
rails server  

(You might have to enable rails cache for Reflex Websocket)
