# How to Preview Your Website Locally

## ✅ Server Status
A local web server has been started on port 8000.

## 🌐 View Your Website

**Open your web browser and navigate to:**

```
http://localhost:8000/index.html
```

Or simply:
```
http://localhost:8000/
```

## 📄 Available Pages

- **Homepage:** http://localhost:8000/index.html
- **Education:** http://localhost:8000/education.html
- **Experience:** http://localhost:8000/experience.html
- **Projects:** http://localhost:8000/projects.html
- **Extra-Curricular:** http://localhost:8000/extracurricular.html

## 🎨 What You'll See

The website now features:
- ✨ Modern blue gradient color scheme
- 🎯 Professional typography (Poppins & Inter fonts)
- 💫 Smooth animations and hover effects
- 🎴 Card-based layouts
- 🌈 Enhanced navigation bar
- 📱 Responsive design
- 🎭 Beautiful profile section
- 🔘 Modern buttons with gradients

## 🛑 To Stop the Server

Press `Ctrl + C` in the terminal where the server is running, or run:
```bash
lsof -ti:8000 | xargs kill
```

## 🔄 Alternative: Start Server Manually

If the server isn't running, you can start it yourself:

```bash
cd /Users/puran/Documents/puran01.github.io-main
python3 -m http.server 8000
```

Then open http://localhost:8000 in your browser.
