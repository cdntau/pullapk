start=21 #then 41,61,81,101
count=20

sed -n "${start},$((start+count-1))p" /home/kirmola/Downloads/appid.txt | while read -r pkg; do

  gh workflow run apkdl.yaml \
    --ref main \
    -f package_name="$pkg"

  sleep 1
done