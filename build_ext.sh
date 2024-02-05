rm -rf ./addons/sourcemod/extensions/x64

cd extension
rm -rf ./build
docker compose build
docker compose run extension-build --remove-orphans

mkdir -p ../addons/sourcemod/extensions/x64
mkdir -p ../addons/sourcemod/scripting/include
cp build/package/addons/sourcemod/extensions/x64/async.ext.2.tf2.so  ../addons/sourcemod/extensions/x64/async.ext.2.tf2.so
cp sourcepawn/async.inc /addons/sourcemod/scripting/include/async.inc