#!/bin/bash
COURSE="ap"
# Get the current repo name
repo_name=$(basename -s .git "$(git config --get remote.origin.url)")
echo "repo name:" $repo_name

# Construct the correct badge line
badge_line="![CI](https://github.com/stuycs-k/$repo_name/actions/workflows/ci.yml/badge.svg)"

# README file to update
readme_file="README.md"

# Step 1: If repo starts with the COURSE prefix
if [[ "$repo_name" == $COURSE* ]]; then
    # Step 2: Add the badge if it's not already present
    if ! grep -Fq "$badge_line" "$readme_file"; then
        echo "$badge_line" > "tmp_file323"
        cat "$readme_file" >> "tmp_file323"
        mv tmp_file323 "$readme_file"
        echo "✅ Added CI badge for $repo_name"
        git config user.name "github-actions[bot]"
        git config user.email "github-actions[bot]@users.noreply.github.com"
        git add .
        git diff --cached --quiet || (git commit -m "Run update.sh on repo creation" && git push)
        echo "Pushed"
    else
        echo "ℹ️  CI badge already present"
    fi
else
    echo "ℹ️ Repo $repo_name does not start with 'AP' → no badge added"
fi
