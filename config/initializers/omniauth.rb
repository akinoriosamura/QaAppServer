Rails.application.config.middleware.use OmniAuth::Builder do
   OAUTH_CONFIG = YAML.load_file("#{Rails.root}/config/omniauth.yml")[Rails.env].symbolize_keys!
   provider :facebook, OAUTH_CONFIG[:facebook]['key'], OAUTH_CONFIG[:facebook]['secret'], scope: ''
   provider :stripe_connect,   OAUTH_CONFIG[:stripe_connect]['client_id'], OAUTH_CONFIG[:stripe_connect]['secret']
end