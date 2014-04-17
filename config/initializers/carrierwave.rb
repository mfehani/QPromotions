CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => '',
    :aws_secret_access_key  => '',
  #  :region                 => 'us-west-2'
    
  }
  puts "hi im in the initalizer"
  config.fog_directory  = "qpromotions"
  
  config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku
 
 # config.fog_directory    = ENV['qpromotions']
  #config.s3_access_policy = :public_read                          # Generate http:// urls. Defaults to :authenticated_read (https://)
 # config.fog_host         = "#{ENV['http://s3.amazonaws.com']}/#{ENV['qpromotions']}"

end