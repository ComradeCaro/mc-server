#!/bin/bash
# This is a tmux wrapper for run.sh
tmux new-session -s minecraft -d 'bash ./run.sh'
tmux attach-session -t minecraft

