# GET FILES
def get_file(file)
  get "#{base_url}/#{file}", file
end

def base_url
  "https://github.com/ernane/rails_setup/raw/master"
end

# SETUP BUNDLE
remove_file "Gemfile"
get_file "Gemfile"
run "bundle install"

# SETUP CONTROLLER DEFAULT
#remove_file "public/index.html"
#remove_file "app/assets/stylesheets/application.css"
#remove_file "app/views/layouts/application.html.erb"
#remove_file "app/helpers/application_helper.rb"
remove_file ".gitignore"

#get_file "app/helpers/application_helper.rb"
#get_file "app/helpers/layout_helper.rb"
#get_file "app/assets/stylesheets/application.css.scss"
#get_file "app/assets/stylesheets/normalize.css.scss"
#get_file "app/views/layouts/application.html.erb"
get_file ".gitignore"

# capistrano
get_file "Capfile"
get_file "config/deploy.rb"

run "mkdir -p config/recipes/templates"

get_file "config/recipes/base.rb"
get_file "config/recipes/check.rb"
get_file "config/recipes/mysql.rb"
get_file "config/recipes/nginx.rb"
get_file "config/recipes/nodejs.rb"
get_file "config/recipes/postgresql.rb"
get_file "config/recipes/rbenv.rb"
get_file "config/recipes/unicorn.rb"
get_file "config/recipes/unix_user.rb"

get_file "config/recipes/templates/mysql.yml.erb"
get_file "config/recipes/templates/nginx_unicorn.erb"
get_file "config/recipes/templates/postgresql.yml.erb"
get_file "config/recipes/templates/unicorn.rb.erb"
get_file "config/recipes/templates/unicorn_init.erb"
