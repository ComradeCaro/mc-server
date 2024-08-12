#!/bin/bash

tmux new-session -s minecraft -d 'bash /home/$USER/mc-server/run.sh'
tmux attach-session -t minecraft

