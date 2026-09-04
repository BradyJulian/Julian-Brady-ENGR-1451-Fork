#!/bin/bash

#Pull
echo "Pulling lastest changes..."
git pull

#Wait for the user to press any key
echo ""
read -n 1 -s -r -p "Press any key to stage, commit, and push changes..."
echo ""
echo ""

#Stage all changes
echo "Staging changes..."
git add .

#Generate the current date/time and commit
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")
COMMIT_MSG="Saving progress, $CURRENT_DATE"

echo "Committing with message: '$COMMIT_MSG'"
git commit -m "$COMMIT_MSG"

#Push to the remote repository
echo "Pushing to remote..."
git push
