#!/bin/bash
echo "Starting 10 Poker Game Server instances..."

# Activate the virtual environment
source myenv/bin/activate

BASE_PORT=8000

for i in {0..9}
do
    CURRENT_PORT=$((BASE_PORT + i))
    echo "Starting instance on port $CURRENT_PORT"
    python -m pypokergui serve ./poker_conf.yaml --port $CURRENT_PORT --speed fast &
done

echo "All instances started."
