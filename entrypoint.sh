#!/bin/sh

CMD_RES="$(/bin/sh -c "$1")"

if [ "$2" == "true" ]; then
    CMD_RES="$(python -c 'import json; import sys; print(json.dumps(sys.argv[1]))' "$CMD_RES")"
fi

if [ "$3" == "true" ]; then
    CMD_RES="$(python -c 'import base64; import sys; print(str(base64.b64encode(sys.argv[1].encode("utf-8")), "utf-8"))' "$CMD_RES")"
fi

echo "::set-output name=result::$CMD_RES"
