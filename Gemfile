# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0.3", ">= 6.0.3.3"
# Use mysql as the database for Active Record
gem "mysql2", ">= 0.4.4"
# Use Puma as the app server
gem "puma", "~> 4.1"
# Use SCSS for stylesheets
gem "sass-rails", ">= 6"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem "webpacker", "~> 4.0"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# 環境変数を管理
gem "dotenv-rails"
# セキュリティ高めのログイン機能
gem "devise"
# migrationより簡単なスキーマ管理
gem "ridgepole"
# グラフ化できるgem
gem "chartkick"
# 画像アップロード機能
gem "carrierwave"
# 画像のresize機能
gem "mini_magick"
# cron機能
gem "whenever", require: false
# 日本語化
gem "rails-i18n"
# slackへの通知
gem "slack-notifier"
# ページネーション機能
gem "kaminari"
# 検索機能
gem "ransack"
# 論理削除機能
gem "discard"
# 動的フォーム
gem "cocoon"
# 複数レコード一括登録
gem "activerecord-import"

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  # テスト前後でdbをきれいにする
  gem "database_cleaner-active_record"
  # テストのための仮データ作成
  gem "factory_bot_rails"
  # rails用の優秀なテスト
  gem "rspec-rails"
  # コードを一定の質に保ってくれるgem
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-performance", require: false
  # gem 'rubocop-rspec'
  # commit時の設定ができる
  gem "overcommit"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
