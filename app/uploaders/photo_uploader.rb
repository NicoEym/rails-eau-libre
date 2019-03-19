class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  # def store_dir
  #   'public/my/upload/directory'
  # end
end
