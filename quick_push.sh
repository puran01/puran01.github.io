#!/bin/bash
# Quick push script with token authentication

echo "🔐 Setting up GitHub authentication..."
echo ""
echo "Please enter your GitHub Personal Access Token:"
read -s TOKEN

if [ -z "$TOKEN" ]; then
    echo "❌ No token provided. Exiting."
    exit 1
fi

echo ""
echo "🔗 Updating remote URL with token..."
git remote set-url origin https://puran01:${TOKEN}@github.com/puran01/puran01.github.io.git

echo "⬆️  Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo "🌐 Your site will be live at: https://puran01.github.io"
else
    echo ""
    echo "❌ Push failed. Your token might be invalid or expired."
    echo "   Generate a new token at: https://github.com/settings/tokens"
fi
