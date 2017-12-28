if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider => 'AWS',
      :region => ENV['S3_REGION'],
      :aws_access_key_id => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY']
    }

    # S3のパケット名
    config.fog_directory  = ENV['S3_BUCKET']
    config.cache_storage = :fog
#   else
#     config.asset_host = 'http://localhost:3000'
  end
end