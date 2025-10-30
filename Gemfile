source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 6.1.7', '>= 6.1.7.6'

# ← ここがポイント①
# 開発・テストは SQLite
group :development, :test do
  gem 'sqlite3', '~> 1.4'
end

# ← ここがポイント②
# 本番は Render の Postgres に繋ぐ
group :production do
  gem 'pg'
end

# アプリ本体
gem 'puma', '~> 3.11'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end

# Windows 用
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# 認証・管理
gem 'devise'
gem 'rails_admin' # 管理者側の機能

# .env は本番では読まないことが多いから dev/test だけでもいい
group :development, :test do
  gem 'dotenv-rails'
end

# メール関連
gem "net-smtp"
gem "net-pop"
gem "net-imap"

gem 'jquery-rails'
