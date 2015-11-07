cd /src

emacs --daemon

tmux -2 -u new -s main -d

session=main
window=${session}:1
pane=${window}.0

tmux -2 -u send-key -t $pane "emacsclient -nw ." Enter

exec tmux -2 -u attach -t $session
