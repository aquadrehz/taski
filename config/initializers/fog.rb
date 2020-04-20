CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => "AWS",
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region                 => ENV['REGION'],
      :path_style             => true
  }
  config.fog_directory = ENV['AWS_BUCKET']
    # Comment to avoid SSL verification and matching S3 with public access
    #config.fog_public    = false
end