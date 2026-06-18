#!/usr/bin/env bash

SESSION_NAME="hoaian"

tmux has-session -t $SESSION_NAME >/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s $SESSION_NAME -n "monitoring"

    tmux send-keys -t $SESSION_NAME "btop" C-m

    tmux new-window -t $SESSION_NAME:2
fi

tmux attach-session -t $SESSION_NAME
