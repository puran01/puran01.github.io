# Push Code to GitHub - Instructions

## Quick Method: Run the Script

I've created a script that will handle everything for you. Simply run:

```bash
cd /Users/puran/Documents/puran01.github.io-main
./PUSH_TO_GITHUB.sh
```

## Manual Method: Step by Step

If you prefer to do it manually, follow these steps:

### 1. Navigate to your project folder
```bash
cd /Users/puran/Documents/puran01.github.io-main
```

### 2. Initialize Git (if not already done)
```bash
git init
```

### 3. Add the remote repository
```bash
git remote add origin https://github.com/puran01/puran01.github.io.git
```

If the remote already exists, update it:
```bash
git remote set-url origin https://github.com/puran01/puran01.github.io.git
```

### 4. Add all files
```bash
git add .
```

### 5. Commit your changes
```bash
git commit -m "Update portfolio: modern styling, updated content, and experience reorganization"
```

### 6. Set branch to main
```bash
git branch -M main
```

### 7. Push to GitHub
```bash
git push -u origin main
```

## Authentication

When you push, GitHub may ask for credentials:

### Option 1: Personal Access Token (Recommended)
1. Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Generate a new token with `repo` permissions
3. Use your GitHub username and the token as the password when prompted

### Option 2: SSH (Alternative)
If you prefer SSH:
```bash
git remote set-url origin git@github.com:puran01/puran01.github.io.git
git push -u origin main
```

## After Pushing

Once pushed, your site will be available at:
**https://puran01.github.io**

Note: It may take a few minutes for GitHub Pages to update.

## What's Being Pushed

All the updates we made:
- ✅ Modern styling with blue gradient theme
- ✅ Updated about me section
- ✅ Reorganized experience entries
- ✅ Added Viz position
- ✅ Updated dates and information
- ✅ Removed HTML5 UP credits
- ✅ Enhanced UI/UX throughout

## Troubleshooting

**If you get "repository not found":**
- Make sure the repository exists at https://github.com/puran01/puran01.github.io
- Check that you have push access

**If authentication fails:**
- Use a Personal Access Token instead of your password
- Or set up SSH keys

**If you get merge conflicts:**
- If the remote has changes, pull first: `git pull origin main --allow-unrelated-histories`
- Then push again: `git push -u origin main`
