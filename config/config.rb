environment 'production'

# Permette di salvare l'identificativo del processo in un posto preciso.
pidfile './tmp/pids/puma.pid'

# Identifica il processo
tag 'icasco'

daemonize true
threads 1,1
stdout_redirect 'log/puma.log', 'log/puma_error.log', true

bind 'unix:///var/tmp/icasco-puma.sock'
