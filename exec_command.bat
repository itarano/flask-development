@echo off & setLocal

set command=%*

for /f "delims=" %%x in (.env) do (set "%%x")

docker exec -it %project_name% %command%

echo Done!

endlocal