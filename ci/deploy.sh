#!/bin/bash -e

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
CI_DIR=$PROJECT_DIR/ci

export GOOGLE_APPLICATION_CREDENTIALS=$CI_DIR/pillar-voice-bc44aa2e8e3b.json

cd functions
npm install
npm run deploy

cd ../dialogFlow
node deployAgent.js

cd ..