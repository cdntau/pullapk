start=451
count=50

sed -n "${start},$((start+count-1))p" /home/kirmola/Downloads/appid.txt | while read -r pkg; do

  gh workflow run apkdl.yaml \
    --ref main \
    -f package_name="$pkg"
done