#!/bin/sh

YEAR="1990"
read -p "Github Username: " USERNAME

if [ -z "$USERNAME" ]
then
  exit 1
fi

mkdir $YEAR
cd $YEAR
git init
echo "**$YEAR** script" > README.md
git add .
GIT_AUTHOR_DATE="$YEAR-01-01T18:00:00" GIT_COMMITTER_DATE="$YEAR-01-01T18:00:00" git commit -m "$YEAR"
git remote add origin https://github.com/$USERNAME/$YEAR.git
git push -u origin main -f
cd ..
rm -rf $YEAR

echo
echo Cool, check your profile now: https://github.com/$USERNAME