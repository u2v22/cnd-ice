class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true # Force version generation at upload time.

  def extension_white_list
    %w(jpg jpeg gif png)
  end
  # upload format
  # "image/upload/v1580105256/iktvhbwh10rhiq780udy.jpg"
end
