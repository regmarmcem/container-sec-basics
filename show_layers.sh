tree dump
manifest_json=$(cat dump/manifest.json | jq -r '.[].Config')
cat dump/$manifest_json | jq '.'