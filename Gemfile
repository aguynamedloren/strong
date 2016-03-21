source "https://rubygems.org"

ruby "2.3.0"

gem "active_type"
gem "autoprefixer-rails"
gem "devise"
gem "draper"
gem "flutie"
gem "griddler"
gem "griddler-mailgun"
gem "high_voltage"
gem "jquery-rails"
gem "newrelic_rpm", ">= 3.9.8"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 4.2.0"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "sidekiq"
gem "simple_form"
gem "slim-rails"
gem "sprockets", ">= 3.0.0"
gem "sprockets-es6"
gem "title"
gem "uglifier"

group :development do
  gem "bootstrap", "~> 4.0.0.alpha3"
  gem "brakeman", require: false
  gem "letter_opener"
  gem "quiet_assets"
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
  gem "xray-rails"
end

group :development, :test do
  gem "awesome_print"
  gem "bullet"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.4.0"
end

group :development, :staging do
  gem "rack-mini-profiler", require: false
end

group :test do
  gem "capybara-webkit"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "rack-timeout"
end
