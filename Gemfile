source :rubygems

gem "rails", "3.2.3"
gem "mysql2"
gem "pg"
gem "unicorn"

group :development do
  gem "capistrano"
  gem "capistrano_colors"
  gem "pry", :require => false
  gem "awesome_print", :require => false
end

group :development, :test do
  gem "rspec-rails"
  gem "capybara"
end

group :test do
  gem "factory_girl"
  gem "factory_girl-preload"
end
