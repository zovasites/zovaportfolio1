# ZovaSites - Modern Portfolio & Agency Website

A modern, fast, mobile-first, and fully responsive single-page website for **ZovaSites** — a website development company based in Erode, Tamil Nadu, India.

---

## 🌟 Key Features & Highlights

- **Aesthetic**: Inspired by top design agencies (dark mode palette, glowing indigo/violet/cyan ambient lights, glassmorphism cards, micro-interactions).
- **Architecture**: Self-contained `index.html` with vanilla HTML5, CSS3, and JavaScript — zero dependencies, zero build step required. Double-click to run anywhere or deploy instantly to any web host.
- **Mobile-First & Responsive**: Handcrafted breakpoints adapting smoothly from 320px mobile screens up to 4K ultra-wide monitors.
- **Scroll Animations**: Lightweight `IntersectionObserver` reveal animations and an animated stats counter.
- **Featured Case Study**: Highlighting **Sree Krishna Enterprizes** with an actual live screenshot and direct link to [https://www.skeindiaerd.com/](https://www.skeindiaerd.com/).
- **Extensible Portfolio Grid**: Built with category filters (`All`, `Engineering & Corporate`, `E-Commerce`, `Landing Pages`).
- **4 Transparent Pricing Packages**:
  - Starter: ₹4,999
  - Business: ₹9,999 (**Most Popular** highlighted)
  - Premium: ₹19,999
  - Custom / E-Commerce: Custom Quote
  - All packages include a direct click-to-WhatsApp button with customized prefilled text.
- **Lead Generation Contact Form**: Pre-wired with FormSubmit to send inquiries directly to `zovasites@gmail.com` via AJAX without reloading the page.
- **Direct Contact Badges**:
  - Phone: `+91 98421 73232` & `+91 93459 43802` (`tel:` links)
  - Email: `zovasites@gmail.com` (`mailto:` link)
  - Location: Erode, Tamil Nadu, India
- **Floating WhatsApp Button**: Persistent bottom-right button with pulse animation linking to `https://wa.me/919345943802`.
- **Social Media Integration**: Verified links to Instagram, LinkedIn, and Facebook.
- **SEO & Social Share Ready**: Complete Open Graph tags, Twitter Cards, meta tags, and Schema.org `ProfessionalService` JSON-LD structured data.

---

## 🚀 How to Run & Preview Locally

1. Open the folder:
   ```
   c:\Users\VISHAL K\OneDrive\Desktop\zovaportfolio1\
   ```
2. Double-click `index.html` to open it in Google Chrome, Microsoft Edge, Firefox, or Safari.
3. Everything is fully functional offline and online (Google Fonts and icons will load whenever internet access is available).

---

## 🛠️ How to Customize & Edit

### 1. Changing Contact Information
Search for phone numbers and email in `index.html`:
- Phone 1: `9842173232`
- Phone 2: `9345943802`
- Email: `zovasites@gmail.com`
- WhatsApp Number: In `https://wa.me/919345943802`, replace `919345943802` with your preferred country code and number.

### 2. Editing Stats Counters (About Section)
In `index.html`, locate the `.stat-box` elements:
```html
<span class="counter" data-target="50">0</span> <!-- Change 50 to your project count -->
<span class="counter" data-target="40">0</span> <!-- Change 40 to happy clients -->
<span class="counter" data-target="3">0</span>  <!-- Change 3 to years of experience -->
<span class="counter" data-target="99">0</span> <!-- Change 99 to satisfaction % -->
```

### 3. Editing Pricing & Packages
Locate the `<section id="packages">` section in `index.html`:
- Update package prices, page counts, or deliverables inside the `plan-price` and `plan-features-list` elements.
- Change the WhatsApp prefilled text in `href="https://wa.me/919345943802?text=..."`.

### 4. Adding New Portfolio Projects
In `<div class="portfolio-grid">`, copy and paste a `.project-card`:
```html
<div class="project-card reveal-item" data-category="ecommerce">
  <div class="project-thumb-container">
    <img src="images/your-project-screenshot.jpg" alt="Project Name" class="project-thumb-img">
  </div>
  <div class="project-info">
    <span class="project-cat-badge">E-Commerce</span>
    <h3 class="project-title">Project Name</h3>
    <p class="project-desc">Description of the project and results achieved.</p>
    <div class="tech-stack-pills">
      <span class="tech-pill">React</span>
      <span class="tech-pill">Tailwind</span>
    </div>
    <a href="https://example.com" target="_blank" rel="noopener noreferrer" class="btn btn-primary btn-sm">Visit Website</a>
  </div>
</div>
```

### 5. FormSubmit Email Activation (One-Time Step)
The contact form uses FormSubmit to deliver emails directly to `zovasites@gmail.com`:
1. Submit a test message through the form once the site is live.
2. Check your inbox at `zovasites@gmail.com` for an activation email from FormSubmit.
3. Click **"Activate Form"** in that email once.
4. From then on, every visitor submission will be sent directly to your inbox with client details!

---

## 🌐 Instant Free Deployment Options

### Option A: Netlify (Fastest)
1. Go to [https://app.netlify.com/drop](https://app.netlify.com/drop)
2. Drag and drop the `zovaportfolio1` folder into the browser.
3. Your site is live on HTTPS in 10 seconds!

### Option B: Vercel
1. Run `npx vercel` in this folder or upload your repo to GitHub and import it on [vercel.com](https://vercel.com).
2. Deploys automatically.

### Option C: GitHub Pages
1. Push this folder to a GitHub repository.
2. In repository **Settings** -> **Pages**, set source to `main` branch `/ (root)`.
3. Your portfolio is live at `https://<your-username>.github.io/<repo-name>/`.

### Option D: Traditional cPanel / Shared Hosting (Hostinger, Bluehost, etc.)
1. Log in to cPanel -> **File Manager** -> `public_html`.
2. Upload `index.html`.
3. Your domain (e.g. `zovasites.com`) is live immediately!

---

© 2026 ZovaSites. All rights reserved.
