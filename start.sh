# cd /src

tmux -2 -u new -s main -d

session=main
window=${session}:1
pane=${window}.0

tmux send-key -t $pane "emacs -nw ." Enter

exec tmux attach -t $session
