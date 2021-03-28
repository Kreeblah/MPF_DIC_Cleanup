#!/bin/bash

find . -name '*.bin' -type f -delete
find . -name '*.c2' -type f -delete
find . -name '*.dat' -type f -delete
find . -name '*.gz' -type f -delete
find . -name '*.scm' -type f -delete
find . -name '*.txt' -type f -delete
find . -name '*_img.cue' -type f -delete

find . -name '*.cue' -type f -print0 | xargs -0 sed -i '' -e 's/\.bin/\.img/g'
