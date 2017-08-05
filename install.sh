#!/bin/sh
curl -O https://codeload.github.com/Semantic-Org/Semantic-UI-CSS/zip/master
mv master semantic.zip
unzip semantic.zip
/bin/rm semantic.zip
mkdir -p app/vendor/
mv Semantic-UI-CSS-master semantic-ui
mv semantic-ui app/vendor/
