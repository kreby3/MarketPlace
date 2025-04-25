#!/bin/bash

# Set your GitHub repo URL here
GITHUB_REPO="https://github.com/YOUR_USERNAME/marketplace-platform.git"

echo "Pushing latest code to GitHub..."
git add .
git commit -m "🚀 Deploy update"
git push origin main

echo "Deploy Frontend to Vercel..."
vercel --prod --cwd ./client

echo "Deploy Backend to Render..."
echo "Visit Render Dashboard to redeploy the server automatically or use Render CLI (if installed)."

echo "✅ Deploy complete!"