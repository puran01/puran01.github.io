# Setup GitHub CLI (gh) - Step by Step Guide

## Step 1: Install Homebrew (if not installed)

Open Terminal and run:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the prompts. This may take a few minutes.

## Step 2: Install GitHub CLI

Once Homebrew is installed, run:
```bash
brew install gh
```

## Step 3: Authenticate with GitHub

Run this command:
```bash
gh auth login
```

You'll be prompted with options:

1. **What account do you want to log into?**
   - Select: `GitHub.com`

2. **What is your preferred protocol for Git operations?**
   - Select: `HTTPS` (recommended)

3. **Authenticate Git with your GitHub credentials?**
   - Select: `Yes`

4. **How would you like to authenticate GitHub CLI?**
   - Select: `Login with a web browser` (easiest)

5. It will show you a code and open your browser
   - Copy the code shown in terminal
   - Paste it in the browser when prompted
   - Authorize GitHub CLI

## Step 4: Verify Authentication

Check if you're logged in:
```bash
gh auth status
```

You should see your username.

## Step 5: Navigate to Your Project

```bash
cd /Users/puran/Documents/puran01.github.io-main
```

## Step 6: Initialize Git (if needed)

```bash
git init
```

## Step 7: Add Remote (if needed)

```bash
git remote add origin https://github.com/puran01/puran01.github.io.git
```

Or if remote exists, update it:
```bash
git remote set-url origin https://github.com/puran01/puran01.github.io.git
```

## Step 8: Add and Commit Files

```bash
git add .
git commit -m "Update portfolio: modern styling, updated content, and experience reorganization"
```

## Step 9: Push to GitHub

```bash
git branch -M main
git push -u origin main
```

Since you're authenticated with `gh auth login`, this should work without asking for credentials!

## Alternative: Quick Setup Script

I've also created a script that does steps 5-9 automatically after you've completed steps 1-4.

Run after authentication:
```bash
./setup_and_push.sh
```

## Troubleshooting

**If `brew` command not found:**
- You may need to add Homebrew to your PATH
- Run: `echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc`
- Then: `source ~/.zshrc`

**If authentication fails:**
- Make sure you completed the web browser login
- Try: `gh auth refresh`

**If push still asks for credentials:**
- Make sure you selected "Yes" for "Authenticate Git with your GitHub credentials"
- Or run: `gh auth setup-git`
