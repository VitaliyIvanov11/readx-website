# DNS Configuration for readx.eu

## Required DNS Records

### A Records (IPv4)
```
Type: A
Name: @
Value: 185.199.108.153
TTL: 3600

Type: A
Name: @
Value: 185.199.109.153
TTL: 3600

Type: A
Name: @
Value: 185.199.110.153
TTL: 3600

Type: A
Name: @
Value: 185.199.111.153
TTL: 3600
```

### AAAA Records (IPv6)
```
Type: AAAA
Name: @
Value: 2606:50c0:8000::153
TTL: 3600

Type: AAAA
Name: @
Value: 2606:50c0:8001::153
TTL: 3600

Type: AAAA
Name: @
Value: 2606:50c0:8002::153
TTL: 3600

Type: AAAA
Name: @
Value: 2606:50c0:8003::153
TTL: 3600
```

### CNAME Record (www subdomain)
```
Type: CNAME
Name: www
Value: readx.eu
TTL: 3600
```

### Alternative: Single A Record (if using specific hosting)
```
Type: A
Name: @
Value: [YOUR_HOSTING_IP]
TTL: 3600

Type: CNAME
Name: www
Value: readx.eu
TTL: 3600
```

## Hosting Options

### Option 1: GitHub Pages
1. Upload files to GitHub repository
2. Enable GitHub Pages in repository settings
3. Add CNAME file with "readx.eu"
4. Use GitHub Pages IPs (above A records)

### Option 2: Netlify
1. Deploy to Netlify
2. Add custom domain in Netlify dashboard
3. Use Netlify's DNS or configure A records:
```
Type: A
Name: @
Value: 75.2.60.5
TTL: 3600
```

### Option 3: Vercel
1. Deploy to Vercel
2. Add domain in Vercel dashboard
3. Use Vercel's A record:
```
Type: A
Name: @
Value: 76.76.19.61
TTL: 3600
```

### Option 4: Cloudflare Pages
1. Deploy to Cloudflare Pages
2. Add custom domain
3. Cloudflare will auto-configure DNS

## SSL Certificate
- Most hosting providers offer free SSL (Let's Encrypt)
- Cloudflare provides free SSL with their service
- Ensure HTTPS redirect is enabled

## DNS Propagation
- Changes take 24-48 hours to propagate globally
- Use tools like `nslookup` or online DNS checkers
- Test with: `nslookup readx.eu`

## Verification Commands
```bash
# Check A record
nslookup readx.eu

# Check CNAME
nslookup www.readx.eu

# Check from specific DNS server
nslookup readx.eu 8.8.8.8
```

## Domain Registrar Settings
Configure at your domain registrar (e.g., Namecheap, GoDaddy, etc.):
1. Login to registrar control panel
2. Find DNS management section
3. Add the A/AAAA/CNAME records above
4. Save changes and wait for propagation