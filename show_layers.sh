tree dump
manifest_json=$(cat dump/manifest.json | jq -r '.[].Config')
cat dump/$manifest_json | jq '.'

echo "==========================RUN apk updateの差分==========================="
tar --list -f dump/$(cat dump/manifest.json | jq -r '.[].Layers[1]')

echo "==========================RUN apk add curlの差分========================="
tar --list -f dump/$(cat dump/manifest.json | jq -r '.[].Layers[2]')

echo "==========================COPY file.txt /etc/file.txtの差分========================="
tar --list -f dump/$(cat dump/manifest.json | jq -r '.[].Layers[3]')