name "quote-robot"
description "The base role for our quote robot"
run_list "recipe[mongodb::default]", "recipe[nodejs]", "recipe[chromium]"
env_run_lists "_default" => ["recipe[mongodb::default]", "recipe[nodejs]"]
#default_attributes "mongodb" => { "client_role" => "mcenterprise-validator" }