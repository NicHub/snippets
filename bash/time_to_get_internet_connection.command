#!/bin/bash

start_time=$(date +%s); while ! ping -c1 -o -t1 8.8.8.8 >/dev/null; do true; done; end_time=$(date +%s); echo "Time to get connection $((end_time - start_time)) s."

kill -s INT $$
