Rails.application.config.middleware.use OmniAuth::Builder do
   provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], scope: ''
   provider :stripe_connect, ENV['STRIPE_CLIENT_ID'], ENV['STRIPE_SECRET']
   byebug
end