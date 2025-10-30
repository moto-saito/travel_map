# config/puma.rb

max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

# RenderがくれるPORTで待ち受け
port ENV.fetch("PORT") { 3000 }

# Renderは基本 production で動く想定だけど、ENVを優先しておく
environment ENV.fetch("RAILS_ENV") { "development" }

# PIDファイル
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }

# 開発でだけ長めのタイムアウト
worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"

# workers を使いたいときはここをコメントアウト外す（今は1プロセスでOK）
# workers ENV.fetch("WEB_CONCURRENCY") { 2 }
# preload_app!

# `rails restart` で再起動できるように
plugin :tmp_restart
