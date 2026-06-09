#!/usr/bin/env bash
set -euo pipefail

cd ./ 

git init
git add .
git commit -m "Initial commit" || true

gh repo create ToricGT-Program \
    --public \
    --source=. \
    --remote=origin \
    --push 