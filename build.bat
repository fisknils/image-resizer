@REM Build docker image
docker build -t mrsoft/image_resizer build

@REM Create the folder structure
mkdir images images\originals images\resized
