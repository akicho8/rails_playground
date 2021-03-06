# 開発環境自体にデプロイする
# /var/www/rails_playground_local (RAILS_ENV: production)

server 'localhost', user: 'deploy', roles: %w{app db web}
server 'localhost', user: 'deploy', roles: %w{app web}
server 'localhost', user: 'deploy', roles: %w{db}

# yarnpkg がないと言われるため deploy でも yarnpkg が見えるようにする
# また、これとは別で /Users/deploy/.bashrc に以下も設定している
# export NODEBREW_ROOT=/opt/nodebrew
# export PATH=$NODEBREW_ROOT/current/bin:$PATH
set :default_env, { 'NODEBREW_ROOT' => '/opt/nodebrew' }
set :default_env, { path: '/opt/nodebrew/current/bin:$PATH' }

# これを指定しないと rails_env が local になってしまう
set :rails_env, 'production'

# config/database.local.yml を使う設定
set :linked_files, fetch(:linked_files, []).push('config/database.yml')
before 'deploy:check:linked_files', 'deploy:upload_shared_config_database_yml'
