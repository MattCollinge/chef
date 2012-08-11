current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mattcollinge"
client_key               "#{current_dir}/mattcollinge.pem"
validation_client_name   "mcenterprise-validator"
validation_key           "#{current_dir}/mcenterprise-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/mcenterprise"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]


# EC2:
knife[:aws_access_key_id]     = "AKIAIFN275LP2RRZZQBQ"
knife[:aws_secret_access_key] = "dQo9T9eAKu7hu85GCNcW/2CXLvA5SwzDn3hhcjQQ"
knife[:aws_user_data] = ""

# Rackspace:
knife[:rackspace_api_key]      = "Your Rackspace API Key"
knife[:rackspace_api_username] = "Your Rackspace API username"

# Terremark
knife[:terremark_password] = "Your Terremark Password"
knife[:terremark_username] = "Your Terremark Username"
knife[:terremark_service]  = "Your Terremark Service name"

# Eucalyptus
knife[:euca_access_key_id]     = "Your Eucalyptus Access Key"
knife[:euca_secret_access_key] = "Your Eucalyptus Secret Access Key"
knife[:euca_api_endpoint]      = "http://ecc.eucalyptus.com:8773/services/Eucalyptus"