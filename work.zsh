alias ssh-sandbox='ssh -o "ProxyCommand ssh proxy-sandbox nc %h 22" '
#alias ssh-forward-gsc-sandbox='ssh -N -D 1111 ns31208151.ip-51-91-119.eu -v'
alias ssh-forward-sandbox-gsc='ssh -N -D localhost:1111 sandbox03 -v'
#alias ssh-forward-sandbox='ssh -N -D 1111 proxy-sandbox -v'
#alias ssh-forward-sandbox-chef='ssh -L8888:127.0.0.1:8888 -N -n ns31339823.ip-51-210-216.eu -v'
alias ssh-forward-sandbox-chef='ssh -L8888:127.0.0.1:8888 -N -n proxy-sandbox -v'


alias kbrw_infra_test='sudo "SSH_AUTH_SOCK=$SSH_AUTH_SOCK" `which sshuttle` --verbose --exclude basecamp.kbrw.fr --pidfile=/tmp/valprod_sshuttle.pid --to-ns "[2001:41d0:9a:a04::5]" --listen "127.0.0.1:0,[::1]:0" --dns --auto-hosts -e "ssh -p 22 -J nathanael@ns31339823.ip-51-210-216.eu" -r "nathanael@172.16.0.143" 10.10.0.0/16 172.16.0.0/16 2001:41d0:009a:0a10::/60 2001:41d0:9a:a04::5'
