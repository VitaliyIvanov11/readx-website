# GitHub Pages Deployment for readx.eu

## Status: DNS Configured ✅
Domain readx.eu is resolving to GitHub Pages IPs:
- 185.199.109.153
- 185.199.108.153

## Next Steps:

### 1. Create GitHub Repository
```bash
cd c:\Apps\ReadX\web
git init
git add .
git commit -m "Initial commit: ReadX.eu website"
```

### 2. Push to GitHub
```bash
# Create repository on GitHub: readx-website
git remote add origin https://github.com/YOUR_USERNAME/readx-website.git
git branch -M main
git push -u origin main
```

### 3. Enable GitHub Pages
1. Go to repository Settings
2. Scroll to "Pages" section
3. Source: Deploy from a branch
4. Branch: main / (root)
5. Save

### 4. Configure Custom Domain
1. In Pages settings, add custom domain: `readx.eu`
2. Check "Enforce HTTPS"
3. GitHub will create CNAME file automatically

### 5. Verify Deployment
- Wait 5-10 minutes for deployment
- Visit: https://readx.eu
- Check SSL certificate is active

## Alternative: Quick Deploy Script
```bash
# Run this in PowerShell
cd c:\Apps\ReadX\web
git init
git add .
git commit -m "ReadX.eu website"
# Then manually create GitHub repo and push
```

## Expected Result:
✅ https://readx.eu - Live website
✅ SSL certificate active
✅ All pages working correctly