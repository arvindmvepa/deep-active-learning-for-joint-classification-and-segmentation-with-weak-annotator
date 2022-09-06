#!/usr/bin/env bash
# Script to download and extract the dataset: Caltech-UCSD-Birds-200-2011
# See: http://www.vision.caltech.edu/visipedia/CUB-200-2011.html

# cd to your folder where you want to save the data.
cd $1
mkdir Caltech-UCSD-Birds-200-2011
cd Caltech-UCSD-Birds-200-2011

# Download the images.
echo "Downloading images (1.1GB) ..."
wget https://data.caltech.edu/tindfiles/serve/1239ea37-e132-42ee-8c09-c383bb54e7ff/

# Download masks (birds segmentations)
echo "Downloading segmentation (37MB) ..."
wget https://data.caltech.edu/tindfiles/serve/471cf5a5-8904-4b0d-978d-4fa2a8b14dc2/

# Downlaod the readme
# echo "Downloading README.txt ..."
# wget http://www.vision.caltech.edu/visipedia-data/CUB-200-2011/README.txt


echo "Finished downloading  Caltech-UCSD-Birds-200-2011 dataset."

echo "Extracting files ..."

tar -zxvf CUB_200_2011.tgz
tar -zxvf segmentations.tgz


echo "Finished extracting  Caltech-UCSD-Birds-200-2011 dataset."