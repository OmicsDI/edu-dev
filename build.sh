#!/bin/bash

npm run index

hugo --theme=hugo-pacman-theme 
git add *
git commit -m "New changes in the Dev Documentation"
git push origin master
