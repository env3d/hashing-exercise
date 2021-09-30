#!/bin/bash

# A script to generate random qr code images and put into the ./images directory

rm -fr images
mkdir images

for i in $(seq 0 100)
do
    tail -n 200000 /usr/share/dict/words | tail -n +$(echo $RANDOM % 10 | bc) | head -n 1 | qrencode -o images/${i}.png
done
