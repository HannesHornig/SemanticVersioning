#!/bin/bash
cd gitContainer
sudo ./buildImage.sh
cd -
cd workspaceContainer
sudo ./buildImage.sh
cd -
cd jenkins
sudo ./buildImage.sh
cd -
sudo docker-compose up
