CarrierWave.configure do |config|
  config.asset_host = 'https://qaappserver.s3.amazonaws.com'

  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['aws_access_key_id'],
    aws_secret_access_key: ENV['aws_secret_access_key'],
    region: ENV['region']
  }

  # S3のパケット名
  config.fog_directory  = 'qaappserver'
  config.cache_storage = :fog

end
