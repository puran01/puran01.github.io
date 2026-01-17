#!/bin/bash
# Script to setup git and push after GitHub CLI authentication

echo "🚀 Setting up Git and pushing to GitHub..."
echo ""

# Navigate to script directory
cd "$(dirname "$0")"

# Check if gh is authenticated
if ! gh auth status &> /dev/null; then
    echo "❌ GitHub CLI is not authenticated."
    echo "   Please run: gh auth login"
    exit 1
fi

echo "✅ GitHub CLI is authenticated"
echo ""

# Initialize git if needed
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
fi

# Add remote
if ! git remote | grep -q "origin"; then
    echo "🔗 Adding remote repository..."
    git remote add origin https://github.com/puran01/puran01.github.io.git
else
    echo "✅ Remote already configured"
    git remote set-url origin https://github.com/puran01/puran01.github.io.git
fi

# Add all files
echo "📝 Adding all files..."
git add .

# Commit
echo "💾 Committing changes..."
git commit -m "Update portfolio: modern styling, updated content, and experience reorganization

- Added modern blue gradient color scheme
- Updated typography with Poppins and Inter fonts
- Enhanced navigation bar with smooth animations
- Improved profile section with modern card design
- Updated experience section with new Viz position
- Reorganized experience entries chronologically
- Updated about me section with current information
- Removed HTML5 UP design credit from all pages
- Added smooth animations and hover effects throughout"

# Set branch to main
echo "🌿 Setting branch to main..."
git branch -M main

# Setup git to use gh credentials
echo "🔐 Configuring Git to use GitHub CLI credentials..."
gh auth setup-git

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
echo ""

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo "🌐 Your site will be live at: https://puran01.github.io"
    echo "   (May take a few minutes for GitHub Pages to update)"
else
    echo ""
    echo "❌ Push failed. Please check:"
    echo "   1. You're authenticated: gh auth status"
    echo "   2. Git is configured: gh auth setup-git"
    echo "   3. You have push access to the repository"
fi
