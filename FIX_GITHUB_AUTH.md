# Fix GitHub Authentication

## The Problem
GitHub no longer accepts password authentication. You need to use a Personal Access Token (PAT) correctly.

## Solution 1: Use Token in URL (Easiest)

Instead of entering credentials when prompted, embed the token in the URL:

```bash
git remote set-url origin https://puran01:YOUR_TOKEN@github.com/puran01/puran01.github.io.git
```

Replace `YOUR_TOKEN` with your actual Personal Access Token.

Then push:
```bash
git push -u origin main
```

## Solution 2: Generate a New Token

Your current token might be expired or invalid. Generate a new one:

1. Go to: https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Give it a name like "Portfolio Website"
4. Select scopes: Check `repo` (this gives full repository access)
5. Click "Generate token"
6. **Copy the token immediately** (you won't see it again!)

Then use it in Solution 1 above.

## Solution 3: Use SSH (Most Secure)

Set up SSH keys for passwordless authentication:

### Step 1: Check if you have SSH keys
```bash
ls -al ~/.ssh
```

### Step 2: Generate SSH key (if you don't have one)
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
Press Enter to accept defaults.

### Step 3: Add SSH key to ssh-agent
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

### Step 4: Copy your public key
```bash
cat ~/.ssh/id_ed25519.pub
```
Copy the entire output.

### Step 5: Add to GitHub
1. Go to: https://github.com/settings/keys
2. Click "New SSH key"
3. Paste your public key
4. Click "Add SSH key"

### Step 6: Change remote to SSH
```bash
git remote set-url origin git@github.com:puran01/puran01.github.io.git
```

### Step 7: Push
```bash
git push -u origin main
```

## Solution 4: Use GitHub CLI (Alternative)

Install GitHub CLI and authenticate:
```bash
brew install gh
gh auth login
```

Then you can push normally.

## Quick Fix Right Now

Try this command (replace YOUR_TOKEN with a valid token):

```bash
git remote set-url origin https://puran01:YOUR_TOKEN@github.com/puran01/puran01.github.io.git
git push -u origin main
```

If your token is invalid, generate a new one at: https://github.com/settings/tokens
