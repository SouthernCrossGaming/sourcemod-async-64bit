DEL addons\sourcemod\extensions\x64\async.ext.2.tf2.so

cd extension
rmdir build /s /q
docker compose build
docker compose run extension-build --remove-orphans

echo f | XCOPY build\package\addons\sourcemod\extensions\x64\async.ext.2.tf2.so ..\addons\sourcemod\extensions\x64\async.ext.2.tf2.so /Y
echo f | XCOPY sourcepawn\async.inc ..\addons\sourcemod\scripting\include\async.inc /Y
cd ..