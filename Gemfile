source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "pg", "1.1.4"
gem "puma", "4.2.1"
gem "rails", "6.0.0"

# assets
gem "webpacker"

# views
gem "active_link_to"
gem "simple_form"

# jobs
gem "sidekiq"
gem "sidekiq-scheduler"

# all other gems
gem "action_policy"
gem "bootsnap", ">= 1.1.0", require: false
gem "decent_decoration"
gem "decent_exposure"
gem "devise"
gem "draper"
gem "enumerize"
gem "i18n-js"
gem "image_processing"
gem "interactor"
gem "kaminari"
gem "panko_serializer"
gem "rails-i18n"
gem "seedbank"

group :development do
  gem "letter_opener"
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen"
end

group :development, :test do
  gem "brakeman", require: false
  gem "bullet"
  gem "bundler-audit", require: false
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "fasterer"
  gem "pry-rails"
  gem "rspec-rails", "4.0.0.beta3"
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

group :test do
  gem "capybara"
  gem "email_spec"
  gem "rspec-sidekiq"
  gem "rspec_api_documentation"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "webdrivers"
end