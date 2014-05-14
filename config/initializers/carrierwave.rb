require 'fog'
require 'rails'
require 'carrierwave'


CarrierWave.configure do |config|
   
  config.root = Rails.root.join('tmp')
#  config.root = dropbox
  config.cache_dir = 'carrierwave'
  
  # config.fog_credentials = {
  #   :provider                         => 'Google',
  #   :google_storage_access_key_id     => 'GOOGX52JY5D7XOTYVAVO',
  #   :google_storage_secret_access_key => 'HF377FkSnZlPMXButqdwrDbw8IZWPB23b9Xv3UiY'
  # }
  # config.fog_directory = 'Home'
 


# config.dropbox_app_key = ENV["mwvmuvoa0ayw47k"]
#   config.dropbox_app_secret = ENV["dezmel2c035bx3y"]
#   config.dropbox_access_token = ENV["k0ezcsv2nirkbb1x"]
#   config.dropbox_access_token_secret = ENV["55fr266fcysbpsp"]
#   config.dropbox_user_id = ENV["2916204"]
#   config.dropbox_access_type = "app_folder"

 # config.dropbox_app_key = ENV["APP_KEY"] 
 # config.dropbox_app_secret = ENV["APP_SECRET"] 
 # config.dropbox_access_token = ENV["ACCESS_TOKEN"] 
 # config.dropbox_access_token_secret = ENV["ACCESS_TOKEN_SECRET"] 
 # config.dropbox_user_id = ENV["USER_ID"] 
	# config.dropbox_access_type = "app_folder" 

  config.dropbox_app_key = "mwvmuvoa0ayw47k"
  config.dropbox_app_secret = "dezmel2c035bx3y"
  config.dropbox_access_token = "k0ezcsv2nirkbb1x"
  config.dropbox_access_token_secret = "55fr266fcysbpsp"
  config.dropbox_user_id = "2916204"
  config.dropbox_access_type = "app_folder"


end
