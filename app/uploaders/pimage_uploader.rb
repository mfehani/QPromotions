# encoding: utf-8

class PimageUploader < CarrierWave::Uploader::Base

  #include CarrierWave::MiniMagick
 
  storage :fog
  

 
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 

end
