CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJPOYUWIOT5UOY6KQ',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory  = "qpromotions"
end