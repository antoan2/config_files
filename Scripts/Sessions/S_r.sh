cd '/media/tonio/HDD2/Documents/reminiz';

sessions=$(tmux list-sessions)

if [[ $sessions = *Reminiz* ]]
then
    tmux attach-session -t Reminiz;
else
    tmux new-session -d -s Reminiz;

    # Setup window main to see the laptob state
    tmux rename-window -t Reminiz:0 'Main';
    tmux select-window -t Reminiz:0;
    tmux split-window -v;
    tmux select-pane -t 1;
    tmux split-window -h;
    tmux select-pane -t 1;
    tmux send-keys 'watch -n 1 free -m' C-m;
    tmux select-pane -t 2;
    tmux send-keys 'top' C-m;

    # Setup a window to implement things
    tmux new-window -t Reminiz:1 -n 'CNNs';
    tmux select-window -t Reminiz:1;
    tmux send-keys 'cd CNN' C-m;
    tmux split-window -h;
    tmux select-pane -t 1;
    tmux send-keys 'ipython' C-m;

    # Setup a window to ssh things and run experiments
    tmux new-window -t Reminiz:2 -n 'cudahead';
    tmux select-window -t Reminiz:2;
    tmux send-keys 'cd ..' C-m;
    tmux split-window -h;
    tmux select-pane -t 0;
    tmux send-keys 'ssh biarda@cudahead.rdgi.polymtl.ca' C-m;

    tmux select-window -t Reminiz:0;
    tmux attach-session -t Reminiz;
fi
