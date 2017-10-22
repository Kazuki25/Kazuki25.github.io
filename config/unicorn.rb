APP_PATH = "/var/www/rails/kadai-table"

worker_processes 2

working_directory "/var/www/rails/kadai-table"

listen APP_PATH + "/tmp/unicorn.sock"
pid APP_PATH + "/tmp/unicorn.pid"

stderr_path APP_PATH + "/log/unicorn.log"
stdout_path APP_PATH + "/log/unicorn.log"


preload_app true
