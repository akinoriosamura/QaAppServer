class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  # process resize_to_limit: [400, 400]

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(png jpg jpeg PNG)
  end

  # ファイル名は日本語が入ってくると嫌なので、下記のようにしてみてもいい。
  # 日付(20131001.jpgみたいなファイル名)で保存する
  """
  def filename
    time = Time.now
    name = time.strftime('%Y%m%d%H%M%S') + '.jpg'
    name.downcase
  end
  """
end
