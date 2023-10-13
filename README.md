# What`s this?

## Download docker images
[link](https://drive.google.com/file/d/1N1Lna4kVPA5MWPWiVFMP_3plIKqxZ966/view?usp=drive_link)

Then load the image with the following command
```
docker load < <download folder>/humble-jupytar.tar.gz
```

## RUN container
```
cd ~/ros-humble-jupyter-docker
bash run_container.sh

# If use other port
bash run_container.sh -p <port number>
```
## Start workspace(in docker)
```
mamba activate ros_humble
cd ~/workspace
bash build.sh
bash run.sh <port number>
```