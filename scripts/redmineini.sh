#!/bin/sh

. /Applications/redmine-1.2.2-0/scripts/setenv.sh
cd /Applications/redmine-1.2.2-0/apps/redmine
rake config/initializers/session_store.rb
rake db:migrate RAILS_ENV="production"
echo en | rake redmine:load_default_data RAILS_ENV="production"
