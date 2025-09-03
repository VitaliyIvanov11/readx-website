#!/bin/bash

# ReadX.eu Deployment Script

echo "🚀 Deploying ReadX.eu website..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit: ReadX Economic News website"
fi

# GitHub Pages deployment
echo "📤 Setting up GitHub Pages deployment..."
echo "1. Create repository on GitHub: readx-website"
echo "2. Add remote origin:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/readx-website.git"
echo "3. Push to GitHub:"
echo "   git branch -M main"
echo "   git push -u origin main"
echo "4. Enable GitHub Pages in repository settings"
echo "5. Set custom domain to: readx.eu"

# Netlify deployment
echo ""
echo "🌐 Alternative: Netlify deployment"
echo "1. Install Netlify CLI: npm install -g netlify-cli"
echo "2. Login: netlify login"
echo "3. Deploy: netlify deploy --prod --dir=."
echo "4. Add custom domain in Netlify dashboard"

# Vercel deployment
echo ""
echo "⚡ Alternative: Vercel deployment"
echo "1. Install Vercel CLI: npm install -g vercel"
echo "2. Login: vercel login"
echo "3. Deploy: vercel --prod"
echo "4. Add domain: vercel domains add readx.eu"

echo ""
echo "✅ Deployment options configured!"
echo "📋 Next steps:"
echo "   1. Choose hosting provider (GitHub Pages, Netlify, or Vercel)"
echo "   2. Configure DNS records (see dns-setup.md)"
echo "   3. Wait for DNS propagation (24-48 hours)"
echo "   4. Verify SSL certificate is active"
echo ""
echo "🌍 Your website will be live at: https://readx.eu"