#!/bin/bash
export BOTIUM_CONVOS="$PWD"/../tests/botium/convos
export BOTIUM_CONFIG="$PWD"/../tests/botium/botium.json
echo "$BOTIUM_CONFIG"
botium-cli run -c $BOTIUM_CONFIG -C $BOTIUM_CONVOS
