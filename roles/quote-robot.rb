name "quote-robot"
description "The base role for our quote robot"
run_list "recipe[mongodb::default]", "recipe[nodejs]", "recipe[chromium]"
env_run_lists "_default" => ["recipe[apache2]"], "staging" => ["recipe[apache2::staging]"]
#default_attributes "mongodb" => { "client_role" => "mcenterprise-validator" }