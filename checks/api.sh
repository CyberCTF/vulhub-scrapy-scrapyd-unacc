#!/bin/sh
# daemonstatus.json (read only) answers status ok without credentials.
set -e
curl -fsS http://scrapyd:6800/daemonstatus.json | grep -q '"status": *"ok"'
