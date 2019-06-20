#!/bin/bash

find -maxdepth 1 -type d -exec du -h -d 0 {} \;
