#!/bin/bash
# Simple script to start the local web server

echo "🚀 Starting local web server..."
echo "📍 Server will run on: http://localhost:8000"
echo ""
echo "Press Ctrl+C to stop the server when you're done."
echo ""

cd "$(dirname "$0")"
python3 -m http.server 8000
