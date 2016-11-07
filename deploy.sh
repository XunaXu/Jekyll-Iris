#!/bin/sh

#type commands below manually into terminal to deplot (remember to 'jekyll build' first)

#cd _site
#git init
#git add --all
#git commit -m "Deploy to GitHub Pages"
#git push --force --quiet "https://github.com/XunaXu/Jekyll-Iris.git" master:gh-pages

#or run this file as shell script
#needs to set permissions 'chmod 751 deploy.sh' first

cd "_site" && git "init" && git "add" "." && git "commit" "-m" "Deploy to GitHub Pages" && git "push" "--force" "--quiet" "https://github.com/Daunus/Daniel-Blog.git" "master:gh-pages"

echo "done"
