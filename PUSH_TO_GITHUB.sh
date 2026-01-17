#!/bin/bash
# Script to push code to GitHub repository

echo "🚀 Setting up Git repository and pushing to GitHub..."
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Navigate to project directory
cd "$(dirname "$0")"

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
fi

# Add remote if it doesn't exist
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

# Commit changes
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

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
echo ""
echo "⚠️  You may be prompted for your GitHub credentials."
echo ""

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo "🌐 Your site should be live at: https://puran01.github.io"
else
    echo ""
    echo "❌ Push failed. Please check:"
    echo "   1. Your GitHub credentials are correct"
    echo "   2. You have push access to the repository"
    echo "   3. Your internet connection is working"
    echo ""
    echo "You may need to authenticate. Try:"
    echo "   - Using a Personal Access Token instead of password"
    echo "   - Or use SSH: git remote set-url origin git@github.com:puran01/puran01.github.io.git"
fi
