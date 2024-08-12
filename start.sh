#!/bin/bash

tmux new-session -s minecraft -d 'bash /home/julian/mc-server/run.sh'
tmux attach-session -t minecraft

