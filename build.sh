#!/bin/bash

npm run index

hugo --theme=hugo_theme_beg
git add *
git commit -m "New changes in the Dev Documentation"
git push origin master
