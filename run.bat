@cd > cwd
@SET /P cwd=<cwd
docker run -w /root/ -v "%cwd%"/images/originals:/root/originals -v "%cwd%"/images/resized:/root/resized -t mrsoft/image_resizer
@REM docker run -w /root/ -v "%cwd%"/images/originals:/root/originals -v "%cwd%"/images/resized:/root/resized -t mrsoft/image_resizer /bin/bash ./start.sh
@REM docker run -w /root/ -v "%cwd%"/images/originals:/root/originals -v "%cwd%"/images/resized:/root/resized -it mrsoft/image_resizer /bin/bash