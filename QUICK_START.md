# 🚀 Quick Start Guide - View Your Website

## Option 1: Run the Script (Easiest)

1. Open **Terminal** on your Mac
2. Navigate to the project folder:
   ```bash
   cd /Users/puran/Documents/puran01.github.io-main
   ```
3. Run the start script:
   ```bash
   ./START_SERVER.sh
   ```
4. Open your browser and go to: **http://localhost:8000**

## Option 2: Manual Start

1. Open **Terminal** on your Mac
2. Navigate to the project folder:
   ```bash
   cd /Users/puran/Documents/puran01.github.io-main
   ```
3. Start the server:
   ```bash
   python3 -m http.server 8000
   ```
4. You should see: `Serving HTTP on :: port 8000`
5. Open your browser and go to: **http://localhost:8000**

## Option 3: Using Python (if python3 doesn't work)

```bash
cd /Users/puran/Documents/puran01.github.io-main
python -m http.server 8000
```

## Option 4: Using Node.js (if you have it installed)

```bash
cd /Users/puran/Documents/puran01.github.io-main
npx http-server -p 8000
```

## 🌐 View Your Pages

Once the server is running, visit:
- **Homepage:** http://localhost:8000/index.html
- **Education:** http://localhost:8000/education.html
- **Experience:** http://localhost:8000/experience.html
- **Projects:** http://localhost:8000/projects.html
- **Extra-Curricular:** http://localhost:8000/extracurricular.html

## 🛑 To Stop the Server

Press `Ctrl + C` in the terminal where the server is running.

## ❓ Troubleshooting

**If you get "port already in use" error:**
```bash
# Kill any process on port 8000
lsof -ti:8000 | xargs kill
```

**If Python is not found:**
- Make sure Python 3 is installed: `python3 --version`
- Or try: `python --version`

**If the browser shows "connection refused":**
- Make sure the server is actually running (check the terminal)
- Try a different port: `python3 -m http.server 8080` (then use http://localhost:8080)
